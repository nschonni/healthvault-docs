---
uid: HV_e4501363-fb95-4a11-bb60-da64e98048b5
title: Weekly aerobic exercise goal
---

# Weekly aerobic exercise goal

## Overview

Property|Value
---|---
id|e4501363-fb95-4a11-bb60-da64e98048b5
name|Weekly aerobic exercise goal
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.AerobicWeeklyGoal](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.aerobicweeklygoal)
- [Microsoft.HealthVault.ItemTypes.AerobicWeeklyGoal](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.aerobicweeklygoal)

## Related data types

- [Aerobic profile](xref:HV_7b2ea78c-4b78-4f75-a6a7-5396fe38b09a)
- [Care plan](xref:HV_415c95e0-0533-4d9c-ac73-91dc5031186c)
- [Exercise](xref:HV_85a21ddb-db20-4c65-8d30-33c899ccf612)
- [Health goal](xref:HV_dad8bb47-9ad0-4f09-a020-0ff051d1d0f7)
- [Life goal](xref:HV_609319bf-35cc-40a4-b9d7-1b329679baaa)

## Details
The thing's effective_date metadata implies the date on which this goal was initiated, for purposes of graphing, etc.

<a name='aerobic-weekly'></a>

### Root element: aerobic-weekly

Defines a weekly goal for aerobic exercise.

The thing's effective_date metadata implies the date on which this goal was initiated, for purposes of graphing, etc.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
session|[aerobic-session](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#aerobic-session)|1|1|The metrics to use for measuring the goal.|A recorded aerobic-session must match or exceed this session in order to mark the goal as achieved.
recurrence|[positiveInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveInt)|1|1|The number of times per week the session must occur to meet the goal.|For example, if I want to run 5 kilometers three times a week, the session would have a mode of 'run' and a distance of '5' and the recurrence would be set to '3'.

## Example
[!code-xml[Example](../sample-xml/e4501363-fb95-4a11-bb60-da64e98048b5.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/aerobic-weekly.xsd)
[!code-xml[XSD schema](../xsd/aerobic-weekly.xsd)]
