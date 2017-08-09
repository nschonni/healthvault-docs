---
uid: HV_cc23422c-4fba-4a23-b52a-c01d6cd53fdf
title: Family history person
---

# Family history person

## Overview

Property|Value
---|---
id|cc23422c-4fba-4a23-b52a-c01d6cd53fdf
name|Family history person
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.FamilyHistoryPerson](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.familyhistoryperson)
- [Microsoft.HealthVault.ItemTypes.FamilyHistoryPerson](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.familyhistoryperson)

## Related data types

- [Family history](xref:HV_4a04fcc8-19c1-4d59-a8c7-2031a03f21de)
- [Family history condition](xref:HV_6705549b-0e3d-474e-bfa7-8197ddd6786a)

## Details
Note: Please use the family history type instead of this type. <br /> Stores information about a relative of the record owner, such as a mother, father, or aunt.<br /> Relate this item to Family History Condition items.

<a name='family-history-person'></a>

### Root element: family-history-person

Information about a relative of the record owner.

Note: Please use the family history type instead of this type. <br /> Stores information about a relative of the record owner, such as a mother, father, or aunt.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
relative-name|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|1|1|The name and other information about the relative.||
relationship|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The relationship of this person to the record owner.||[personal-relationship](xref:HV_9e22e9c5-a032-4375-8999-20c9d00954b9)
date-of-birth|[approx-date](xref:HV_File_dates#approx-date)|0|1|The date of birth for the relative.||
date-of-death|[approx-date](xref:HV_File_dates#approx-date)|0|1|The date of death for the relative.||

## Example
[!code-xml[Example](../sample-xml/cc23422c-4fba-4a23-b52a-c01d6cd53fdf.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/family-history-person.xsd)
[!code-xml[XSD schema](../xsd/family-history-person.xsd)]
