---
uid: HV_File_getvocabulary
title: GetVocabulary
---

# GetVocabulary

## Request Overview

Gets the code items associated with a vocabulary.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
vocabulary-parameters|[VocabularyParameters](#VocabularyParameters)|0|1|Optional parameter containing the information necessary to request for a specific vocabulary.|If vocabulary parameters are present they are used to get specific vocabularies in the system. If they are absent a list of key information for all the vocabularies in the system is returned.

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='VocabularyParameters'></a>
>
> ### VocabularyParameters
>
> The parameters necessary to request for a particular vocabulary.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> vocabulary-key|[VocabularyKey](xref:HV_File_vocab#VocabularyKey)|1|unbounded|The unique key used to identify the vocabulary.|If the family is not specified in the vocabulary key, the system looks for a vocabulary with the specified name in the HealthVault Vocabularies family. If the version is not specified in the vocabulary key, the system returns the most current version of the vocabulary.
> fixed-culture|boolean|1|1|If fixed-culture is set to false, the platform shall look for the vocabulary items for the culture info specified in the request header. If items are not found for the specified culture, items for the default fallback culture are returned. If fixed-culture is set to true, fallback will not occur and if items are not found for the specified culture empty strings will be returned.|
>
>

## Response Overview

Info schema for the response to GetVocabulary

## Response Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Choice

Min occurs: 1

Max occurs: 1
### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
vocabulary|[VocabularyCodeSet](xref:HV_File_vocab#VocabularyCodeSet)|1|unbounded|List of vocabularies with their detailed information include the actual code items|
vocabulary-key|[VocabularyKeyInfo](xref:HV_File_vocab#VocabularyKeyInfo)|1|unbounded|List of vocabularies|

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-getvocabulary.xsd)
[!code-xml[XSD schema](../xsd/method-getvocabulary.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getvocabulary.xsd)
[!code-xml[XSD schema](../xsd/response-getvocabulary.xsd)]
