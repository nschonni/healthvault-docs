---
uid: HV_5d8419af-90f0-4875-a370-0f881c18f6b3
title: Peak flow
---

# Peak flow

## Overview

Property|Value
---|---
id|5d8419af-90f0-4875-a370-0f881c18f6b3
name|Peak flow
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.PeakFlow](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.peakflow)
- [Microsoft.HealthVault.ItemTypes.PeakFlow](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.peakflow)

## Related data types

- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
- [Respiratory profile](xref:HV_5fd15cb7-b717-4b1c-89e0-1dbcf7f815dd)
- [Vital signs](xref:HV_73822612-C15F-4B49-9E65-6AF369E55C65)

## Details
Peak flow measures are typically collected on a daily basis by patients to track their lung function.

<a name='peak-flow'></a>

### Root element: peak-flow

A peak flow measurement.

Peak flow measures are typically collected on a daily basis by patients to track their lung function.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|approx-date-time|1|1|The date and time of the measurement.||
pef|[flow-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#flow-value)|0|1|The peak expiratory flow, measured in liters/second.||
fev1|[volume-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#volume-value)|0|1|The forced expiratory volume in one second, measured in liters.||
fev6|[volume-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#volume-value)|0|1|The forced expiratory volume in six seconds, measured in liters.||
measurement-flags|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|unbounded|Additional information about the measurement.|Examples: Incomplete measurement.|Contact the HealthVault team to help define this vocabulary.

## Example
[!code-xml[Example](sample-xml/5d8419af-90f0-4875-a370-0f881c18f6b3.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/peak-flow.xsd)
[!code-xml[XSD schema](xsd/peak-flow.xsd)]
