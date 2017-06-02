---
uid: HV_3d34d87e-7fc1-4153-800f-f56592cb0d17
title: Weight
---

# Weight

## Overview

Property|Value
---|---
id|3d34d87e-7fc1-4153-800f-f56592cb0d17
name|Weight
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Weight](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.weight)
- [Microsoft.HealthVault.ItemTypes.Weight](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.weight)

## Related data types

- [Body composition](xref:HV_18adc276-5144-4e7e-bf6c-e56d8250adf8)
- [Body dimension](xref:HV_dd710b31-2b6f-45bd-9552-253562b9a7c1)
- [Calorie guideline](xref:HV_d3170d30-a41b-4bde-a116-87698c8a001a)
- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
- [Height](xref:HV_40750a6a-89b2-455c-bd8d-b420a4cb500b)
- [Vital signs](xref:HV_73822612-C15F-4B49-9E65-6AF369E55C65)
- [Weight goal](xref:HV_b7925180-d69e-48fa-ae1d-cb3748ca170e)

## Related articles

- [Weights, Measurements and Display Values](http://go.microsoft.com/fwlink/?LinkId=513265)

## Details
A single weight measurement.

<a name='weight'></a>

### Root element: weight

A single weight measurement.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|date-time|1|1|The date and time the weight measurement occurred.|
value|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|1|1|The value of the weight measurement.|

## Example
[!code-xml[Example](sample-xml/3d34d87e-7fc1-4153-800f-f56592cb0d17.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/weight.xsd)
[!code-xml[XSD schema](xsd/weight.xsd)]
