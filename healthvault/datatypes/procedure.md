---
uid: HV_df4db479-a1ba-42a2-8714-2b083b88150f
title: Procedure
---

# Procedure

## Overview

Property|Value
---|---
id|df4db479-a1ba-42a2-8714-2b083b88150f
name|Procedure
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Procedure](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.procedure)
- [Microsoft.HealthVault.ItemTypes.Procedure](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.procedure)

## Related data types

- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)

## Details
A medical procedure and results.

<a name='procedure'></a>

### Root element: procedure

Information related to a procedure.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|approx-date-time|0|1|The date and time the procedure.|
name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|Name of the medical procedure.|
anatomic-location|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Anatomic location of the medical procedure.|
primary-provider|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|Primary provider for a medical procedure.|
secondary-provider|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|Secondary provider for a medical procedure.|

## Example
[!code-xml[Example](sample-xml/df4db479-a1ba-42a2-8714-2b083b88150f.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/procedure.xsd)
[!code-xml[XSD schema](xsd/procedure.xsd)]
