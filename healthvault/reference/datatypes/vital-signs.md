---
uid: HV_73822612-C15F-4B49-9E65-6AF369E55C65
title: Vital signs
---

# Vital signs

## Overview

Property|Value
---|---
id|73822612-C15F-4B49-9E65-6AF369E55C65
name|Vital signs
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.VitalSigns](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.vitalsigns)
- [Microsoft.HealthVault.ItemTypes.VitalSigns](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.vitalsigns)

## Related data types

- [Blood oxygen saturation](xref:HV_3a54f95f-03d8-4f62-815f-f691fc94a500)
- [Blood pressure](xref:HV_ca3c57f4-f4c1-4e15-be67-0a3caf5414ed)
- [Body dimension](xref:HV_dd710b31-2b6f-45bd-9552-253562b9a7c1)
- [Cardiac profile](xref:HV_adaf49ad-8e10-49f8-9783-174819e97051)
- [Cholesterol](xref:HV_98f76958-e34f-459b-a760-83c1699add38)
- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
- [Heart rate](xref:HV_b81eb4a6-6eac-4292-ae93-3872d6870994)
- [Height](xref:HV_40750a6a-89b2-455c-bd8d-b420a4cb500b)
- [Peak flow](xref:HV_5d8419af-90f0-4875-a370-0f881c18f6b3)
- [Respiratory profile](xref:HV_5fd15cb7-b717-4b1c-89e0-1dbcf7f815dd)
- [Weight](xref:HV_3d34d87e-7fc1-4153-800f-f56592cb0d17)

## Details
This thing type describes the vital signs of a person.

<a name='vital-signs'></a>

### Root element: vital-signs

Information related to vital signs.

This thing type describes the vital signs of a person.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time for the vital signs.|
vital-signs-results|[vital-sign-result-type](#vital-sign-result-type)|0|unbounded|Vital sign results.|
site|string|0|1|Site for vital sign.|
position|string|0|1|Position of vital sign.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='vital-sign-result-type'></a>
>
> ### vital-sign-result-type
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> title|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|Clinical name for vital sign.||[vital-statistics](xref:HV_7ef5d19f-f4a1-4237-a3c3-3da051f155e3)
> value|double|0|1|Result value.||
> unit|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Result value unit.||[lab-results-units](xref:HV_2149be34-4120-4262-baac-d8a0c22e47fd)
> reference-minimum|double|0|1|Reference minimum value.||
> reference-maximum|double|0|1|Reference maximum value.||
> text-value|string|0|1|Free form textual content of result.||
> flag|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Flag for result.||[lab-result-flag](xref:HV_d1c10af5-c237-40ed-9a9c-318361bb8a5a)
>
>

## Example
[!code-xml[Example](../sample-xml/73822612-C15F-4B49-9E65-6AF369E55C65.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/vital-signs.xsd)
[!code-xml[XSD schema](../xsd/vital-signs.xsd)]
