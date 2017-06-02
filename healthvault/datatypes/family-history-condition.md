---
uid: HV_6705549b-0e3d-474e-bfa7-8197ddd6786a
title: Family history condition
---

# Family history condition

## Overview

Property|Value
---|---
id|6705549b-0e3d-474e-bfa7-8197ddd6786a
name|Family history condition
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.FamilyHistoryCondition](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.familyhistorycondition)
- [Microsoft.HealthVault.ItemTypes.FamilyHistoryCondition](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.familyhistorycondition)

## Related data types

- [Family history](xref:HV_4a04fcc8-19c1-4d59-a8c7-2031a03f21de)
- [Family history person](xref:HV_cc23422c-4fba-4a23-b52a-c01d6cd53fdf)

## Details
Note: Please use the family history type instead of this type. <br /> Stores a condition that a relative of the record-owner has.<br /> Relate this item to a Family History Person item describing the relative.

<a name='family-history-condition'></a>

### Root element: family-history-condition

A condition of a relative.

Note: Please use the family history type instead of this type. <br /> Stores a condition that a relative of the record-owner has.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
condition|[Condition](xref:HV_7ea7a1f9-880b-4bd4-b593-f5660f20eda8)|1|1|The condition for the relative.|

## Example
[!code-xml[Example](sample-xml/6705549b-0e3d-474e-bfa7-8197ddd6786a.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/family-history-condition.xsd)
[!code-xml[XSD schema](xsd/family-history-condition.xsd)]
