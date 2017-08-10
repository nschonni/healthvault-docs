---
uid: HV_File_vocab
title: vocab
---

# vocab

## Overview

Property|Value
---|---
id|File_vocab
name|vocab
immutable|
singleton|
allow-readonly|
effective date XPath|

## Details
Defines common types for interfacing with vocabularies in the system.

<a name=''></a>

### Root element:
 Type:

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='VocabularyKey'></a>
>
> ### VocabularyKey
>
> Used to uniquely identify a specific vocabulary in the system.
>
> Information about supported vocabularies can be obtained though the partner labs site.
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> attribute||optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|[stringnz](xref:HV_File_types#stringnz)|1|1|The name of the vocabulary being referenced.|
> family|[stringnz](xref:HV_File_types#stringnz)|0|1|The family to which the vocabulary being referenced belongs.|Vocabularies can be defined by HealthVault or by a number of standards organizations such as the ISO. The family parameter specfies this source.
> version|[stringnz](xref:HV_File_types#stringnz)|0|1|The version of the vocabulary being referenced.|A string used to identify a particular version of a vocabulary.
> code-value|string|0|1||If the code-value is specified, all vocabulary code items starting with the one which has the specified code value are returned.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='VocabularyKeyInfo'></a>
>
> ### VocabularyKeyInfo
>
> Summary information about a vocabulary in the system.
>
> This information is made up of the key and a description of the vocabulary. The key is made up of the name, family, and version.
>
> ### Extension
>
> Base type: [VocabularyKey](xref:HV_File_vocab#VocabularyKey)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> description|string|0|1|This is a description of the vocabulary being returned.|This is a text description of the vocabulary returned by the system as a part of vocabulary key information.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='VocabularyCodeSet'></a>
>
> ### VocabularyCodeSet
>
> Contains information about a vocabulary along with items belonging to that vocabulary.
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> attribute||optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|string|1|1|The name of the referenced vocabulary.|
> family|string|1|1|The family the referenced vocabulary belongs to.|
> version|string|1|1|The version of the referenced vocabulary.|
> code-item|[VocabularyCodeItem](#VocabularyCodeItem)|0|unbounded|A list of vocabulary items belonging to a vocabulary.|This is the full list of items in the vocabulary for a GetVocabulary call, and a list of matching items for a SearchVocabulary call.
> is-vocab-truncated|boolean|0|1|Indicates if list of vocabulary items in the vocabulary has been truncated.|HealthVault only returns a maximum number of vocabulary items indicated by the configuration.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='VocabularyCodeItem'></a>
>
> ### VocabularyCodeItem
>
> Describes an indivdual code item.
>
> A code item is a unit member of a vocabulary.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> code-value|string|1|1|This is the value associated with the item which uniquely identifies it within a vocabulary.|
> display-text|string|0|1|This is the display text of the item.|
> abbreviation-text|string|0|1|This is the abbreviation text of an item.|
> info-xml|[InfoXml](#InfoXml)|0|1|Contains important auxillary information that can be used for operations such as unit conversions.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='InfoXml'></a>
>
> ### InfoXml
>
> Contains important auxillary information that can be used for operations such as unit conversions.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Any||1|1|Code item specific blob that contains auxillary information about the code item.|This can be for instance, information on how to convert a value from one measurement unit to another, or nutritional information of a food item.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='vocabulary-mapping-item'></a>
>
> ### vocabulary-mapping-item
>
> Defines a single mapping from one vocabulary to another.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> reference-id|[coded-value](xref:HV_File_types#coded-value)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='vocabulary-mapping'></a>
>
> ### vocabulary-mapping
>
> Defines a collection of mappings from one vocabulary to another.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> vocabulary-mapping-item|[vocabulary-mapping-item](#vocabulary-mapping-item)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='vocabulary-synonym'></a>
>
> ### vocabulary-synonym
>
> Defines a single vocabulary synonym.
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> term|string|required|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='vocabulary-synonyms'></a>
>
> ### vocabulary-synonyms
>
> Defines a collection of vocabulary synonyms.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> vocabulary-synonym|[vocabulary-synonym](#vocabulary-synonym)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='medication-strength'></a>
>
> ### medication-strength
>
> The strength of the medication is how much drug a specific unit of a medication contains.
>
> For example, Tylenol 500 MG Tablet, 500 MG is the name.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> display-text|[stringnz](xref:HV_File_types#stringnz)|1|1|The display text of the medication strength.|
> value|[stringnz](xref:HV_File_types#stringnz)|0|1|The value of the strength.|
> unit|[codable-value](xref:HV_File_types#codable-value)|0|1|The unit of the strength.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='medication-routes'></a>
>
> ### medication-routes
>
> The routes of a medication.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> route|[codable-value](xref:HV_File_types#codable-value)|1|unbounded|The route of the medication.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='drug-info'></a>
>
> ### drug-info
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> strength|[medication-strength](#medication-strength)|0|unbounded|The strength of the medication.|
> routes|[medication-routes](#medication-routes)|0|1|The routes of the medication.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='VocabularyAuthorizations'></a>
>
> ### VocabularyAuthorizations
>
> A representation of a group of vocabularies, that an application is authorized to use.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> vocabulary-authorization|[VocabularyAuthorization](#VocabularyAuthorization)|1|unbounded|The vocabulary family that the vocabulary belongs to.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='VocabularyAuthorization'></a>
>
> ### VocabularyAuthorization
>
> A representation of a single vocabulary or a family of vocabularies, that an application is authorized to use.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> family|[stringnz](xref:HV_File_types#stringnz)|1|1|The family of vocabularies, that the specified vocabulary belongs to.|
> name|[stringnz](xref:HV_File_types#stringnz)|0|1|The family of vocabularies, that the specified vocabulary belongs to.|
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/vocab.xsd)
[!code-xml[XSD schema](../xsd/vocab.xsd)]
