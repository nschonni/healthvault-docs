---
uid: HV_9366440c-ec81-4b89-b231-308a4c4d70ed
title: Insurance plan
---

# Insurance plan

## Overview

Property|Value
---|---
id|9366440c-ec81-4b89-b231-308a4c4d70ed
name|Insurance plan
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Payer](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.payer)
- [Microsoft.HealthVault.ItemTypes.Payer](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.payer)

## Related data types

- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
- [Explanation of benefits (EOB)](xref:HV_356fbba9-e0c9-4f4f-b0d9-4594f2490d2f)

## Details
A person or organization that pays for health and medical bills.

<a name='payer'></a>

### Root element: payer

Information about the person or organization that pays for health and medical related bills.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
plan-name|string|1|1|The display name for the plan.|For example, 'Premera Blue Cross'.|
coverage-type|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The type of coverage the plan provides.|For example, 'medical', 'dental', etc.|[coverage-types](xref:HV_6972a05c-0703-4617-a82f-d0dd2fcfd89c)
carrier-id|string|0|1|The carrier identifier.|For example, 'BCBS430'.|
group-num|string|0|1|The group number in the plan.||
plan-code|string|0|1|The plan code or prefix.|For example, 'MSJ'.|
subscriber-id|string|0|1|The identifier for the insurance subscriber.||
person-code|string|0|1|The person's code in the plan or suffix.|For example, 01 = subscriber, etc.|
subscriber-name|string|0|1|The name of the subscriber.||
subscriber-dob|[date-time](xref:HV_File_dates#date-time)|0|1|The subscriber's date of birth.||
is-primary|boolean|0|1|States whether this is the primary coverage for the person.|If true, this is the primary coverage for the person. If false, the person may have other coverage.|
expiration-date|[date-time](xref:HV_File_dates#date-time)|0|1|The date the coverage expires.||
contact|[Contact](xref:HV_25c94a9f-9d3d-4576-96dc-6791178a8143)|0|1|Contact information for the plan.||

## Example
[!code-xml[Example](../sample-xml/9366440c-ec81-4b89-b231-308a4c4d70ed.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/payer.xsd)
[!code-xml[XSD schema](../xsd/payer.xsd)]
