---
uid: HV_609319bf-35cc-40a4-b9d7-1b329679baaa
title: Life goal
---

# Life goal

## Overview

Property|Value
---|---
id|609319bf-35cc-40a4-b9d7-1b329679baaa
name|Life goal
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.LifeGoal](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.lifegoal)
- [Microsoft.HealthVault.ItemTypes.LifeGoal](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.lifegoal)

## Related data types

- [Care plan](xref:HV_415c95e0-0533-4d9c-ac73-91dc5031186c)
- [Health goal](xref:HV_dad8bb47-9ad0-4f09-a020-0ff051d1d0f7)
- [Weight goal](xref:HV_b7925180-d69e-48fa-ae1d-cb3748ca170e)

## Details
The effective-date implies the date on which this goal was initiated.

<a name='life-goal'></a>

### Root element: life-goal

An unmeasurable "checklist" goal of the type you might stick up on the fridge as a New Year's resolution.

The effective-date implies the date on which this goal was initiated.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
description|string|1|1|Free-form description of the goal.|
goal-info|[goal](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#goal)|0|1|General information about the goal such as the start date, completion date, and current status.|

## Example
[!code-xml[Example](../sample-xml/609319bf-35cc-40a4-b9d7-1b329679baaa.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/life-goal.xsd)
[!code-xml[XSD schema](../xsd/life-goal.xsd)]
