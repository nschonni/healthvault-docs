---
uid: HV_d3170d30-a41b-4bde-a116-87698c8a001a
title: Calorie guideline
---

# Calorie guideline

## Overview

Property|Value
---|---
id|d3170d30-a41b-4bde-a116-87698c8a001a
name|Calorie guideline
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.CalorieGuideline](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.calorieguideline)
- [Microsoft.HealthVault.ItemTypes.CalorieGuideline](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.calorieguideline)

## Related data types

- [Daily dietary intake](xref:HV_9c29c6b9-f40e-44ff-b24e-fba6f3074638)
- [Food & drink](xref:HV_089646a6-7e25-4495-ad15-3e28d4c1a71d)
- [Height](xref:HV_40750a6a-89b2-455c-bd8d-b420a4cb500b)
- [Weight goal](xref:HV_b7925180-d69e-48fa-ae1d-cb3748ca170e)
- [Weight](xref:HV_3d34d87e-7fc1-4153-800f-f56592cb0d17)

## Details
Examples: Daily calories suggested for weight loss, calories needed for weight maintenance, BMR.

<a name='calorie-guideline'></a>

### Root element: calorie-guideline

Stores suggested calorie intake guidelines.

Examples: Daily calories suggested for weight loss, calories needed for weight maintenance, BMR.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|approx-date-time|1|1|Date and time the guidelines were created.||
name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|Defines the guideline.|Examples: Maintain weight, Lose weight slowly, Gain weight slowly, Basal metabolic rate (BMR).|[calorie-guideline-names](xref:HV_1316425f-565b-43ee-9b67-55a11c6a0ec0)
calories|[general-measurement](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#general-measurement)|1|1|The number of calories to support the guideline.|This value expresses the number of calories for a specific time period. <br /> For example, 2716 calories per day could be coded as follows: <br /><br /> Display = "2716 calories/day" <br /> Structured Value = "2716" <br /> Structured Units = "calories-per-day" <br /><br /> using the calorie-guideline-units vocabulary.|[calorie-guideline-units](xref:HV_5ecab77d-971e-4859-bf63-49098dd35020)

## Example
[!code-xml[Example](sample-xml/d3170d30-a41b-4bde-a116-87698c8a001a.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/calorie-guideline.xsd)
[!code-xml[XSD schema](xsd/calorie-guideline.xsd)]
