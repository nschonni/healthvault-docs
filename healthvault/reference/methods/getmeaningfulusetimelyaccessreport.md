---
uid: HV_File_getmeaningfulusetimelyaccessreport
title: GetMeaningfulUseTimelyAccessReport
---

# GetMeaningfulUseTimelyAccessReport

## Request Overview

Gets the Meaningful Use Timely Access Report for an application.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
max-items-per-page|positiveInteger|0|1|The maximum number of items to return on a given page.|If unspecified, this value will default to MaxMeaningfulUseReportItemsPerRetrieval. If specified value is larger than the MaxMeaningfulUseReportItemsPerRetrieval value, MaxMeaningfulUseReportItemsPerRetrieval value will be used.
cursor|[stringnz](xref:HV_File_types#stringnz)|0|1|If paging has occurred, this will be passed back in from the original request response as a key for next retrieval page of items.|

### Choice

Min occurs: 1

Max occurs: 1
### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
document-filter|[DocumentFilter](xref:HV_File_meaningful-use#DocumentFilter)|1|1|Specifies the filter for document receipt report data.|
dopu-document-filter|[DopuDocumentFilter](xref:HV_File_meaningful-use#DopuDocumentFilter)|1|1|Specifies the filter for DOPU document receipt report data.|

## Response Overview

Specifies the schema for the GetMeaningfulUseTimelyAccessReport method response.

## Response Details

<a name='info'></a>

### Root element: info

Contains the response of the GetMeaningfulUseTimelyAccessReport method request.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
sources|[Sources](#Sources)|1|1|A list of qualified Meaningful Use document receipts associated with specified sources.|
cursor|[stringnz](xref:HV_File_types#stringnz)|0|1|If paging has occurred, this will be returned as a key for the next retrieval item.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Document'></a>
>
> ### Document
>
> A Meaningful Use document receipt.
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> patient-id|[stringnz](xref:HV_File_types#stringnz)|required|||
> organization-id|[stringnz](xref:HV_File_types#stringnz)|optional|||
> event-date|dateTime|required|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> available-date|dateTime|1|1|Specifies the available date of the document to the user.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DopuDocument'></a>
>
> ### DopuDocument
>
> A Meaningful Use DOPU document activity.
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> package-id|[stringnz](xref:HV_File_types#stringnz)|required|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> available-date|dateTime|1|1|Specifies the available date of the document to the user.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Documents'></a>
>
> ### Documents
>
> A list of qualified Meaningful Use document receipts associated with specified source.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> document-receipt|[Document](#Document)|1|unbounded|A Meaningful Use document receipt.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DopuDocuments'></a>
>
> ### DopuDocuments
>
> A list of qualified Meaningful Use DOPU package receipts associated with specified source.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> dopu-document-receipt|[DopuDocument](#DopuDocument)|1|unbounded|A Meaningful Use DOPU document receipt.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DocumentSource'></a>
>
> ### DocumentSource
>
> A Meaningful Use source.
>
> Source is either the id of the application that contributed to the data or the email domain of the Direct sender.
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> id|[stringnz](xref:HV_File_types#stringnz)|required|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
>
> ### Choice
>
> Min occurs: 1
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> document-receipts|[Documents](#Documents)|1|1|A list of qualified Meaningful Use document receipts associated with specified source.|
> dopu-document-receipts|[DopuDocuments](#DopuDocuments)|1|1|A list of qualified Meaningful Use DOPU document receipts associated with specified source.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Sources'></a>
>
> ### Sources
>
> A list of sources.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> source|[DocumentSource](#DocumentSource)|0|unbounded|A list of qualified Meaningful Use document receipts associated with specified source.|
>
>

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-getmeaningfulusetimelyaccessreport.xsd)
[!code-xml[XSD schema](../xsd/method-getmeaningfulusetimelyaccessreport.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getmeaningfulusetimelyaccessreport.xsd)
[!code-xml[XSD schema](../xsd/response-getmeaningfulusetimelyaccessreport.xsd)]
