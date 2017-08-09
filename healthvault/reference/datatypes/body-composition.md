---
uid: HV_18adc276-5144-4e7e-bf6c-e56d8250adf8
title: Body composition
---

# Body composition

## Overview

Property|Value
---|---
id|18adc276-5144-4e7e-bf6c-e56d8250adf8
name|Body composition
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.BodyComposition](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.bodycomposition)
- [Microsoft.HealthVault.ItemTypes.BodyComposition](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.bodycomposition)

## Related data types

- [Body dimension](xref:HV_dd710b31-2b6f-45bd-9552-253562b9a7c1)
- [Height](xref:HV_40750a6a-89b2-455c-bd8d-b420a4cb500b)
- [Weight](xref:HV_3d34d87e-7fc1-4153-800f-f56592cb0d17)

## Details
Examples: % body fat, lean muscle mass.

<a name='body-composition'></a>

### Root element: body-composition

Information about the body composition of the record owner.

Examples: % body fat, lean muscle mass.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|[approx-date-time](xref:HV_File_dates#approx-date-time)|1|1|Date and time of the measurement.||
measurement-name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The name of the measurement.|Examples: Body fat, lean muscle.|[body-composition-measurement-names](xref:HV_be4a495d-6f7c-4e02-bbba-6f31afc9f995)
value|[BodyCompositionValue](#BodyCompositionValue)|1|1|The value of the measurement.||
measurement-method|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The technique used to obtain the measurement.|Examples: Bioelectrical impedance, DXA, Skinfold (calipers).|[body-composition-measurement-methods](xref:HV_6a8c22d1-545a-463b-8d0e-d26a666d536b)
site|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The body part that is the subject of the measurement.|Examples: Left arm, head, torso. <br /> If site is absent the measurement is for the whole body.|[body-composition-sites](xref:HV_85e4ad3e-a0c6-4a0c-ac52-682e896202c9)

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='BodyCompositionValue'></a>
>
> ### BodyCompositionValue
>
> A single measurement of body composition.
>
> The mass-value element is used to store mass values, and the percentage-value is used to store percentages. An application should set one or the other. When both values are available, they should be stored in separate instances.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> mass-value|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|A body composition measurement stored as a mass.|Examples: 45 Kg, 15 lbs.
> percent-value|[percentage](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#percentage)|0|1|A body composition measurement stored as a percentage.|Examples: 0.37 (37%), 0.075 (7.5%).
>
>

## Example
[!code-xml[Example](../sample-xml/18adc276-5144-4e7e-bf6c-e56d8250adf8.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/body-composition.xsd)
[!code-xml[XSD schema](../xsd/body-composition.xsd)]
