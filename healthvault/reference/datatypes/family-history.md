---
uid: HV_4a04fcc8-19c1-4d59-a8c7-2031a03f21de
title: Family history
---

# Family history

## Overview

Property|Value
---|---
id|4a04fcc8-19c1-4d59-a8c7-2031a03f21de
name|Family history
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.FamilyHistory](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.familyhistory)
- [Microsoft.HealthVault.ItemTypes.FamilyHistory](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.familyhistory)

## Related data types

- [Cardiac profile](xref:HV_adaf49ad-8e10-49f8-9783-174819e97051)
- [Condition](xref:HV_7ea7a1f9-880b-4bd4-b593-f5660f20eda8)
- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
- [Family history condition](xref:HV_6705549b-0e3d-474e-bfa7-8197ddd6786a)
- [Family history person](xref:HV_cc23422c-4fba-4a23-b52a-c01d6cd53fdf)

## Details
Stores a condition that a relative of the record-owner has.

<a name='family-history'></a>

### Root element: family-history

A condition of a relative.

Stores a condition that a relative of the record-owner has. To create a family tree, use the relationship-types vocabulary to code both directions of the parent/child relationship between one family member and another. These codes are stored as related items for both parent and child data instances. The flexibity of having both condition and relative be optional allows applications to give the users the ability to just put in the details they know at the time they want to create the tree. If they just know the name of the relative, or a particular condition that’s all it takes to get a new instance started.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
condition|[Condition](xref:HV_7ea7a1f9-880b-4bd4-b593-f5660f20eda8)|0|unbounded|The condition for the relative.|
relative|[FamilyHistoryRelative](#FamilyHistoryRelative)|0|1|Information about the relative with this condition.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='FamilyHistoryRelative'></a>
>
> ### FamilyHistoryRelative
>
> Information describing a relative.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> relationship|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The relationship of this person to the record owner.||[personal-relationship](xref:HV_9e22e9c5-a032-4375-8999-20c9d00954b9)
> relative-name|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|The name and other information about the relative.||
> date-of-birth|[approx-date](xref:HV_File_dates#approx-date)|0|1|The date of birth for the relative.||
> date-of-death|[approx-date](xref:HV_File_dates#approx-date)|0|1|The date of death for the relative.||
> region-of-origin|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The region of origin the relative.||[family-history-region-of-origin](xref:HV_2791a623-22ff-4d05-8017-9bd669903d60)
>
>

## Example
[!code-xml[Example](../sample-xml/4a04fcc8-19c1-4d59-a8c7-2031a03f21de.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/family-history.3.xsd)
[!code-xml[XSD schema](../xsd/family-history.3.xsd)]
