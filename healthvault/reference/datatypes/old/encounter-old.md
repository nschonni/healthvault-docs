---
uid: HV_3D4BDF01-1B3E-4AFC-B41C-BD3E641A6DA7
title: Encounter
---

# Encounter

## Overview

Property|Value
---|---
id|3D4BDF01-1B3E-4AFC-B41C-BD3E641A6DA7
name|Encounter
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Old.EncounterV1](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.old.encounterv1)

## Related data types

- [Condition](xref:HV_7ea7a1f9-880b-4bd4-b593-f5660f20eda8)
- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)

## Details
Note: Please use the new version of this data type instead of this version. <br /> This thing type describes the medical encounter a person has.

<a name='encounter'></a>

### Root element: encounter

Information related to a medical encounter.

Note: Please use the new version of this data type instead of this version. <br /> This thing type describes the medical encounter a person has.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time the medical encounter.|
type|string|1|1|The type of medical encounter.|
id|string|0|1|The identify for the medical encounter.|
duration|[duration-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#duration-value)|0|1|The duration of the medical encounter.|
location|[address](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#address)|0|1|The location of the medical encounter .|
consent-granted|boolean|0|1|Boolean consent for medical encounter.|

## Example
[!code-xml[Example](../../sample-xml/3D4BDF01-1B3E-4AFC-B41C-BD3E641A6DA7.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../../xsd/encounter-old.xsd)
[!code-xml[XSD schema](../../xsd/encounter-old.xsd)]
