---
uid: HV_7ea7a1f9-880b-4bd4-b593-f5660f20eda8
title: Condition
---

# Condition

## Overview

Property|Value
---|---
id|7ea7a1f9-880b-4bd4-b593-f5660f20eda8
name|Condition
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Condition](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.condition)
- [Microsoft.HealthVault.ItemTypes.Condition](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.condition)

## Related data types

- [Concern](xref:HV_AEA2E8F2-11DD-4A7D-AB43-1D58764EBC19)
- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Contraindication](xref:HV_046d0ad7-6d7f-4bfd-afd4-4192ca2e913d)
- [Encounter](xref:HV_464083cc-13de-4f3e-a189-da8e47d5651b)
- [Medical problem](xref:HV_5E2C027E-3417-4CFC-BD10-5A6F2E91AD23)

## Related articles

- [Emergency Preparedness](http://go.microsoft.com/fwlink/?LinkId=513260)

## Details
CCR qualifiers and other notes should go in the common/note section of the thing.

<a name='condition'></a>

### Root element: condition

Defines a single health or medical issue/problem.

CCR qualifiers and other notes should go in the common/note section of the thing.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The name or description of the condition.|Codes for the condition may be found in zero or more of the Microsoft Health vocabularies.|
onset-date|approx-date-time|0|1|The date of onset or the first diagnosis.||
status|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The description of the status.|For example, 'acute' or 'chronic'.|condition-occurence
stop-date|approx-date-time|0|1|The date the condition resolved (or for multiple acute episodes, the last date the condition resolved).||
stop-reason|string|0|1|A statement of how the condition was resolved.||

## Example
[!code-xml[Example](sample-xml/7ea7a1f9-880b-4bd4-b593-f5660f20eda8.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/condition.xsd)
[!code-xml[XSD schema](xsd/condition.xsd)]
