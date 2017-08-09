---
uid: HV_22826e13-41e1-4ba3-8447-37dadd208fd8
title: Family history
---

# Family history

## Overview

Property|Value
---|---
id|22826e13-41e1-4ba3-8447-37dadd208fd8
name|Family history
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.FamilyHistory](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.familyhistory)
- [Microsoft.HealthVault.ItemTypes.FamilyHistory](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.familyhistory)

## Details
Stores a condition that a relative of the record-owner has.

<a name='family-history'></a>

### Root element: family-history

A condition of a relative.

Stores a condition that a relative of the record-owner has.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
condition|[Condition](xref:HV_7ea7a1f9-880b-4bd4-b593-f5660f20eda8)|1|1|The condition for the relative.|
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
> relative-name|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|The name and other information about the relative.||
> relationship|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The relationship of this person to the record owner.||[personal-relationship](xref:HV_9e22e9c5-a032-4375-8999-20c9d00954b9)
> date-of-birth|[approx-date](xref:HV_File_dates#approx-date)|0|1|The date of birth for the relative.||
> date-of-death|[approx-date](xref:HV_File_dates#approx-date)|0|1|The date of death for the relative.||
>
>

## Example
[!code-xml[Example](../sample-xml/22826e13-41e1-4ba3-8447-37dadd208fd8.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/family-history.xsd)
[!code-xml[XSD schema](../xsd/family-history.xsd)]
