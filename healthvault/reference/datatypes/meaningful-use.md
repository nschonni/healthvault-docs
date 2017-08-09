---
uid: HV_File_meaningful-use
title: MeaningfulUse
---

# MeaningfulUse

## Overview

Property|Value
---|---
id|File_meaningful-use
name|MeaningfulUse
immutable|
singleton|
allow-readonly|
effective date XPath|

## Details

<a name=''></a>

### Root element:
 Type:

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DateFilter'></a>
>
> ### DateFilter
>
> Specifies date filters for the report data to be returned.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> min-date|dateTime|1|1|The minimum date.|
> max-date|dateTime|1|1|The maximum date.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DocumentFilter'></a>
>
> ### DocumentFilter
>
> Specifies filters for the report data to be returned.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> reporting-period|[DateFilter](#DateFilter)|1|1|Specifies the reporting period date range.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DopuDocumentFilter'></a>
>
> ### DopuDocumentFilter
>
> Specifies filters for the DOPU report data to be returned.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> available-date-filter|[DateFilter](#DateFilter)|1|1|Specifies the available date range.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Filters'></a>
>
> ### Filters
>
> Specifies filters for the report data to be returned.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> reporting-period|[DateFilter](#DateFilter)|1|1|Specifies the reporting period date range.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DataTextFormat'></a>
>
> ### DataTextFormat
>
> Meaningful use report data in delimited text format.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> column-definition|string|1|1|Report data columns header row.|
> data|string|1|1|Report data in flat delimited text format.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Action'></a>
>
> ### Action
>
> A list of acceptable Meaningful Use actions a user can perform on their health information.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|None|The user has performed no trackable meaningful use action on their health information.|
> enumeration|View|The user has performed "View" action on their health information.|
> enumeration|Download|The user has performed "Download" action on their health information.|
> enumeration|Transmit|The user has performed "Transmit" action on their health information.|
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/meaningful-use.xsd)
[!code-xml[XSD schema](../xsd/meaningful-use.xsd)]
