---
uid: HV_3a54f95f-03d8-4f62-815f-f691fc94a500
title: Blood oxygen saturation
---

# Blood oxygen saturation

## Overview

Property|Value
---|---
id|3a54f95f-03d8-4f62-815f-f691fc94a500
name|Blood oxygen saturation
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.BloodOxygenSaturation](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.bloodoxygensaturation)
- [Microsoft.HealthVault.ItemTypes.BloodOxygenSaturation](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.bloodoxygensaturation)

## Related data types

- [Aerobic profile](xref:HV_7b2ea78c-4b78-4f75-a6a7-5396fe38b09a)
- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
- [Heart rate](xref:HV_b81eb4a6-6eac-4292-ae93-3872d6870994)
- [Vital signs](xref:HV_73822612-C15F-4B49-9E65-6AF369E55C65)

## Details
The percentage of oxygen saturation in the blood.

<a name='blood-oxygen-saturation'></a>

### Root element: blood-oxygen-saturation

Percentage of oxygen saturation in the blood.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|date-time|1|1|The date and time of this measurement.||
value|[percentage](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#percentage)|1|1|The measured blood oxygen saturation percentage.||
measurement-method|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The technique used to obtain the measurement.||[blood-oxygen-saturation-measurement-method](xref:HV_450154a2-b4ad-40bb-9e2e-7e6ac8389ab0)
measurement-flags|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Additional information about the measurement.|Examples: Incomplete measurement, irregular heartbeat.|Contact the HealthVault team to help define this vocabulary.

## Example
[!code-xml[Example](sample-xml/3a54f95f-03d8-4f62-815f-f691fc94a500.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/blood-oxygen-saturation.xsd)
[!code-xml[XSD schema](xsd/blood-oxygen-saturation.xsd)]
