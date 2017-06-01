PARAM(
    $OutDir,
    $TypeXmlDir,
    $XsdDir,
    $VocabDir,
    [switch]$Debug,
    [switch]$Overwrite
)

Function Debug($text) {
    if ($Debug) {
        Write-Host $text
    }
}

### Parsing ###

Function Get-Vocabularies($vocabRoot) {
    $vocabs = @{}
    Get-ChildItem $vocabRoot -Filter *.en.xml | %{$vocabs[$_.Name.Substring(0, ($_.Name.Length - 7))] = $_}

    Debug "Found $($vocabs.Keys.Count) vocabularies"

    $script:typeNameDictionary = @{}
    $dictionaryIdToKeep = "8080b228-5b99-40f5-8ac2-fd5daefc3495"
    $script:vocabularies = New-Object System.Collections.Generic.List[System.Object]
    foreach ($key in $vocabs.Keys) {
        [xml]$xml = Get-Content $vocabs[$key].FullName
        $vocab = @{}
        $vocab.FilenamePrefix = $key
        $vocab.Name = $xml.vocab.name
        $vocab.Family = $xml.vocab.Family
        $vocab.Version = $xml.vocab.version
        $vocab.Id = $xml.vocab.id

        # Many of the disp-text nodes in the dictionaries have comments, which causes Powershell to
        # return an xml node instead of the string so get it through .SelectSingleNode first and then get #text.
        $vocab.Values = $xml.vocab.items.vi | ?{$_} | %{@{"Value" = $_.'code-val';"DisplayText" = (Clean-AndTrim $_.SelectSingleNode('disp-text').'#text' $true);"Id" = $_.'disp-text-id'}}

        if ($dictionaryIdToKeep -eq $vocab.Id) {
            foreach ($v in $vocab.Values) {
                $script:typeNameDictionary[$v.Id] = $v
            }
        }

        $preexisting = $script:vocabularies | ?{$_.Id -eq $vocab.Id} | Select-Object -First 1
        if ($preexisting) {
            Debug "Multiple vocabs with ID == $($vocab.Id)"
            $preexisting.Values += $vocab.Values
        }
        else {
            $script:vocabularies.Add($vocab)
        }
    }

    Debug "Vocabularies parsed: $($script:vocabularies.Count)"
}

Function Get-ThingTypeInfos($typeXmlRoot, $xsdRoot, $filenamePattern = '*') {
    $xmlItems = @{}
    $xsdItems = @{}
    Get-ChildItem $typeXmlRoot -Filter "$filenamePattern.type.xml" | %{ $xmlItems.Add($_.Name.Substring(0, ($_.Name.Length - 9)), $_) }
    Get-ChildItem $xsdRoot -Filter "$filenamePattern.xsd" | %{ $xsdItems.Add($_.Name.Substring(0, ($_.Name.Length - 4)), $_) }

    Debug "Found $($xmlItems.Keys.Count) ThingType xml files"
    Debug "Found $($xsdItems.Keys.Count) ThingType xsd files`n"

    $mismatched = New-Object System.Collections.Generic.List[System.Object]
    $failed = New-Object System.Collections.Generic.List[System.Object]
    $script:xsdIdsByTypeName = @{}
    $script:thingTypes = @{}
    foreach ($typeName in $xmlItems.Keys) {
        if ($xsdItems.ContainsKey($typeName)) {
            try {
                $xmlInfo = Parse-XmlInfo $xmlItems[$typeName]
                $xsdInfo = Parse-XsdInfo $xsdItems[$typeName] $xmlInfo.ThingTypeId
                $combined = Combine-ThingInfo $xmlInfo $xsdInfo
                $script:thingTypes.Add($combined.ThingTypeId, $combined)
                if ($combined.Name -and $combined.ThingTypeId) {
                    $script:xsdIdsByTypeName[$combined.Name] = $combined.ThingTypeId
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

    foreach ($typeName in $xsdItems.Keys)
    {
        if  (!$xmlItems.ContainsKey($typeName)) {
            $mismatched.Add($xsdItems[$typeName])
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

Function Parse-XmlInfo($typeXmlItem) {
    $info = @{}
    [xml]$xml = Get-Content $typeXmlItem.FullName
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

Function Combine-ThingInfo($xmlInfo, $xsdInfo) {
    $thing = @{}
    $thing.ThingTypeId = if ($xsdInfo.ThingTypeId) {$xsdInfo.ThingTypeId} else {$xmlInfo.ThingTypeId}
    $thing.Name = if ($xmlInfo.Name) {$xmlInfo.Name} else {$xsdInfo.Name}
    $thing.Version = if ($xmlInfo.Version) {$xmlInfo.Version} else {1}
    $thing.Xsd = $xsdInfo.Raw
    $thing.Remarks = $xsdInfo.Remarks
    $thing.Summary = $xsdInfo.Summary
    $thing.DotNetClassInfo = $xsdInfo.DotNetClassInfo
    $thing.IsSingletonType = $xmlInfo.IsSingletonType
    $thing.IsImmutable = $xmlInfo.IsImmutable
    $thing.AllowReadOnly = $xmlInfo.AllowReadOnly
    $thing.EffectiveDateXPath = $xmlInfo.EffectiveDateXPath
    $thing.FilenamePrefix = $xmlInfo.FilenamePrefix

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

Function Parse-XsdInfo($xsdItem, $backupId) {
    $info = @{}
    $xsdRaw = Get-Content $xsdItem.FullName
    $xsd = [xml]$xsdRaw

    $script:inlineTypes = New-Object System.Collections.Generic.List[System.Object]
    $script:currentNamespace = $xsd.schema.targetNamespace
    $script:currentSchemaAttributes = $xsd.schema.Attributes

    #$info.Raw = Pretty-Xml $xsd
    Add-Documentation $info $xsd.schema
    $documentation = $xsd.schema.annotation.documentation
    $info.Name = $documentation.'type-name'
    $info.ThingTypeId = if ($documentation.'type-id') {$documentation.'type-id'} else {$backupId}
    $info.RelatedDataTypeGuids = @($documentation.'seealso-thing-type-version-id' | ?{$_})

    $script:currentTypeId = $info.ThingTypeId

    $classInfo = @{"Name" = $documentation.'type-name'; "ClassName" = $documentation.'wrapper-class-name'}
    $info.DotNetClassInfo = $classInfo

    $info.RelatedLinks = @($documentation.'related-links'.'related-link' | ?{$_} | %{@{"Text" = (Clean-AndTrim $_.text);"Link" = (Clean-AndTrim $_.link)}})

    $complex = @($xsd.schema.complexType | ?{$_})
    $simple = @($xsd.schema.simpleType | ?{$_})
    $info.Types = @(($complex + $simple) | Parse-Type)
    $script:inlineTypes.Add($info.Types)
    $info.Types | %{
        if ($_.Name -and $script:currentTypeId) {
            $script:xsdIdsByTypeName[$_.Name] = $script:currentTypeId
        }
    }

    $info.Elements = @($xsd.schema.element | ?{$_} | Parse-SchemaElement)

    $info
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
                    $script:xsdIdsByTypeName[$inlineType.Name] = $script:currentTypeId
                }
            }

            if ($el.Name -and $script:currentTypeId) {
                $script:xsdIdsByTypeName[$el.Name] = $script:currentTypeId
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
                $script:xsdIdsByTypeName[$inlineType.Name] = $script:currentTypeId
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
        $re.BaseTypeName = $item.base
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
    $ex.BaseType = $ext.base
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

Function Is-CurrentNamespace($namespace) {
    return $script:currentNamespace -eq $script:currentSchemaAttributes.GetNamedItem("xmlns:${namespace}").'#text'
}

Function Parse-TypeWithNamespace($item) {
    $type = @{}
    $type.Original = $item
    $parts = $item -split ':'

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
            $temp = $text.Trim() -replace '\n','<br/>'
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

Function md-XrefLinkByName($typeName) {
    if ($typeName -and $script:xsdIdsByTypeName.ContainsKey($typeName)) {
        md-XrefLink $typeName "$($script:xsdIdsByTypeName[$typeName])#$typeName"
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

Function New-DataTypeSchema($filename) {
    @"
`n## XSD schema
$(md-Link "!$(md-Link "Download" "/healthvault/images/download.png")Download" "xsd/${filename}.xsd")
[!code-xml$(md-Link 'XSD schema' "xsd/${filename}.xsd")]

"@
}

Function New-DataTypeExample($thingTypeInfo, $samplesDir) {
    $sampleFile = $($thingTypeInfo.ThingTypeId) + ".xml"
    if (Test-Path "$samplesDir\$sampleFile") {
@"
`n## Example
[!code-xml$(md-Link 'Example' "sample-xml/$sampleFile")]

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
    if ($thingTypeInfo.DotNetClassInfo -and
        $thingTypeInfo.DotNetClassInfo.Name -and
        $thingTypeInfo.DotNetClassInfo.ClassName) {
        return @"
`n## .NET reference
- $(md-Link "Microsoft.Health.ItemTypes.$($thingTypeInfo.DotNetClassInfo.ClassName)" "https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.$($thingTypeInfo.DotNetClassInfo.ClassName.ToLower())")
- $(md-Link "Microsoft.HealthVault.ItemTypes.$($thingTypeInfo.DotNetClassInfo.ClassName)" "https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.$($thingTypeInfo.DotNetClassInfo.ClassName.ToLower())")

"@
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
                $link = md-XrefLinkByName $name
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
            "`nBase type: $(md-XrefLinkByName $restriction.BaseTypeName)`n"
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

        "`nBase type: $(md-XrefLinkByName $ex.BaseType)`n"

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
    md-TableHeader "ID","Name"
    foreach ($item in $vocab.Values) {
        md-TableRow $item.Value,$item.DisplayText
    }
)
"@
}

#End Vocabulary Markdown ###

#Cleans end-of-line whitespace and ensures we have a max of 2 newlines in a row
Function Clean-NewLines($content) {
    $content -replace '[^\S\n]+\n',"`n" -replace '(\s*[\n]\s*){3,}',"`n`n"
}

if (!(Test-Path $TypeXmlDir)) {
    throw "Could not find .type.xml directory: $TypeXmlDir"
}

if (!(Test-Path $XsdDir)) {
    throw "Could not find XSD directory: $XsdDir"
}

if (!(Test-Path $vocabDir)) {
    throw "Could not find property dictionary: $vocabDir"
}

$dirTemp = New-Item -ItemType Directory $OutDir -Force:$Overwrite
$dirTemp = New-Item -ItemType Directory "$OutDir\datatypes" -Force:$Overwrite
$dirTemp = New-Item -ItemType Directory "$OutDir\datatypes\xsd" -Force:$Overwrite
$dirTemp = New-Item -ItemType Directory "$OutDir\vocabularies" -Force:$Overwrite

if ($overwrite) {
    del "$OutDir\datatypes\*.md"
    del "$OutDir\datatypes\xsd\*.xsd"
    del "$OutDir\vocabularies\*.md"
}

Get-Vocabularies $vocabDir
foreach ($vocab in $script:vocabularies) {
    $itemTemp = New-Item -ItemType File "$OutDir\vocabularies\$($vocab.FilenamePrefix).md" -Value (New-VocabularyMarkdown $vocab) -Force:$Overwrite
}

$tocVocab = ($script:vocabularies | Sort-Object {$_.Name -as [string]} | %{"# $(md-Link "$($_.Name)$(if ($_.Version -ne 1) {" v$($_.Version)"})" "/healthvault/vocabularies/$($_.FilenamePrefix)")`n"}) -join ''
$itemTemp = New-Item -ItemType File "$OutDir\vocabularies\toc.md" -Value $tocVocab -Force:$Overwrite
Debug "Vocabulary serialization complete.`n"

Get-ThingTypeInfos $TypeXmlDir $XsdDir
foreach ($thingInfo in $script:thingTypes.Values) {
    Copy-Item "$xsdDir\$($thingInfo.FilenamePrefix).xsd" "$Outdir\datatypes\xsd"
    $markdown = Clean-NewLines (New-DataTypeMarkDown $thingInfo "$Outdir\datatypes\sample-xml")
    $itemTemp = New-Item -ItemType File "$OutDir\datatypes\$($thingInfo.FilenamePrefix).md" -Value $markdown -Force:$Overwrite
}

$tocThings = ($script:thingTypes.Values | Sort-Object {$_.Version -as [string]} | Sort-Object {$_.Name -as [string]} | %{"# $(md-Link "$($_.Name)$(if ($_.Version -ne 1) {" v$($_.Version)"})" "/healthvault/datatypes/$($_.FilenamePrefix)")`n"}) -join ''
$itemTemp = New-Item -ItemType File "$OutDir\datatypes\toc.md" -Value $tocThings -Force:$Overwrite
Debug "DataType serialization complete."
