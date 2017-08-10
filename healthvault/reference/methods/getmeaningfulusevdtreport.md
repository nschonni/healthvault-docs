---
uid: HV_File_getmeaningfulusevdtreport
title: GetMeaningfulUseVDTReport
---

# GetMeaningfulUseVDTReport

## Request Overview

Gets the Meaningful Use VDT Report for an application.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
filters|[Filters](xref:HV_File_meaningful-use#Filters)|1|1|Specifies filters for the report data to be returned.|
max-items-per-page|positiveInteger|0|1|The maximum number of items to return on a given page.|If unspecified, this value will default to MaxMeaningfulUseReportItemsPerRetrieval. If specified value is larger than the MaxMeaningfulUseReportItemsPerRetrieval value, MaxMeaningfulUseReportItemsPerRetrieval value will be used.
cursor|[stringnz](xref:HV_File_types#stringnz)|0|1|If paging has occurred, this will be passed back in from the original request response as a key for next retrieval page of items.|

## Response Overview

Specifies the schema for the GetMeaningfulUseVDTReport method response.

## Response Details

<a name='info'></a>

### Root element: info

Contains the response of the GetMeaningfulUseVDTReport method request.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
sources|[Sources](#Sources)|1|1|A list of qualified Meaningful Use activities associated with specified sources.|
cursor|[stringnz](xref:HV_File_types#stringnz)|0|1|If paging has occurred, this will be returned as a key for the next retrieval item.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Activity'></a>
>
> ### Activity
>
> A Meaningful Use activity.
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> patient-id|[stringnz](xref:HV_File_types#stringnz)|required|||
> organization-id|[stringnz](xref:HV_File_types#stringnz)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Activities'></a>
>
> ### Activities
>
> A list of qualified Meaningful Use activities associated with specified source.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> activity|[Activity](#Activity)|1|unbounded|A Meaningful Use activity.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Source'></a>
>
> ### Source
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
> patient-activities|[Activities](#Activities)|1|1|A list of qualified Meaningful Use activities associated with specified source.|
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
> source|[Source](#Source)|0|unbounded|A list of qualified Meaningful Use activities associated with specified source.|
>
>

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-getmeaningfulusevdtreport.xsd)
[!code-xml[XSD schema](../xsd/method-getmeaningfulusevdtreport.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getmeaningfulusevdtreport.xsd)
[!code-xml[XSD schema](../xsd/response-getmeaningfulusevdtreport.xsd)]
