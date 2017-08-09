---
uid: HV_dad8bb47-9ad0-4f09-a020-0ff051d1d0f7
title: Health goal
---

# Health goal

## Overview

Property|Value
---|---
id|dad8bb47-9ad0-4f09-a020-0ff051d1d0f7
name|Health goal
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## Related data types

- [Care plan](xref:HV_415c95e0-0533-4d9c-ac73-91dc5031186c)
- [Life goal](xref:HV_609319bf-35cc-40a4-b9d7-1b329679baaa)
- [Weight goal](xref:HV_b7925180-d69e-48fa-ae1d-cb3748ca170e)

## Details
Example goals: maintain averge blood glucose level below 90 mg/dl, walk 1000 steps per day.

<a name='health-goal'></a>

### Root element: health-goal

A health goal defines a target for a measurement or action to be performed by a user.

Example goals: maintain averge blood glucose level below 90 mg/dl, walk 1000 steps per day.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|Name of the goal.|Example: average blood glucose.|[goal-type](xref:HV_480abe60-8805-4220-bc58-57d3ff3a8e4f)
description|string|0|1|Description of the goal.||
start-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|The start date of the goal.||
end-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|The end date of the goal.||
associated-type-info|[goal-associated-type-info](#goal-associated-type-info)|0|1|Specifies HealthVault type information related to this goal.||
target-range|[goal-range](#goal-range)|0|1|The target range for the goal.|This represents the ideal range for a goal, for example, the ideal weight, or the ideal blood pressure.|
goal-additional-ranges|[goal-range](#goal-range)|0|unbounded|Allows specifying additional ranges for the goal.|For example, in a blood pressure goal, it may be useful to include the 'hypertensive' range in addition to the ideal range.|
recurrence|[goal-recurrence](#goal-recurrence)|0|1|This field allows defining recurrence for goals.|A goal can be defined on a weekly interval, meaning the target is intended to be achieved every week. Walking 70000 steps in a week is an example of this.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='goal-associated-type-info'></a>
>
> ### goal-associated-type-info
>
> The HealthVault thing type associated with the goal.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> thing-type-version-id|[guid](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#guid)|1|1|The version id of the HealthVault type associated with this goal.|Thing type version id is used to specify measurements relevant for this goal.
> thing-type-value-xpath|string|0|1|XPath expression for the value field associated with this goal in the thing type.|Thing type value XPath could be used to specify which element in a thing type defined by the thing-type-version-id can be used to find the measurements. The XPath can also include a condition such as steps greater than 1000.
> thing-type-display-xpath|string|0|1|XPath expression for the display field associated with this goal in the thing type.|Thing type display XPath should point to a "display-value" element in the thing XML for the type defined by the thing-type-version-id.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='goal-range'></a>
>
> ### goal-range
>
> This represents a goal range associated with a goal.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The name of the goal range.|
> description|string|0|1|A description for the goal range allows more detailed information about the range.|This information could for instance be included in tooltips when hovering over a graph.
> minimum|[general-measurement](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#general-measurement)|0|1|Minimum value of the range.|For ranges greater than a specified value with no maximum, specify a minimum but no maximum.
> maximum|[general-measurement](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#general-measurement)|0|1|Maximum value of the range.|For ranges less than a specified value with no minimum, specify a maximum but no minimum.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='goal-recurrence'></a>
>
> ### goal-recurrence
>
> This sub-type allows specifying recurrence for Goals.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> interval|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|Specifies the recurrence interval of the goal. For example, day, week, year, etc.||[recurrence-intervals](xref:HV_04c4621a-d97a-4328-b398-af547abe02ac)
> times-in-interval|[positiveInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveInt)|1|1|Specifies the number of times the goal's target is intended to be achieved during the interval.|For example, the goal "exercise for 30 minutes, 4 times per week" would be represented as: an interval of a "week", a times-in-interval of 4, and a goal target of 30 minutes.|
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/health-goal.xsd)
[!code-xml[XSD schema](../xsd/health-goal.xsd)]
