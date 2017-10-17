PARAM(
    $OutDir,
    $TypeXmlDir,
    $XsdDir,
    $WebXsdDir,
    $VocabDir,
    [switch]$Verbose,
    [switch]$Overwrite,
    [switch]$Help
)

Function Debug($text) {
    if ($Verbose) {
        Write-Host $text
    }
}

Function SaveXsdIdByName($id, $name, $ns, $version) {
    if (!$script:xsdIdsByTypeName.ContainsKey($name)) {
        $script:xsdIdsByTypeName[$name] = @{}
    }

    if (!$version) {
        $version = 1
    }
    
    $info = $script:xsdIdsByTypeName[$name]
    if (!$info.ContainsKey($ns)) {
        $item = @{}
        $item.Id = $id
        $item.Version = $version
        $info[$ns] = $item
    }
    else {
        $item = $info[$ns]
        if ("$version" -gt "$($item.Version)") {
            $item.Id = $id
            $item.Version = $version
        }
    }
}

Function GetXsdIdByName($name, $ns) {
    if ($name) {
        $info = $script:xsdIdsByTypeName[$name]
        if ($info) {
            if ($ns) {
                if ($info[$ns]) {
                    return $info[$ns].Id
                }
            }
            elseif ($info.Values.Count -gt 0) {
                return ($info.Values | Select-Object -First 1).Id
            }
        }
    }

    return $null
}

$script:commonXsds = @(
    "types.xsd",
    "dates.xsd",
    "auth.xsd",
    "application-configuration.xsd",
    "vocab.xsd",
    "location.xsd",
    "thing.xsd",
    "subscription.xsd",
    "Meaningful-Use.xsd",
    "record.xsd",
    "directory.xsd",
    "notification.xsd")

$script:excludedXsds = @(
    "*deprecated*",
    "*POCD*",
    "datatypes*",
    "voc.*",
    "xml.*",
    "NarrativeBlock.*")

# Method xsds are a little messy and public/private attributes are inconsistent, hence the static list.
$script:includedMethods = @(
    "*any.xsd",
    "*addapplication*",
    "*allocatepackageid*",
    "*associatealternateid*",
    "*authorizeapplication*",
    "*beginputblob*",
    "*beginputconnectpackageblob*",
    "*createauthenticatedsessiontoken*",
    "*createconnectpackage*",
    "*createconnectrequest*",
    "*deletependingconnectpackage*",
    "*deletependingconnectrequest*",
    "*disassociatealternateid*",
    "*getalternateids*",
    "*getapplicationinfo*",
    "*getapplicationsettings*",
    "*getauthorizedconnectrequests*",
    "*getauthorizedpeople.xsd",
    "*getauthorizedrecords*",
    "*geteventsubscriptions*",
    "*getmeaningfulusetimelyaccessreport*",
    "*getmeaningfulusevdtreport*",
    "*getpeopleforrecord*",
    "*getpersonandrecordforalternateid*",
    "*getpersoninfo.xsd",
    "*getrecordoperations*",
    "*getservicedefinition*",
    "*getthings*",
    "*getthingtype*",
    "*getupdatedrecordsforapplication*",
    "*getvalidgroupmembership*",
    "*getvocabulary*",
    "*newapplicationcreationinfo*",
    "*newsignupcode*",
    "*overwritethings*",
    "*putthings*",
    "*querypermissions*",
    "*removethings*",
    "*searchvocabulary*",
    "*selectinstance*",
    "*sendinsecuremessage*",
    "*sendinsecuremessagefromapplication*",
    "*setapplicationsettings*",
    "*subscribetoevent*",
    "*unsubscribetoevent*",
    "*updateapplication*",
    "*updateeventsubscription*",
    "*updateexternalid*"
)

### Parsing ###

Function Get-Vocabularies($vocabRoot) {
    $script:vocabularies = New-Object System.Collections.Generic.List[System.Object]

    Add-Type -Path .\lib\vocabloader\HealthVault.VocabLoader.dll
    $vocabs = [HealthVault.VocabLoader.Loader]::Load($vocabRoot, $vocabRoot, "en-US")
    $script:typeNameDictionary = @{}
    $dictionaryIdToKeep = "8080b228-5b99-40f5-8ac2-fd5daefc3495"

    Debug "Found $($vocabs.Keys.Count) vocabularies"

    foreach ($key in $vocabs.Keys) {
        if ($key) {
            $vocab = @{}
            $vocab.FilenamePrefix = "$($key.family).$($key.name).$($key.version)"
            $vocab.Name = $key.name
            $vocab.Family = $key.family
            $vocab.Version = $key.version
            $vocab.Id = $key.referenceId
            $vocab.Values = $vocabs[$key] | %{@{"Value" = $_.codeval; "DisplayText" = (Clean-AndTrim $_.display.text $true); "Id" = $_.displayTextId.ToString()}}
            $script:vocabularies.Add($vocab)
            
            if ($dictionaryIdToKeep -eq $vocab.Id) {
                foreach ($v in $vocab.Values) {
                    $script:typeNameDictionary[$v.Id] = $v
                }
            }
        }
    }

    Debug "Vocabularies parsed: $($script:vocabularies.Count)"
}

Function Get-ThingTypeInfos($typeXmlRoot, $xsdRoot, $webXsdRoot, $filenamePattern = '*') {
    $xmlItems = @{}
    $xsdItems = @{}
    $commonXsdItems = @{}
    $methodItems = @{}
    $responseItems = @{}

    # Get files, indexed by object name.
    Get-ChildItem $typeXmlRoot\* -Include ("$filenamePattern.type.xml") -Exclude $script:excludedXsds | %{ $xmlItems.Add($_.Name.Substring(0, ($_.Name.Length - 9)), $_) }
    Get-ChildItem $xsdRoot\* -Include ("$filenamePattern.xsd") -Exclude $script:excludedXsds | %{ $xsdItems.Add($_.Name.Substring(0, ($_.Name.Length - 4)), $_) }
    Get-ChildItem $webXsdRoot\* -Include $script:commonXsds | %{ $commonXsdItems.Add($_.Name.Substring(0, ($_.Name.Length - 4)), $_) }
    Get-ChildItem $webXsdRoot\* -Include $script:includedMethods -Exclude ("*privileged*") | %{
        if ($_.Name.StartsWith("method-")) {
            $methodItems.Add($_.Name.Substring(7, $_.Name.Length - 11), $_)
        }
        elseif ($_.Name.StartsWith("response-")) {
            $responseItems.Add($_.Name.Substring(9, $_.Name.Length - 13), $_)
        }
    }

    Debug "Found $($xmlItems.Keys.Count) ThingType xml files"
    Debug "Found $($xsdItems.Keys.Count) ThingType xsd files`n"

    $mismatched = New-Object System.Collections.Generic.List[System.Object]
    $failed = New-Object System.Collections.Generic.List[System.Object]
    $script:xsdIdsByTypeName = @{}
    $script:thingTypes = @{}
    $script:methods = @{}
    foreach ($typeName in $xmlItems.Keys) {
        if ($xsdItems.ContainsKey($typeName)) {
            try {
                $xmlInfo = Parse-XmlInfo $xmlItems[$typeName]
                $xsdInfo = Parse-XsdInfo $xsdItems[$typeName] $xmlInfo.ThingTypeId
                $combined = Combine-ThingInfo $xmlInfo $xsdInfo $xmlItems[$typeName].BaseName
                $script:thingTypes.Add($combined.ThingTypeId, $combined)
                if ($combined.Name -and $combined.ThingTypeId) {
                    SaveXsdIdByName $combined.ThingTypeId $combined.Name $combined.Namespace $combined.Version
                }
            }
            catch [Exception] {
                $failed.Add($xmlItems[$typeName])
                Debug "Exception for $typeName"
                Debug $_
                Debug
            }
        }
        else {
            $mismatched.Add($xmlItems[$typeName])
        }
    }

    foreach ($typeName in $xsdItems.Keys) {
        if  (!$xmlItems.ContainsKey($typeName)) {
            $mismatched.Add($xsdItems[$typeName])
        }
    }

    foreach ($typeName in $commonXsdItems.Keys) {
        $combined = Combine-ThingInfo $null (Parse-XsdInfo $commonXsdItems[$typeName] $null $typeName) $commonXsdItems[$typeName].BaseName
        $script:thingTypes.Add($combined.ThingTypeId, $combined)
        if ($combined.Name -and $combined.ThingTypeId) {
            SaveXsdIdByName $combined.ThingTypeId $combined.Name $combined.Namespace $combined.Version
        }
    }

    foreach ($method in $methodItems.Keys) {
        $request =  Parse-Method $methodItems[$method]
        $response = Parse-Method $responseItems[$method]
        if ($request -or $response) {
            $name = if ($method -eq "any") {"removeapplicationrecordauthorization"} else {$method}
            $script:methods[$method] = @{ "Name"=$name; "Request"=$request; "Response"=$response }
        }
    }

    foreach ($method in $responseItems.Keys) {
        if (!($methodItems.ContainsKey($method))) {
            $response = Parse-Method $responseItems[$method]
            if ($response) {
                $name = if ($method -eq "any") {"removeapplicationrecordauthorization"} else {$method}
                $script:methods[$method] = @{ "Name"=$name; "Request"=$null; "Response"=$response }
            }
        }
    }

    if ($mismatched.Count -gt 0) {
        Debug "Unmatched files: $($mismatched.Count)"
        foreach ($file in $mismatched) {
            Debug $file.Name
        }

        Debug ""
    }

    if ($failed.Count -gt 0) {
        Debug "Failed files: $($failed.Count)"
        foreach ($file in $failed) {
            Debug $file.Name
        }

        Debug ""
    }

    Debug "DataTypes parsed: $($script:thingTypes.Values.Count)"
}

Function Parse-Method($file) {
    if ($file) {
        $method = Combine-ThingInfo $null (Parse-XsdInfo $file $null $file.Name) $file.BaseName
        $method.File = $file
        if ($method.Visibility -ne "Private") {
            return $method
        }
    }
}

Function Parse-XmlInfo($typeXmlItem) {
    $info = @{}
    [xml]$xml = Get-Content -Encoding UTF8 $typeXmlItem.FullName
    $type = $xml.'thing-type'

    $info.Name = $script:typeNameDictionary[$type.name.'string-token-id'].DisplayText
    $info.FilenamePrefix = $type.'file-name-prefix'
    $info.ThingTypeId = if ($type.'version-type-id') {$type.'version-type-id'} else {$type.id}
    $info.IsSingletonType = Get-Bool $type.'is-singleton' $false
    $info.IsImmutable = Get-Bool $type.'is-immutable' $false
    $info.AllowReadOnly = Get-Bool $type.'allow-readonly' $false
    $info.Version = $type.'version-sequence'
    $endDateXPath = $type.'effective-end-date-xpath'
    if ($endDateXPath) {
        $info.EffectiveDateXPath = $endDateXPath
    }
    else {
        $info.EffectiveDateXPath = "No effective date XPath"
    }

    $info
}

# Regex below captures the NAME from "method-NAME.xsd" or "response-NAME.xsd" (with or without the .xsd), without stripping out the version numbers we see sometimes.
Function Combine-ThingInfo($xmlInfo, $xsdInfo, $fileBaseName) {
    $thing = @{}
    $thing.ThingTypeId = if ($xsdInfo.ThingTypeId) {$xsdInfo.ThingTypeId}
                         elseif ($xmlInfo.ThingTypeId) {$xmlInfo.ThingTypeId}
    $thing.Name = if ($xmlInfo.Name) {$xmlInfo.Name}
                  elseif ($xsdInfo.Name) {$xsdInfo.Name}
                  else {$xsdInfo.NamespaceTail}
    $thing.Version = if ($xmlInfo.Version) {$xmlInfo.Version}
                     elseif ($xsdInfo.Version) {$xsdInfo.Version}
                     else {1}
    $thing.Xsd = $xsdInfo.Raw
    $thing.Remarks = $xsdInfo.Remarks
    $thing.Summary = $xsdInfo.Summary
    $thing.DotNetClassInfo = $xsdInfo.DotNetClassInfo
    $thing.IsSingletonType = $xmlInfo.IsSingletonType
    $thing.IsImmutable = $xmlInfo.IsImmutable
    $thing.AllowReadOnly = $xmlInfo.AllowReadOnly
    $thing.EffectiveDateXPath = $xmlInfo.EffectiveDateXPath
    $thing.FilenamePrefix = if ($xmlInfo.FilenamePrefix) {$xmlInfo.FilenamePrefix} else {$fileBaseName}
    $thing.Namespace = $xsdInfo.Namespace
    $thing.Visibility = $xsdInfo.Visibility

    # Special case
    if ($thing.Name -eq "any") {
        $thing.Name = "RemoveApplicationRecordAuthorization"
    }

    $guids = @($xsdInfo.RelatedDataTypeGuids | ?{$_})
    if ($guids.Count -gt 0) {
        $thing.RelatedDataTypeGuids = $guids
    }

    $links = @($xsdInfo.RelatedLinks | ?{$_})
    if ($links.Count -gt 0) {
        $thing.RelatedLinks = $links
    }

    $cols = @($xmlInfo.ItemTypeDataColumns | ?{$_})
    if ($cols.Count -gt 0) {
        $thing.ItemTypeDataColumns = $cols
    }

    $elements = @($xsdInfo.Elements | ?{$_})
    if ($elements.Count -gt 0) {
        $thing.Elements = $elements
    }

    $types = @($xsdInfo.Types | ?{$_})
    if ($types.Length -gt 0) {
        $thing.Types = $types
    }

    return $thing
}

Function Parse-XsdInfo($xsdItem, $backupId, $fileBaseName) {
    $info = @{}
    $xsdRaw = Get-Content -Encoding UTF8 $xsdItem.FullName
    $xsd = [xml]$xsdRaw

    $script:inlineTypes = New-Object System.Collections.Generic.List[System.Object]
    $script:currentNamespace = $xsd.schema.targetNamespace
    $script:currentSchemaAttributes = $xsd.schema.Attributes

    Add-Documentation $info $xsd.schema
    $documentation = $xsd.schema.annotation.documentation
    $script:currentVersion = if ($documentation.Version) {$documentation.Version} else {1}
    $info.Name = $documentation.'type-name'
    $info.ThingTypeId = if ($documentation.'type-id') {$documentation.'type-id'}
                         elseif ($fileBaseName -match "(?:(?:method)|(?:response))\-(.*)(?:\.xsd)") {"File_$($Matches[1])"}
                         elseif ($fileBaseName) {"File_$fileBaseName"}
                         else {$backupId}
    $info.RelatedDataTypeGuids = @($documentation.'seealso-thing-type-version-id' | ?{$_})
    $info.Version = $documentation.version
    $info.Visibility = $documentation.'method-visibility'
    if ($script:currentNamespace) {
        $ns = $script:currentNamespace.Split(':')
        $ns = $ns[$ns.Count - 1].Split('.')
        $info.NamespaceTail = $ns[$ns.Count - 1]
        $info.Namespace = $script:currentNamespace
    }

    $script:currentTypeId = $info.ThingTypeId

    $info.DotNetClassInfo = Parse-DotNetClassInfo $documentation

    $info.RelatedLinks = @($documentation.'related-links'.'related-link' | ?{$_} | %{@{"Text" = (Clean-AndTrim $_.text);"Link" = (Clean-AndTrim $_.link)}})

    $complex = @($xsd.schema.complexType | ?{$_})
    $simple = @($xsd.schema.simpleType | ?{$_})
    $info.Types = @(($complex + $simple) | Parse-Type)
    $script:inlineTypes.Add($info.Types)
    $info.Types | %{
        if ($_.Name -and $script:currentTypeId) {
            SaveXsdIdByName $script:currentTypeId $_.Name $info.Namespace $info.Version
            #$script:xsdIdsByTypeName[$_.Name] = $script:currentTypeId
        }
    }

    $info.Elements = @($xsd.schema.element | ?{$_} | Parse-SchemaElement)

    $info
}

Function Parse-DotNetClassInfo($documentation) {
    
    $classInfo = @{}
    $classInfo.Name = $documentation.'type-name'
    $classInfo.ClassName = $documentation.'wrapper-class-name'
    $classInfo.IsOld = $false
    if ($classInfo.ClassName) {
        $dotNet = $null
        $dotNetStandard = $null
        try {
            $uri = "https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.$($classInfo.ClassName.ToLower())"
            Invoke-WebRequest -Uri $uri -Method Head | Out-Null
            $dotNet = "`n- $(md-Link "Microsoft.Health.ItemTypes.$($classInfo.ClassName)" $uri)"
        }
        catch [System.Exception] {
            try {
                $uri = "https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.old.$($classInfo.ClassName.ToLower())"
                Invoke-WebRequest -Uri $uri -Method Head | Out-Null
                $dotNet = "`n- $(md-Link "Microsoft.Health.ItemTypes.Old.$($classInfo.ClassName)" $uri)"
                $classInfo.IsOld = $true
            }
            catch [System.Exception] {
                # no-op
            }
        }
        
        try {
            $uri = "https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.$($classInfo.ClassName.ToLower())"
            Invoke-WebRequest -Uri $uri -Method Head | Out-Null
            $dotNetStandard = "`n- $(md-Link "Microsoft.HealthVault.ItemTypes.$($classInfo.ClassName)" $uri)"
        }
        catch [System.Exception] {
            # no-op
        }

        $classInfo.DotNetLink = $dotNet
        $classInfo.DotNetStandardLink = $dotNetStandard
    }

    $classInfo
}

Function Parse-SchemaElement {
    foreach ($item in $input) {
        if ($item) {
            $el = @{}
            Add-Documentation $el $item
            $el.Name = $item.name
            $el.TypeName = $item.type

            $inline = $item.complexType
            if (!$inline) {
                $inline = $item.simpleType
            }

            $inlineType = $inline | Parse-Type
            if ($inlineType) {
                $el.InlineType = $inlineType
                $script:inlineTypes.Add($inlineType)
                if ($inlineType.Name -and $script:currentTypeId) {
                    SaveXsdIdByName $script:currentTypeId $inlineType.Name $script:currentNamespace $script:currentVersion
                }
            }

            if ($el.Name -and $script:currentTypeId) {
                SaveXsdIdByName $script:currentTypeId $el.Name $script:currentNamespace $script:currentVersion
            }

            $el
        }
    }
}

Function Parse-Type {
    foreach ($item in $input) {
        if ($item) {
            $type = @{}
            Add-Documentation $type $item
            $name = Parse-TypeWithNamespace $item.name
            if ($name.Name -ne $item.LocalName) {
                $type.Name = $name.Name
            }

            $type.Attributes = @($item.attribute | Parse-Attribute)
            $type.Sequence = @($item.sequence.ChildNodes | ?{$_} | Parse-SequenceItems)
            $type.Restriction = Parse-Restriction ($item.restriction,$item.complexContent.restriction,$item.simpleContent.restriction | ?{$_})
            $type.Extension = Parse-Extension $item
            $type.Choice = Parse-SequenceChoice $item.choice

            $type
        }
    }
}

Function Parse-SequenceItems {
    foreach ($item in $input) {
        if ($item.LocalName -eq "element") {
            Parse-SequenceElement $item
        }
        elseif ($item.LocalName -eq "choice") {
            Parse-SequenceChoice $item
        }
        elseif ($item.LocalName -eq "any") {
            Parse-SequenceAny $item
        }
        elseif ($item.LocalName -eq "sequence") {
           $item.ChildNodes | ?{$_} | Parse-SequenceItems 
        }
    }
}

Function Parse-SequenceElement($item) {
    if ($item) {
        $el = @{}
        Add-Documentation $el $item
        $el.Name = $item.name
        $el.Type = Parse-TypeWithNamespace $item.type
        $el.MinOccurs = if ($item.minOccurs -eq $null) {1} else {$item.minOccurs}
        $el.MaxOccurs = if ($item.maxOccurs -eq $null) {1} else {$item.maxOccurs}

        $inline = $item.complexType
        if (!$inline) {
            $inline = $item.simpleType
        }

        $inlineType = $inline | Parse-Type
        if ($inlineType) {
            $el.InlineType = $inlineType
            $script:inlineTypes.Add($inlineType)
            if ($inlineType.Name -and $script:currentTypeId) {
                SaveXsdIdByName $script:currentTypeId $inlineType.Name $script:currentNamespace $script:currentVersion
            }
        }

        $el.SequenceType = "element"

        $el
    }
}

Function Parse-SequenceAny($item) {
    if ($item) {
        $any = @{}
        Add-Documentation $any $item
        $any.MinOccurs = if ($item.minOccurs -eq $null) {1} else {$item.minOccurs}
        $any.MaxOccurs = if ($item.maxOccurs -eq $null) {1} else {$item.maxOccurs}
        $any.SequenceType = "any"

        $any
    }
}

Function Parse-SequenceChoice($item) {
    if ($item) {
        $choice = @{}
        Add-Documentation $choice $item
        $choice.MinOccurs = if ($item.minOccurs -eq $null) {1} else {$item.minOccurs}
        $choice.MaxOccurs = if ($item.maxOccurs -eq $null) {1} else {$item.maxOccurs}
        $choice.Choices = @($item.ChildNodes | ?{$_} | Parse-SequenceItems)
        $choice.SequenceType = "choice"

        $choice
    }
}

Function Parse-Attribute {
    foreach ($item in $input) {
        if ($item) {
            $att = @{}
            $att.Name = $item.name
            $att.Type = Parse-TypeWithNameSpace $item.type
            $att.Use = $item.use
            $att.DefaultValue = $item.default

            $att
        }
    }
}

Function Parse-Restriction($item) {
    if ($item) {
        $re = @{}
        Add-Documentation $re $item
        $type = Parse-TypeWithNamespace $item.base
        $re.BaseTypeName = $type.Name
        $re.BaseTypeNamespace = $type.FullNamespace
        $re.BackupNamespace = $type.BackupNamespace
        $re.MinInclusive = $item.minInclusive.value
        $re.MaxInclusive = $item.maxInclusive.value
        $re.Attributes = @($item.attribute | ?{$_} | Parse-Attribute)
        $re.Facets = @($item.ChildNodes | ?{$_} | Parse-Facet)

        $re
    }
}

Function Parse-Facet {
    foreach ($item in $input) {
        if ($item -and (Is-ValidRestrictionFacet $item)) {
            $facet = @{"FacetType" = $item.LocalName; "Value" = $item.value}
            Add-Documentation $facet $item

            $facet
        }
    }
}

Function Parse-Extension($item) {
    $ext = $item.complexContent.extension
    if (!$ext) {
        $ext = $item.simpleContent.extension
        if (!$ext) {
            return
        }
    }

    $ex = @{}
    Add-Documentation $ex $ext
    $type = Parse-TypeWithNamespace $ext.base
    $ex.BaseType = $type.Name
    $ex.BaseTypeNamespace = $type.FullNamespace
    $ex.BackupNamespace = $type.BackupNamespace
    $ex.Attributes = @($ext.attribute | ?{$_} | Parse-Attribute)
    $ex.Sequence = @($ext.sequence | ?{$_} | Parse-SequenceItems)
    $ex.Choice = Parse-SequenceChoice $ext.choice

    $ex
}

Function Is-ValidRestrictionFacet($item) {
    $name = $item.LocalName
    return (
        $name -eq "length" -or
        $name -eq "minLength" -or
        $name -eq "maxLength" -or
        $name -eq "pattern" -or
        $name -eq "enumeration" -or
        $name -eq "whiteSpace" -or
        $name -eq "maxInclusive" -or
        $name -eq "minExclusive" -or
        $name -eq "minExclusive" -or
        $name -eq "minInclusive" -or
        $name -eq "totalDigits" -or
        $name -eq "fractionDigits"
    )
}

Function Is-CurrentNamespace($xmlns) {
    return $script:currentNamespace -eq (XmlnsToNamespace $xmlns)
}

Function XmlnsToNamespace($xmlns) {
    return $script:currentSchemaAttributes.GetNamedItem("xmlns:${xmlns}").'#text'
}

Function Parse-TypeWithNamespace($item) {
    $type = @{}
    $type.Original = $item
    $parts = $item -split ':'
    $type.BackupNamespace = $script:currentNamespace

    if ($parts.Count -eq 1) {
        $type.Name = $item
    }
    else {
        $type.Namespace = $parts[0]
        $type.Name = $parts[1]
        if (Is-CurrentNamespace $type.Namespace) {
            $inline = @($script:inlineTypes | ?{$_} | ?{$_.Name -eq $type.Name})
            $type.InlineType = $inline[0]
        }

        $type.FullNamespace = XmlnsToNamespace $type.Namespace
    }

    $type
}

Function Add-Documentation($itemToFill, $xml)
{
    $doc = $xml.annotation.documentation
    $remarks = $doc.remarks.InnerXml
    $summary = $doc.summary.InnerXml
    $vocabs = @($item.annotation.documentation.'preferred-vocabulary' | ?{$_} | %{Clean-AndTrim $_})

    if (!$remarks) {
        $remarks = $doc.remarks
    }

    if (!$summary) {
        $summary = $doc.summary
    }

    if (!($remarks -or $summary)) {
        $summary = $doc.'#text'
    }

    if ($remarks) {
        $itemToFill.Remarks = Clean-AndTrim $remarks
    }

    if ($summary) {
        $itemToFill.Summary = Clean-AndTrim $summary
    }

    if ($vocabs.Count -gt 0) {
        $itemToFill.PreferredVocabularies = New-Object System.Collections.Generic.List[System.Object]
        foreach ($vocab in $vocabs) {
            $matchingVocabs = $script:vocabularies | ?{$_.Name -eq $vocab}
            $newestMatch = $null
            foreach ($match in $matchingVocabs) {
                if (!$newestMatch -or ($match.Version -gt $newestMatch.Version)) {
                    $newestMatch = $match
                }
            }

            if ($newestMatch) {
                $itemToFill.PreferredVocabularies.Add((md-XrefLink $vocab $newestMatch.Id))
            }
            else {
                $itemToFill.PreferredVocabularies.Add($vocab)
            }
        }
    }
}

Function Clean-AndTrim($text, $keepNewlines = $false) {
    if ($text) {
        $temp = $text.Trim()
        if ($keepNewLines) {
            $temp = $temp -replace '\n','<br/>'
        }

        $temp -replace '\s+',' ' -replace ' xmlns="[^"]*"',''
    }
}

Function Get-Bool($text, $default) {
    $out = $null
    if ([bool]::TryParse($text, [ref]$out))
    {
        return $out
    }
    else {
        return $default
    }
}

Function Pretty-Xml($xml) {
    $sw=New-Object System.Io.Stringwriter
    $writer=New-Object System.Xml.XmlTextWriter($sw)
    $writer.Formatting = [System.Xml.Formatting]::Indented
    $xml.WriteContentTo($writer)
    $sw.ToString()
}

### End Parsing ###

### Markdown Helpers ###

Function md-TableHeader($cols) {
    "`n" + (md-TableRow $cols) + (md-TableRow (,"---" * $cols.Count))
}

Function md-TableRow($cols) {
    "`n{0}" -f ($cols -join '|')
}

Function md-Link($displayText, $link) {
    "`[$displayText`]`($link`)"
}

Function md-XrefLink($name, $id) {
    md-Link $name "xref:HV_$id"
}

Function md-XrefLinkById($id) {
    if ($id -and $script:thingTypes.ContainsKey($id)) {
        md-XrefLink $script:thingTypes[$id].Name $id
    }
    else {
        "`[$id`]`(#placeholder`)"
    }
}

Function md-XrefLinkByName($typeName, $namespace, $backupNamespace) {
    $id = GetXsdIdByName $typeName $(if ($namespace){$namespace}else{$backupNamespace})
    if (!$id -and !$namespace) {
        $id = GetXsdIdByName $typeName
    }

    if ($id) {
        md-XrefLink $typeName "$id#$typeName"
    }
    else {
        $typeName
    }
}

Function New-IndentedDiv($contentCode) {
    $cleaned = Clean-NewLines (($contentCode | Invoke-Expression) -join "`n")
    $prepended = (($cleaned -split "`n") | %{"> $_"}) -join "`n"
@"

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
${prepended}

"@
}

Function Drop-Anchor($anchorName) {
    "`n<a name='$anchorName'></a>`n"
}

### Markdown Helpers ###

### DataType Markdown ###

Function New-DataTypeMarkDown($thingTypeInfo, $samplesDir) {
    $overview = New-DataTypeOverview $thingTypeInfo
    $details = New-DataTypeDetails $thingTypeInfo
    $transforms = $null
    $example = New-DataTypeExample $thingTypeInfo $samplesDir
    $schema = New-DataTypeSchema $thingTypeInfo.FilenamePrefix
    $relatedInfo = New-DataTypeRelatedInfo $thingTypeInfo

    return @"
---
uid: HV_$($thingTypeInfo.ThingTypeId)
title: $($thingTypeInfo.Name)
---

# $($thingTypeInfo.Name)

${overview}
${relatedInfo}
${details}
${transforms}
${example}
${schema}
"@
}

Function New-DataTypeSchema($filename, $type) {
    @"
`n##$(if ($type) {" $type"}) XSD schema
$(md-Link "!$(md-Link "Download" "/$OutDir/images/download.png")Download" "../xsd/${filename}.xsd")
[!code-xml$(md-Link 'XSD schema' "../xsd/${filename}.xsd")]

"@
}

Function New-DataTypeExample($thingTypeInfo, $samplesDir) {
    $sampleFile = $($thingTypeInfo.ThingTypeId) + ".xml"
    if (Test-Path "$samplesDir\$sampleFile") {
@"
`n## Example
[!code-xml$(md-Link 'Example' "../sample-xml/$sampleFile")]

"@
    }
}

Function New-DataTypeOverview($thingTypeInfo) {
    "`n## Overview`n"
    md-TableHeader "Property","Value"
    md-TableRow "id",$thingTypeInfo.ThingTypeId
    md-TableRow "name",$thingTypeInfo.Name
    md-TableRow "immutable",$thingTypeInfo.IsImmutable
    md-TableRow "singleton",$thingTypeInfo.IsSingletonType
    md-TableRow "allow-readonly",$thingTypeInfo.AllowReadOnly
    md-TableRow "effective date XPath",$thingTypeInfo.EffectiveDateXPath
    "`n"
}

Function New-DataTypeRelatedInfo($thingTypeInfo) {
    $reference = New-DotNetReference $thingTypeInfo
    $relatedTypes = New-RelatedDataTypes $thingTypeInfo
    $relatedArticles = New-RelatedArticles $thingTypeInfo

    return @"
${reference}
${relatedTypes}
${relatedArticles}
"@
}

Function New-DotNetReference($thingTypeInfo) {
    if ($thingTypeInfo.DotNetClassInfo.DotNetLink -or $thingTypeInfo.DotNetClassInfo.DotNetStandardLink) {
        # The links already include newlines
        return "`n## .NET reference$($thingTypeInfo.DotNetClassInfo.DotNetLink)$($thingTypeInfo.DotNetClassInfo.DotNetStandardLink)`n"
    }
}
Function New-RelatedDataTypes($thingTypeInfo) {
    $related = $thingTypeInfo.RelatedDataTypeGuids | ?{$_}
    if ($related.Count -gt 0) {
        "`n## Related data types`n"
        foreach ($id in $related) {
            "`n- $(md-XrefLinkById $id)"
        }

        "`n"
    }
}

Function New-RelatedArticles($thingTypeInfo) {
    $relatedLinks = $thingTypeInfo.RelatedLinks | ?{$_}
    if ($relatedLinks.Count -gt 0) {
        "`n## Related articles`n"
        foreach ($related in $relatedLinks) {
            "`n- $(md-Link $related.Text $related.Link)"
        }

        "`n"
    }
}

Function New-DataTypeDetails($thingTypeInfo)
{
    $schema = $thingTypeInfo

    #Remarks and Summary are redundant.  Use only one.
    $summary = $schema.Remarks
    if (!$summary) {
        $summary = $schema.Summary
    }
    
    New-VocabBlock $thingTypeInfo

    $script:currentTypes = $schema.Types
    $elements = $schema.Elements | New-DataTypeDetailsElements
    $types = $schema.Types | New-DataTypeDetailsTypes

    return @"
`n## Details
${summary}
${elements}
${types}
"@
}

Function New-DataTypeDetailsElements {
    foreach ($element in $input) {
        Drop-Anchor $element.Name
        "`n### Root element: $($element.Name)`n"
        if ($element.Summary) {
            "`n$($element.Summary)`n"
        }

        if ($element.Remarks) {
            "`n$($element.Remarks)`n"
        }

        New-VocabBlock $element

        if ($element.InlineType) {
             New-SchemaType $element.InlineType
        }
        else {
             "Type: $($element.TypeName)"
        }
    }

    "`n"
}

Function New-DataTypeDetailsTypes {
    foreach ($type in $input) {
        if ($type) {
            New-IndentedDiv {
                New-SchemaType $type
            }
        }
    }

    "`n"
}

Function New-VocabBlock($item) {
    if ($item.PreferredVocabularies.Count -gt 0) {
        "`nPreferred Vocabulary: $($item.PreferredVocabularies -join ", ")`n"
    }
}

### End DataType Markdown ###

### Schema Markdown ###

Function New-SchemaType($schemaType) {
    $header = $null
    $summary = $schemaType.Summary
    $remarks = $schemaType.Remarks
    $vocab = New-VocabBlock $schemaType
    $typeTable = New-SchemaTypeTable $schemaType

    if ($schemaType.Name) {
        $header = "`n### $($schemaType.Name)"
    }

    if ($schemaType.Name) {
        Drop-Anchor $schemaType.Name
    }
    
    "${header}"
    if ($summary) {
        "`n${summary}`n"
    }

    if ($remarks) {
        "`n${remarks}`n"
    }
    
    if ($vocab) {
        $vocab
    }

    "`n$typeTable`n"
}

Function New-SchemaTypeTable($schemaType) {
    $attributes = New-SchemaAttributesTable $schemaType
    $sequence = New-SchemaItemTable $schemaType.Sequence
    $choice = New-SchemaChoice $schemaType.Choice
    $restriction = New-SchemaRestriction $schemaType.Restriction
    $extension = New-SchemaExtension $schemaType
    
    return @"
${attributes}
${sequence}
${choice}
${restriction}
${extension}

"@
}

Function New-SchemaAttributesTable($schemaType) {
    $attributes = $schemaType.Attributes | ?{$_}
    if ($attributes.Count -gt 0) {
        $inlines = New-Object System.Collections.Generic.List[System.Object]
        "`n### Attributes"
        $hasVocab = ($attributes | ?{$_.PreferredVocabularies.Count -gt 0}).Count -gt 0
        $headerColumns = "Name","Type","Use","Default value","Summary","Remarks"
        if ($hasVocab) {
            $headerColumns += "Preferred Vocabulary"
        }

        md-TableHeader $headerColumns
        foreach ($attr in $attributes) {
            $link = Get-ElementLink $attr $inlines

            if ($hasVocab) {
                md-TableRow $attr.Name,$link,$attr.Use,$attr.DefaultValue,$attr.Summary,$attr.Remarks,($attr.PreferredVocabularies -join ", ")
            }
            else {
                md-TableRow $attr.Name,$link,$attr.Use,$attr.DefaultValue,$attr.Summary,$attr.Remarks
            }
        }

        if ($inlines.Count -gt 0) {
            "`n"
            foreach ($inline in $inlines) {
                New-IndentedDiv {
                    New-SchemaType $inline.Object
                }
            }
        }

        "`n"
    }
}

Function New-SchemaItemTable($elements) {
    if ($elements.Count -gt 0) {
        $inlines = New-Object System.Collections.Generic.List[System.Object]
        $inlineChoices = New-Object System.Collections.Generic.List[System.Object]
        "`n### Element sequence"
        $hasVocab = ($elements | ?{$_.PreferredVocabularies.Count -gt 0}).Count -gt 0
        $headerColumns = "Name","Type","Min occurs","Max occurs","Summary","Remarks"
        if ($hasVocab) {
            $headerColumns += "Preferred Vocabulary"
        }
        md-TableHeader $headerColumns
        foreach ($item in $elements) {
            if ($item.SequenceType -eq "element") {
                $link = Get-ElementLink $item $inlines

                if ($hasVocab) {
                    md-TableRow $item.Name,$link,$item.MinOccurs,$item.MaxOccurs,$item.Summary,$item.Remarks,($item.PreferredVocabularies -join ", ")
                }
                else {
                    md-TableRow $item.Name,$link,$item.MinOccurs,$item.MaxOccurs,$item.Summary,$item.Remarks
                }
            }
            elseif ($item.SequenceType -eq "choice") {
                $inlineChoices.Add($item)
            }
            elseif ($item.SequenceType -eq "any") {
                if ($hasVocab) {
                    md-TableRow "Any",$null,$item.MinOccurs,$item.MaxOccurs,$item.Summary,$item.Remarks,($item.PreferredVocabularies -join ", ")
                }
                else {
                    md-TableRow "Any",$null,$item.MinOccurs,$item.MaxOccurs,$item.Summary,$item.Remarks
                }
            }
        }

        $choices = $inlineChoices | ?{$_}
        if ($choices.Count -gt 0) {
            "`n"
            foreach ($choice in $inlineChoices) {
                New-SchemaChoice $choice
            }
        }

        if ($inlines.Count -gt 0) {
            "`n"
            foreach($inline in $inlines) {
                New-IndentedDiv {
                    New-SchemaType $inline.Object
                }
            }
        }

        "`n"
    }
}

Function Get-ElementLink($item, $inlines) {
    $link = $item.Name
    if ($item.InlineType) {
        $targetName = $item.InlineType.Name
        if (!$targetName) {
            $item.InlineType.Name = $item.Name
            $targetName = $item.Name
        }

        $nestedType = New-NestedObjectWithAnchorName $item.InlineType "$targetName"
        $inlines.Add($nestedType)
        $link = md-Link $item.InlineType.Name "#$targetName"
    }
    elseif ($item.Type) {
        $name = $item.Type.Name
        $localType = $script:currentTypes | ?{$_.Name -eq $name} | Select-Object -First 1
        if ($localType) {
            $link = md-Link $name "#$name"
        }
        else {
            $customType = $script:thingTypes.Values | ?{$_.Name -eq $name} | Select-Object -First 1
            if ($customType) {
                $link = md-XrefLinkById $customType.ThingTypeId
            }
            else {
                $link = md-XrefLinkByName $name $item.Type.FullNamespace $item.Type.BackupNamespace
            }
        }
    }

    $link
}

Function New-SchemaChoice($choice) {
    if ($choice) {
        @"
`n### Choice

Min occurs: $($choice.MinOccurs)

Max occurs: $($choice.MaxOccurs)
"@
        if ($choice.Summary) {
            "`n$($choice.Summary)`n"
        }

        if ($choice.Remarks) {
            "`n$($choice.Remarks)`n"
        }

        New-VocabBlock $choice
        New-SchemaItemTable $choice.Choices
        "`n"
    }
}

Function New-SchemaRestriction($restriction) {
    if ($restriction) {
        "`n### Restriction`n"

        if ($restriction.Summary) {
            "`n$($restriction.Summary)`n"
        }

        if ($restriction.Remarks) {
            "`n$($restriction.Remarks)`n"
        }

        if ($restriction.BaseTypeName) {
            "`nBase type: $(md-XrefLinkByName $restriction.BaseTypeName $restriction.BaseTypeNamespace $restriction.BackupNamespace)`n"
        }

        New-VocabBlock $restriction

        if ($restriction.Attributes.Count -gt 0) {
            New-SchemaAttributesTable $restriction
        }

        if ($restriction.Facets.Count -gt 0) {
            New-SchemaFacets $restriction.Facets
        }

        "`n"
    }
}

Function New-SchemaFacets($facets) {
    $nnFacets = $facets | ?{$_}
    if ($nnFacets.Count -gt 0) {
        "`n#### Restriction facets`n"
        $hasVocab = ($schemaType.Sequence | ?{$_.PreferredVocabularies.Count -gt 0}).Count -gt 0
        $headerColumns = "Restriction type","Value","Summary","Remarks"
        if ($hasVocab) {
            $headerColumns += "Preferred Vocabulary"
        }
        md-TableHeader $headerColumns
        foreach ($facet in $nnFacets) {
            if ($hasVocab) {
                md-TableRow $facet.FacetType,$facet.Value,$facet.Summary,$facet.Remarks,($facet.PreferredVocabularies -join ", ")
            }
            else {
                md-TableRow $facet.FacetType,$facet.Value,$facet.Summary,$facet.Remarks
            }
        }

        "`n"
    }
}

Function New-SchemaExtension($schemaType) {
    if ($schemaType.Extension) {
        $ex = $schemaType.Extension
        "`n### Extension`n"
        if ($ex.Summary) {
            "`n$($ex.Summary)`n"
        }

        if ($ex.Remarks) {
            "`n$($ex.Remarks)`n"
        }

        "`nBase type: $(md-XrefLinkByName $ex.BaseType $ex.BaseTypeNamespace $ex.BackupNamespace)`n"

        New-VocabBlock $schemaType
        
        if ($ex.Attributes.Count -gt 0) {
            New-SchemaAttributesTable $ex
        }

        if ($ex.Sequence.Count -gt 0) {
            New-SchemaItemTable $ex.Sequence
        }

        if ($ex.Choice) {
            New-SchemaChoice $ex.Choice
        }

        "`n"
    }
}

Function Get-UrlForType($typeName) {
    md-XrefLinkById $typeName $typeName
}

Function New-NestedObjectWithAnchorName($obj, [string] $anchorName) {
    $info = @{}
    $info.Object = $obj
    $info.AnchorName = $anchorName
    return $info
}

### End Schema Markdown ###

### Vocabulary Markdown ###

Function New-VocabularyMarkdown($vocab) {
    @"
---
uid: HV_$($vocab.Id)
title: $($vocab.Name)
---

# $($vocab.Name)

## Overview$(
    md-TableHeader "Property","Value"
    md-TableRow "Name",$vocab.Name
    md-TableRow "Family",$vocab.Family
    md-TableRow "Version",$vocab.Version
)

## Examples$(
    if ($vocab.Values.Count -gt 100) {
        "`n`nOnly the first 100 items are displayed."
    }
    md-TableHeader "ID","Name"
    $i = 0
    foreach ($item in $vocab.Values) {
        if ($i -eq 100) {
            break;
        }
        
        md-TableRow $item.Value,$item.DisplayText
        $i++
    }
)
"@
}

### End Vocabulary Markdown ###

### Method Markdown ###

Function New-MethodMarkdown($method) {
    $title = if ($method.Request) {$method.Request.Name} else {$method.Response.Name}
    $id = if ($method.Request) {$method.Request.ThingTypeId} else {$method.Response.ThingTypeId}
    $overview = New-MethodOverview $method
    $requestSchema = if ($method.Request) {New-DataTypeSchema $method.Request.File.BaseName "Request"}
    $responseSchema = if ($method.Response) {New-DataTypeSchema $method.Response.File.BaseName "Response"}

    return @"
---
uid: HV_${id}
title: ${title}
---

# ${title}

${overview}
${requestSchema}
${responseSchema}
"@
}

Function New-MethodOverview($method) {
    @"

$(if ($method.Request) {New-MethodDetails $method.Request "Request"})
$(if ($method.Response) {New-MethodDetails $method.Response "Response"})

"@
}

Function New-MethodDetails($info, $sectionName) {
    $script:currentTypes = $info.Types
    $elements = $info.Elements | New-DataTypeDetailsElements
    $types = $info.Types | New-DataTypeDetailsTypes
    $hasSummary = $info.Summary -or $info.Description
    $overview = "## $sectionName Overview`n`n$($info.Summary)`n`n$($info.Description)"

    return @"

$(if ($hasSummary) {$overview})

## ${sectionName} Details

${elements}
${types}

"@
}

### End Method Markdown

### File Helpers ###

$refPath = "$OutDir\reference"
$xsdPath = "$refPath\xsd"
$dtPath = "$refPath\datatypes"
$methodPath = "$refPath\methods"
$vocPath = "$refPath\vocabularies"

#Cleans end-of-line whitespace and ensures we have a max of 2 newlines in a row
Function Clean-NewLines($content) {
    $content -replace '[^\S\n]+\n',"`n" -replace '(\s*[\n]\s*){3,}',"`n`n"
}

Function md-VocabLink($vocab, $ignoreVersion) {
    $name = $vocab.Name
    if ($vocab.Version -ne 1 -and !$ignoreVersion) {
        $name += " v$($vocab.Version)"
    }

    $path = "/$($vocPath -replace "\\","/")/$($vocab.FilenamePrefix)"

    md-Link $name $path
}

Function md-ThingLink($thing, $ignoreVersion) {
    $path = "/$($dtPath -replace "\\","/")/$($thing.MarkdownFilename)"
    $name = $thing.Name
    if (!$ignoreVersion) {
        $allVersionsOfItem = Get-ThingsWithSameName $name
        $highestVersion = $allVersionsOfItem | Sort-Object {$_.Version} | Select-Object -Last 1
        if ($thing.Version -ne $highestVersion.Version) {
            $name += " v$($thing.Version)"
        }
    }

    md-Link $name $path
}

Function md-MethodLink($method, $ignoreVersion) {
    $name = if ($method.Request) {$method.Request.Name} else {$method.Response.Name}
    $version = if ($method.Request) {$method.Request.Version} else {$method.Response.Version}
    if ($name -match "(\D+)\d+") {
        $name = $matches[1]
    }

    if ($version -ne 1 -and !$ignoreVersion) {
        $name += " v$version"
    }

    $path = "/$($methodPath -replace "\\","/")/$($method.Name)"
    
    md-Link $name $path
}

Function FormatFileName($name, $version) {
    $allVersionsOfItem = Get-ThingsWithSameName $name
    $formattedName = $name.ToLowerInvariant() -replace "[\-&\s]+","-"
    $highestVersion = $allVersionsOfItem | Sort-Object {$_.Version} | Select-Object -Last 1
    if ($version -ne $highestVersion.Version) {
        $formattedName += ".$version"
    }

    [System.Web.HttpUtility]::UrlEncode($formattedName)
}

Function Get-ThingsWithSameName($name) {
    $script:thingTypes.Values | Where-Object {$_.Name -eq $name}
}

### End File Helpers ###

if ($Help -or !$TypeXmlDir -or !$XsdDir -or !$WebXsdDir -or !$VocabDir) {
    Write-Host @'
Usage: Document-TypesAndVocabs.ps1 $OutDir $TypeXmlDir $XsdDir $WebXsdDir $VocabDir [-Overwrite] [-Debug] [-Help]

Parameters:
 $OutDir      Target location for markdown files, including the directories:
                OutDir\reference\datatypes,
                OutDir\reference\xsd,
                OutDir\reference\methods, and
                OutDir\reference\vocabularies
 $TypeXmlDir  Source directory for Thing type xml files
 $XsdDir      Source directory for Thing type xsd files
 $WebXsdDir   Source directory for method and shared type xsd files
 $VocabDir    Source directory for vocabularies
 -Overwrite   Adds -Force switch when creating markdown directories and files
 -Debug       Writes debug output to the console
 -Help        Writes this usage message to the console

'@

    return
}

if (!(Test-Path $TypeXmlDir)) {
    throw "Could not find .type.xml directory: $TypeXmlDir"
}

if (!(Test-Path $XsdDir)) {
    throw "Could not find XSD directory: $XsdDir"
}

if (!(Test-Path $WebXsdDir)) {
    throw "Could not find property dictionary: $WebXsdDir"
}

if (!(Test-Path $VocabDir)) {
    throw "Could not find property dictionary: $VocabDir"
}

New-Item -ItemType Directory $OutDir -Force:$Overwrite | Out-Null
New-Item -ItemType Directory $refPath -Force:$Overwrite | Out-Null
New-Item -ItemType Directory $dtPath -Force:$Overwrite | Out-Null
New-Item -ItemType Directory $xsdPath -Force:$Overwrite | Out-Null
New-Item -ItemType Directory $methodPath -Force:$Overwrite | Out-Null
New-Item -ItemType Directory $vocPath -Force:$Overwrite | Out-Null

if ($Overwrite) {
    del "$refPath\*.md"
    del "$dtPath\*.md"
    del "$xsdPath\*.xsd"
    del "$vocPath\*.md"
    del "$methodPath\*.md"
}

try {
    [System.Web.HttpUtility] | Out-Null
}
catch {
    Add-Type -AssemblyName System.Web
}

Get-Vocabularies $VocabDir
foreach ($vocab in $script:vocabularies) {
    New-Item -ItemType File "$vocPath\$($vocab.FilenamePrefix).md" -Value (New-VocabularyMarkdown $vocab) -Force:$Overwrite | Out-Null
}

$sortedVocabs = $script:vocabularies | Sort-Object {$_.Name -as [string]}
$indexVocab = "# Vocabularies$(md-TableHeader "Name","Family","Version")$($sortedVocabs | %{md-TableRow (md-VocabLink $_ $true),$_.Family,$_.Version})"
New-Item -ItemType File "$vocPath\index.md" -Value $indexVocab -Force:$Overwrite | Out-Null
Debug "Vocabulary serialization complete.`n"

Get-ChildItem $XsdDir\*.xsd -Exclude $script:excludedXsds | %{ Copy-Item $_ $xsdPath }
Get-ChildItem $WebXsdDir\* -Include ($script:commonXsds + ("method-*.xsd","response-*.xsd")) | %{ Copy-Item $_ $xsdPath }

Get-ThingTypeInfos $TypeXmlDir $XsdDir $WebXsdDir
foreach ($thingInfo in $script:thingTypes.Values) {
    $markdown = Clean-NewLines (New-DataTypeMarkDown $thingInfo "$refPath\sample-xml")
    $filename = FormatFileName $thingInfo.Name $thingInfo.Version
    $thingInfo.MarkdownFilename = $filename
    New-Item -ItemType File "$dtPath\$filename.md" -Value $markdown -Force:$Overwrite | Out-Null
}

$sortedThings = $script:thingTypes.Values | Where-Object{!$_.DotNetClassInfo.IsOld} | Sort-Object @{Expression={$_.Name};Ascending=$true},@{Expression={$_.Version};Descending=$true}
$sortedOldThings = $script:thingTypes.Values | Where-Object{$_.DotNetClassInfo.IsOld} | Sort-Object @{Expression={$_.Name};Ascending=$true},@{Expression={$_.Version};Descending=$true}
$indexThings = "# DataTypes" +
                (md-TableHeader "Name","Version","ID","Description") +
                ($sortedThings | %{md-TableRow (md-ThingLink $_ $true),$_.Version,$_.ThingTypeId,$_.Summary}) +
                $("`n" + (Drop-Anchor "oldtypes")) +
                "`n# Old DataTypes" +
                (md-TableHeader "Name","Version","ID","Description") +
                ($sortedOldThings | %{md-TableRow (md-ThingLink $_ $true),$_.Version,$_.ThingTypeId,$_.Summary})
New-Item -ItemType File "$dtPath\index.md" -Value $indexThings -Force:$Overwrite | Out-Null
Debug "DataType serialization complete."

foreach ($method in $script:methods.Values) {
    $markdown = Clean-NewLines (New-MethodMarkdown $method)
    New-Item -ItemType File "$methodPath\$($method.Name).md" -Value $markdown -Force:$Overwrite | Out-Null
}

$sortedMethods = $script:methods.Values | Sort-Object {$_.Name -as [string]}
$indexMethods = "# Methods" +
                (md-TableHeader "Name","Version","Description") +
                ($sortedMethods | %{
                    $version = if ($_.Request) {$_.Request.Version} else {$_.Response.Version}
                    $summary = if ($_.Request) {$_.Request.Summary} else {$_.Response.Summary}
                    md-TableRow (md-MethodLink $_ $true),$version,$summary
                })
New-Item -ItemType File "$methodPath\index.md" -Value $indexMethods -Force:$Overwrite | Out-Null
Debug "Method serialization complete."

$tocThings = ($sortedThings | %{"## $(md-ThingLink $_)"}) -join "`n"
$tocOldThings = ($sortedOldThings | %{"### $(md-ThingLink $_)"}) -join "`n"
$tocMethods = ($sortedMethods | %{"## $(md-MethodLink $_)"}) -join "`n"
$tocVocab = ($sortedVocabs | %{"## $(md-VocabLink $_)"}) -join "`n"

$tocRef = @"
# [DataTypes](/$($dtPath -replace "\\","/")/)
## [Old](/$($dtPath -replace "\\","/")/#oldtypes)
${tocOldThings}
${tocThings}
# [Methods](/$($methodPath -replace "\\","/")/)
${tocMethods}
# [Vocabularies](/$($vocPath -replace "\\","/")/)
${tocVocab}
"@
$indexRef = @"
# Reference

[DataTypes](/$($dtPath -replace "\\","/")/)

[Methods](/$($methodPath -replace "\\","/")/)

[Vocabularies](/$($vocPath -replace "\\","/")/)
"@

New-Item -ItemType File "$refPath\toc.md" -Value $tocRef -Force:$Overwrite | Out-Null
New-Item -ItemType File "$refPath\index.md" -Value $indexRef -Force:$Overwrite | Out-Null
