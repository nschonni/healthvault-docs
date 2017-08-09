---
uid: HV_464083cc-13de-4f3e-a189-da8e47d5651b
title: Encounter
---

# Encounter

## Overview

Property|Value
---|---
id|464083cc-13de-4f3e-a189-da8e47d5651b
name|Encounter
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Encounter](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.encounter)
- [Microsoft.HealthVault.ItemTypes.Encounter](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.encounter)

## Related data types

- [Condition](xref:HV_7ea7a1f9-880b-4bd4-b593-f5660f20eda8)
- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)

## Details
This thing type describes the medical encounter a person has.

<a name='encounter'></a>

### Root element: encounter

Information related to a medical encounter.

This thing type describes the medical encounter a person has.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|0|1|The date and time of the medical encounter.|
type|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The type of medical encounter.|
reason|string|0|1|The description of the encounter.|Examples include heart failure, broken leg, or annual physical.
duration|[duration-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#duration-value)|0|1|The duration of the medical encounter.|
consent-granted|boolean|0|1|Did the person grant consent for this encounter?|
facility|[Organization](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#Organization)|0|1|The facility where the encounter occurred.|

## Example
[!code-xml[Example](../sample-xml/464083cc-13de-4f3e-a189-da8e47d5651b.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/encounter.xsd)
[!code-xml[XSD schema](../xsd/encounter.xsd)]
