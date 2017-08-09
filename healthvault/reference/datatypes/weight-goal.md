---
uid: HV_b7925180-d69e-48fa-ae1d-cb3748ca170e
title: Weight goal
---

# Weight goal

## Overview

Property|Value
---|---
id|b7925180-d69e-48fa-ae1d-cb3748ca170e
name|Weight goal
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.WeightGoal](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.weightgoal)
- [Microsoft.HealthVault.ItemTypes.WeightGoal](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.weightgoal)

## Related data types

- [Calorie guideline](xref:HV_d3170d30-a41b-4bde-a116-87698c8a001a)
- [Care plan](xref:HV_415c95e0-0533-4d9c-ac73-91dc5031186c)
- [Health goal](xref:HV_dad8bb47-9ad0-4f09-a020-0ff051d1d0f7)
- [Life goal](xref:HV_609319bf-35cc-40a4-b9d7-1b329679baaa)
- [Weight](xref:HV_3d34d87e-7fc1-4153-800f-f56592cb0d17)

## Details
More than one weight goal may exist in a record. It is up to the application to determine which is the active goal.<br /><br /> The thing's effective-date implies the date on which the goal was initiated, for purposes of graphing, etc.

<a name='weight-goal'></a>

### Root element: weight-goal

A target weight range with an associated target date.

More than one weight goal may exist in a record. It is up to the application to determine which is the active goal.<br /><br /> The thing's effective-date implies the date on which the goal was initiated, for purposes of graphing, etc.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
initial|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The person's starting weight when starting work toward the goal.|If not present, the initial weight can be inferred from the "weight" thing with the closest match to effective-date.
minimum|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The lowest desired weight.|
maximum|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The highest desired weight.|
goal-info|[goal](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#goal)|0|1|General information about the goal.|A goal contains information like the starting date, completion date, and current status.

## Example
[!code-xml[Example](../sample-xml/b7925180-d69e-48fa-ae1d-cb3748ca170e.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/weight-goal.xsd)
[!code-xml[XSD schema](../xsd/weight-goal.xsd)]
