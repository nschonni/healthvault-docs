---
uid: HV_0A5F9A43-DC88-4E9F-890F-1F9159B76E7B
title: Procedure
---

# Procedure

## Overview

Property|Value
---|---
id|0A5F9A43-DC88-4E9F-890F-1F9159B76E7B
name|Procedure
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Old.ProcedureV1](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.old.procedurev1)

## Related data types

- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)

## Details
Note: Please use the new version of this data type instead of this version. <br /> This thing type describes the procedure results of a person.

<a name='procedure'></a>

### Root element: procedure

Information related to a procedure.

Note: Please use the new version of this data type instead of this version. <br /> This thing type describes the procedure results of a person.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time the procedure.|
title|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Title of medical procedure.|
primary-provider|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|Primary provider for a medical procedure.|
anatomic-location|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Anatomic location of the medical procedure.|
secondary-provider|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|Secondary provider for a medical procedure.|

## Example
[!code-xml[Example](../sample-xml/0A5F9A43-DC88-4E9F-890F-1F9159B76E7B.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/procedure.1.xsd)
[!code-xml[XSD schema](../xsd/procedure.1.xsd)]
