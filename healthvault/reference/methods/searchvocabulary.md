---
uid: HV_File_searchvocabulary
title: SearchVocabulary
---

# SearchVocabulary

## Request Overview

Searches a vocabulary and retrieves code items that match a given search criteria.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
vocabulary-key|[VocabularyKey](xref:HV_File_vocab#VocabularyKey)|0|1|The unique key used to identify the vocabulary to search.|If the vocabulary key is not present to identify a vocabulary, the vocabulary headers are searched. <br></br> If the vocabulary key is present, then the vocabulary name, family and version must identify an existing vocabulary on the system otherwise an INVALID_VOCABULARY error is returned. <br></br> If the family is not specified in the vocabulary key, the system looks for a vocabulary with the specified name in the HealthVault Vocabularies family. <br></br> If the vocabulary version is empty, the latest version of the vocabulary is used in the search.
text-search-parameters|[VocabularySearchParams](#VocabularySearchParams)|1|1|Specifies the text search parameters for the vocabulary search request.|The text search parameters apply to the culture specifed in the request header by language and country. If the country is absent, items for the language are searched. If language is absent, items for the default culture of the system are searched.

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='VocabularySearchParams'></a>
>
> ### VocabularySearchParams
>
> Specifies the text search parameters for the vocabulary search request.
>
> The text search parameters apply to the culture specifed in the request header by language and country. If the country is absent, items for the language are searched. If language is absent, items for the default culture of the system are searched.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> search-string|[VocabularySearchString](#VocabularySearchString)|1|1|The vocabulary search string to use.|
> max-results|positiveInteger|0|1|Specifies the maximum number of vocabularies or vocabulary items to return that match the search criteria.|If this element is absent, the number of returned results is limited to a system configuration value defined as "MaxResultsVocabularyRetrieval" which can be retrived through GetServiceDefinition.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='VocabularySearchString'></a>
>
> ### VocabularySearchString
>
> Type defining a vocabulary search string.
>
> The search string is a culture specific string of characters against which vocabulary items are compared using the specified search mode.
>
> ### Extension
>
> Base type: [string255](xref:HV_File_types#string255)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> search-mode|[string64](xref:HV_File_types#string64)|optional|||
>
>

## Response Overview

Info schema for the response to SearchVocabulary

## Response Details

<a name='info'></a>

### Root element: info

Specifies the schema for the SearchVocabulary method response.

### Choice

Min occurs: 1

Max occurs: 1
### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
vocabulary-key|[VocabularyKeyInfo](xref:HV_File_vocab#VocabularyKeyInfo)|0|unbounded|When searching vocabulary headers, this element contains the list of vocabulary key infos for vocabularies matching the search criteria.|This element is absent no matching vocabularies were found.
code-set-result|[VocabularyCodeSet](xref:HV_File_vocab#VocabularyCodeSet)|1|1|When searching a specific vocabulary, this element contains the list of code items matching the search criteria, along with the vocabulary that was searched.|The code-item member is absent if no matches were found.

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-searchvocabulary.xsd)
[!code-xml[XSD schema](../xsd/method-searchvocabulary.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-searchvocabulary.xsd)
[!code-xml[XSD schema](../xsd/response-searchvocabulary.xsd)]
