---
uid: HV_9c29c6b9-f40e-44ff-b24e-fba6f3074638
title: Daily dietary intake
---

# Daily dietary intake

## Overview

Property|Value
---|---
id|9c29c6b9-f40e-44ff-b24e-fba6f3074638
name|Daily dietary intake
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.DietaryDailyIntake](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.dietarydailyintake)
- [Microsoft.HealthVault.ItemTypes.DietaryDailyIntake](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.dietarydailyintake)

## Related data types

- [Calorie guideline](xref:HV_d3170d30-a41b-4bde-a116-87698c8a001a)
- [Cholesterol](xref:HV_98f76958-e34f-459b-a760-83c1699add38)
- [Food & drink](xref:HV_089646a6-7e25-4495-ad15-3e28d4c1a71d)
- [Meal definition](xref:HV_074e122a-335a-4a47-a63d-00a8f3e79e60)

## Details
The amount of dietary nutrients and minerals consumed in a day.

<a name='dietary-intake-daily'></a>

### Root element: dietary-intake-daily

The amount of dietary nutrients and minerals consumed in a day.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[date](xref:HV_File_dates#date)|1|1|The date of consumption.|
calories|[positiveInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveInt)|0|1|The amount of calories consumed in the day.|Calories are measured in kilocalories (kCal).
total-fat|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The total amount of fat consumed in the day.|Fat is usually measured in grams (g).
saturated-fat|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The total amount of saturated fat consumed in the day.|Fat is usually measured in grams (g).
trans-fat|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The total amount of trans fat consumed in the day.|Fat is usually measured in grams (g).
protein|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of protein consumed in the day.|Protein is usually measured in grams (g).
total-carbohydrates|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of carbohydrates consumed in the day.|Carbohydrates are usually measured in grams (g).
dietary-fiber|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of dietary fiber consumed in the day.|Dietary fiber is usually measured in grams (g).
sugars|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of sugars consumed in the day.|Sugar is usually measured in grams (g).
sodium|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of sodiam consumed in the day.|Sodium is usually measured in milligrams (mg).
cholesterol|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of cholesterol consumed in the day.|Cholesterol is usually measured in milligrams (mg).

## Example
[!code-xml[Example](../sample-xml/9c29c6b9-f40e-44ff-b24e-fba6f3074638.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/dietary-intake-daily.xsd)
[!code-xml[XSD schema](../xsd/dietary-intake-daily.xsd)]
