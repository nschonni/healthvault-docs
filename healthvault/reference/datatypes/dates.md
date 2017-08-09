---
uid: HV_File_dates
title: dates
---

# dates

## Overview

Property|Value
---|---
id|File_dates
name|dates
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
> <a name='date'></a>
>
> ### date
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> y|[year](#year)|1|1||
> m|[month](#month)|1|1||
> d|[day](#day)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='approx-date'></a>
>
> ### approx-date
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> y|[year](#year)|1|1||
> m|[month](#month)|0|1||
> d|[day](#day)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='time'></a>
>
> ### time
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> h|[hour](#hour)|1|1||
> m|[minute](#minute)|1|1||
> s|[second](#second)|0|1||
> f|[millisecond](#millisecond)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='date-time'></a>
>
> ### date-time
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> date|[date](#date)|1|1||
> time|[time](#time)|0|1||
> tz|[codable-value](xref:HV_File_types#codable-value)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StructuredApproxDate'></a>
>
> ### StructuredApproxDate
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> date|[approx-date](#approx-date)|1|1||
> time|[time](#time)|0|1||
> tz|[codable-value](xref:HV_File_types#codable-value)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='approx-date-time'></a>
>
> ### approx-date-time
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
> structured|[StructuredApproxDate](#StructuredApproxDate)|1|1||
> descriptive|string|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='year'></a>
>
> ### year
>
> ### Restriction
>
> Base type: [int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minInclusive|1000||
> maxInclusive|9999||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='month'></a>
>
> ### month
>
> ### Restriction
>
> Base type: [int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minInclusive|1||
> maxInclusive|12||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='day'></a>
>
> ### day
>
> ### Restriction
>
> Base type: [int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minInclusive|1||
> maxInclusive|31||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='hour'></a>
>
> ### hour
>
> ### Restriction
>
> Base type: [int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minInclusive|0||
> maxInclusive|23||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='minute'></a>
>
> ### minute
>
> ### Restriction
>
> Base type: [int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minInclusive|0||
> maxInclusive|59||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='second'></a>
>
> ### second
>
> ### Restriction
>
> Base type: [int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minInclusive|0||
> maxInclusive|59||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='millisecond'></a>
>
> ### millisecond
>
> ### Restriction
>
> Base type: [int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minInclusive|0||
> maxInclusive|999||
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/dates.xsd)
[!code-xml[XSD schema](../xsd/dates.xsd)]
