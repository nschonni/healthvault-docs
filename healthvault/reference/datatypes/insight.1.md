---
uid: HV_5d15b7bc-0499-4dc4-8df7-ef1a2332cfb5
title: Insight
---

# Insight

## Overview

Property|Value
---|---
id|5d15b7bc-0499-4dc4-8df7-ef1a2332cfb5
name|Insight
immutable|True
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Insight](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.insight)
- [Microsoft.HealthVault.ItemTypes.Insight](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.insight)

## Details
A single instance of health insight.

<a name='insight'></a>

### Root element: insight

Defines an insight raised for a user.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
raised-insight-id|[string128nw](xref:HV_File_types#string128nw)|1|1|Unique id of this insight instance.|
catalog-id|[string128nw](xref:HV_File_types#string128nw)|1|1|Id of the catalog item for this insight.|
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time the insight was created.|
expiration-date|[date-time](xref:HV_File_dates#date-time)|1|1|Date when the insight expires.|
channel|[string128nw](xref:HV_File_types#string128nw)|0|1|Shows what does this Insight impact. For example sleep or activity etc.|
algo-class|[string128nw](xref:HV_File_types#string128nw)|0|1|Represents the algorithm class used to create this Insight.|
directionality|[string128nw](xref:HV_File_types#string128nw)|0|1|Represents which way the Insight is trending. For example positive, negative or neutral.|
time-span-pivot|[string128nw](xref:HV_File_types#string128nw)|0|1|Represents the aggregation time span of the data. For example, data is aggregated weekly or daily.|
comparison-pivot|[string128nw](xref:HV_File_types#string128nw)|0|1|Represents how the user was compared for deriving this Insight. Example with themselves or people similar to the user.|
tone-pivot|[string128nw](xref:HV_File_types#string128nw)|0|1|Represents the tone of the Insight, like better or worse.|
scope-pivot|[string128nw](xref:HV_File_types#string128nw)|0|1|Represents the scope of the Insight. For example, for a specific event or event types.|
data-used-pivot|[DataUsed](#DataUsed)|0|1|Represents a list of data types used as input to the insight calculation.|
annotation|string|0|1|Describes how we got to this conclusion and why this Insight is relevant to the user.|
strength|[positiveDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveDouble)|0|1|Represents the strength of the data used for calculating the Insights.|
confidence|[positiveDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveDouble)|0|1|Confidence level of our result.|
origin|[string128nw](xref:HV_File_types#string128nw)|0|1|Where was this insight generated.|
tags|[InsightTags](#InsightTags)|0|1|Tags associated with this insight. Can be used by clients for grouping, filtering etc.|
values|[StructuredInsightValues](#StructuredInsightValues)|0|1|Values associated with the insight message. Each value will be a parameter to a format string.|
links|[StructuredInsightValues](#StructuredInsightValues)|0|1|List of actions associated with this insight.|
messages|[InsightMessages](#InsightMessages)|0|1|Collection of message strings associated with this Insight.|
attribution|[InsightAttribution](#InsightAttribution)|0|1|Attribution related information for this Insight.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DataUsed'></a>
>
> ### DataUsed
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> data-used|string|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='InsightTags'></a>
>
> ### InsightTags
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> tag|[string1024nw](xref:HV_File_types#string1024nw)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StructuredInsightValue'></a>
>
> ### StructuredInsightValue
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> key|string|1|1||
> value|anyType|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StructuredInsightValues'></a>
>
> ### StructuredInsightValues
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> value|[StructuredInsightValue](#StructuredInsightValue)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='InsightAttribution'></a>
>
> ### InsightAttribution
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|[stringnz256](xref:HV_File_types#stringnz256)|1|1|Name of the source, this insight is attributed to.|
> attribution-required|boolean|0|1|If attribution needs to be mentioned on the apps for this source.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='InsightMessages'></a>
>
> ### InsightMessages
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> regular|string|0|1|Regular sized message string.|
> short|string|0|1|Short message string.|
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/insight.1.xsd)
[!code-xml[XSD schema](../xsd/insight.1.xsd)]
