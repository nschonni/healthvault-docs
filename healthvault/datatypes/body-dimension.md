---
uid: HV_dd710b31-2b6f-45bd-9552-253562b9a7c1
title: Body dimension
---

# Body dimension

## Overview

Property|Value
---|---
id|dd710b31-2b6f-45bd-9552-253562b9a7c1
name|Body dimension
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.BodyDimension](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.bodydimension)
- [Microsoft.HealthVault.ItemTypes.BodyDimension](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.bodydimension)

## Related data types

- [Body composition](xref:HV_18adc276-5144-4e7e-bf6c-e56d8250adf8)
- [Height](xref:HV_40750a6a-89b2-455c-bd8d-b420a4cb500b)
- [Vital signs](xref:HV_73822612-C15F-4B49-9E65-6AF369E55C65)
- [Weight](xref:HV_3d34d87e-7fc1-4153-800f-f56592cb0d17)

## Details
Examples: Waist size, head circumference, length (pediatric).

<a name='body-dimension'></a>

### Root element: body-dimension

Stores a body dimension.

Examples: Waist size, head circumference, length (pediatric).

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|approx-date-time|1|1|The date and time of the measurement.||
measurement-name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The name of the measurement.|Choose the appropriate preferred vocabulary based on your scenario.|[body-dimension-measurement-names](xref:HV_85be6dac-f037-4bb1-811e-7eb55e4ddd26), [body-dimension-measurement-names-pediatric](xref:HV_e8835e34-5168-4131-9c3b-35b81cee6d56)
value|[length-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#length-value)|1|1|The value of the measurement.||

## Example
[!code-xml[Example](sample-xml/dd710b31-2b6f-45bd-9552-253562b9a7c1.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/body-dimension.xsd)
[!code-xml[XSD schema](xsd/body-dimension.xsd)]
