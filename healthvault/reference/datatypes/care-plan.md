---
uid: HV_415c95e0-0533-4d9c-ac73-91dc5031186c
title: Care plan
---

# Care plan

## Overview

Property|Value
---|---
id|415c95e0-0533-4d9c-ac73-91dc5031186c
name|Care plan
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## Related data types

- [Personal contact information](xref:HV_162dd12d-9859-4a66-b75f-96760d67072b)
- [Health goal](xref:HV_dad8bb47-9ad0-4f09-a020-0ff051d1d0f7)
- [Life goal](xref:HV_609319bf-35cc-40a4-b9d7-1b329679baaa)
- [Weight goal](xref:HV_b7925180-d69e-48fa-ae1d-cb3748ca170e)

## Details
The care plan contains tasks and goals.

<a name='care-plan'></a>

### Root element: care-plan

Information related to a care plan.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
name|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|Name of the care plan.|
start-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|Start date of the care plan.|
end-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|End date of the care plan.|
status|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Status of the care plan.|
care-team|[care-team](#care-team)|0|1|List of person contacts associated with the care plan.|
care-plan-manager|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|Person managing the care plan.|
tasks|[care-plan-tasks](#care-plan-tasks)|0|1|List of tasks associated with the care plan.|
goal-groups|[care-plan-goal-groups](#care-plan-goal-groups)|0|1|List of goals associated with the care plan.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='care-team'></a>
>
> ### care-team
>
> Team of people associated with the care plan.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> person|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|1|unbounded|List of contact information.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='care-plan-task-recurrence'></a>
>
> ### care-plan-task-recurrence
>
> Care plan task recurrence representation.
>
> For recurrence rules that cannot be expressed using iCalendar recurrence format, use interval and times-in-interval fields. Ex: Two times in a week.
>
> ### Choice
>
> Min occurs: 1
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> ical-recurrence|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|iCalendar format for recurrence specification as per RFC 2445.|Section 4.3.10 of RFC 2445.|
> interval|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|Recurrence interval. For ex: day, month, year etc.||[recurrence-intervals](xref:HV_04c4621a-d97a-4328-b398-af547abe02ac)
> times-in-interval|[positiveInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveInt)|1|1|The number of times the task occurs in the interval.|Ex: Two times in a week would be stored as interval = week, times-in-interval = 2|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='care-plan-task'></a>
>
> ### care-plan-task
>
> A task defines an action to be performed by the user.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|Name of the task.|
> description|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|Description of the task.|
> start-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|Date the user starts tracking the task.|
> end-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|Date the user stops tracking the task.|
> target-completion-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|Date the user intends to complete the task.|
> sequence-number|[nonNegativeInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeInt)|0|1|Sequence number associated with the task.|Sequence number could be used to decide the order in which the tasks should be performed.
> associated-type-info|[associated-type-info](#associated-type-info)|0|1|Specifies HealthVault type information related to this task.|
> recurrence|[care-plan-task-recurrence](#care-plan-task-recurrence)|0|1|Recurrence of the task.|
> reference-id|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|An unique id to distinguish one task from another.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='care-plan-tasks'></a>
>
> ### care-plan-tasks
>
> List of care plan tasks.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> task|[care-plan-task](#care-plan-task)|1|unbounded|List of care plan tasks.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='associated-type-info'></a>
>
> ### associated-type-info
>
> The HealthVault thing type associated with the goal or task.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> thing-type-version-id|[guid](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#guid)|1|1|The version id of the HealthVault type associated with this goal or task.|Thing type version id is used to specify measurements relevant for this goal or task.
> thing-type-value-xpath|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|XPath expression for the value field associated with this goal or task in the thing type.|Thing type value XPath could be used to specify which element in a thing type defined by the thing-type-version-id can be used to find the measurements. The XPath can also include a condition such as steps greater than 1000.
> thing-type-display-xpath|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|XPath expression for the display field associated with this goal or task in the thing type.|Thing type display XPath should point to a "display-value" element in the thing XML for the type defined by the thing-type-version-id.
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
> description|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|A description for the goal range allows more detailed information about the range.|This information could for instance be included in tooltips when hovering over a graph.
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

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='care-plan-goal'></a>
>
> ### care-plan-goal
>
> A goal defines a target for a measurement.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|Name of the goal.|Example: average blood-glucose for the last seven days
> description|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|Description of the goal.|
> start-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|Date the user starts tracking the goal.|
> end-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|Date the user stops tracking the goal.|
> target-completion-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|Date the user intends to complete the goal.|
> associated-type-info|[associated-type-info](#associated-type-info)|0|1|Specifies HealthVault type information related to this goal.|
> target-range|[goal-range](#goal-range)|0|1|The target range for the goal.|This represents the ideal range for a goal, for example, the ideal weight, or the ideal blood pressure.
> goal-additional-ranges|[goal-range](#goal-range)|0|unbounded|Allows specifying additional ranges for the goal.|For example, in a blood pressure goal, it may be useful to include the 'hypertensive' range in addition to theideal range.
> recurrence|[goal-recurrence](#goal-recurrence)|0|1|This field allows defining recurrence for goals.|A goal can be defined to be achieved every specific interval. Example, walking 70000 steps in a week.
> reference-id|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|An unique id to distinguish one goal from another.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='care-plan-goals'></a>
>
> ### care-plan-goals
>
> List of care plan goals.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> goal|[care-plan-goal](#care-plan-goal)|1|unbounded|List of care plan goals.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='care-plan-goal-group'></a>
>
> ### care-plan-goal-group
>
> Goal groups are used to group related measurement goals together. For example, blood pressure has two individual measurement goals (systolic and diastolic) but are grouped together under blood pressure.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|Name of the goal group.|
> description|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|Description of the goal group.|
> goals|[care-plan-goals](#care-plan-goals)|1|1|List of care plan goals associated with this goal group.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='care-plan-goal-groups'></a>
>
> ### care-plan-goal-groups
>
> List of care plan goal groups.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> goal-group|[care-plan-goal-group](#care-plan-goal-group)|1|unbounded|List of care plan goal groups.|
>
>

## Example
[!code-xml[Example](../sample-xml/415c95e0-0533-4d9c-ac73-91dc5031186c.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/care-plan.xsd)
[!code-xml[XSD schema](../xsd/care-plan.xsd)]
