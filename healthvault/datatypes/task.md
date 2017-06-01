---
uid: HV_6184d61f-4846-4219-b675-b61de85860d1
title: Task
---

# Task

## Overview

Property|Value
---|---
id|6184d61f-4846-4219-b675-b61de85860d1
name|Task
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## Related data types

- [Plan](xref:HV_504d6c08-68f9-4e07-8699-5fb55678f13d)
- [Task tracking entry](xref:HV_b54a6e00-c1fb-4e22-8694-0a4ae94e8cb6)

## Details
Applications should not interact with this data type directly via GetThings, PutThings, etc. Instead, they should use the ActionPlan methods in the HealthVault REST APIs.

<a name='task'></a>

### Root element: task

A single task assigned to a user as part of a plan.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
date-started|date-time|1|1|The date the user started performing this task as part of their plan.|
name|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|The task name.|Applications typically display this string and would pass in a value in the user's display language.
short-description|[string128](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#string128)|1|1|A brief description of the task.|Applications typically display this string and would pass in a value in the user's display language.
long-description|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|A more detailed description of the task.|Applications typically display this string and would pass in a value in the user's display language.
is-reminder-enabled|boolean|0|1|Whether the user should receive a reminder at the task's scheduled time.|
status|[task-status](#task-status)|1|1|The task status.|
type|[guid](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#guid)|0|1|For a task whose completion is tied to recording a specific health measurement or other piece of data, this indicates the item type to be recorded.|For example, if the task is to take your blood pressure, this would be the blood pressure type ID.
schedules|[task-schedules](#task-schedules)|0|1|The schedule of when the task is to be performed.|
tracking-policy|[task-tracking-policy](#task-tracking-policy)|0|1|The rules for tracking task completion.|
associated-objective-ids|[guids](#guids)|0|1|The plan objectives that completion of this task counts towards.|These values should match objective IDs defined in the associated plan.

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='strings'></a>
>
> ### strings
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> string|string|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='guids'></a>
>
> ### guids
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> id|[guid](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#guid)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='task-schedules'></a>
>
> ### task-schedules
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> schedule|[task-schedule](#task-schedule)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='task-schedule'></a>
>
> ### task-schedule
>
> A schedule for when the task is to be performed.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> start-date-time|date-time|1|1|The start time for completing the task.|
> end-date-time|date-time|0|1|The end time for completing the task.|
> schedule-type|[task-schedule-type](#task-schedule-type)|1|1|The schedule type.|
> recurrence-type|[task-recurrence-type](#task-recurrence-type)|1|1|The task recurrence.|
> group-id|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|Used to relate multiple schedule entries that are essentially all the same schedule appearing at different days or times.|
> multiple|[positiveInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveInt)|0|1|A multiplier on the recurrence type. For example, if it's daily with a multiple of 2, it will be scheduled every other day.|
> minutes-to-remind-before|[nonNegativeDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeDouble)|0|1|How far before the scheduled time the user should receive a reminder, in minutes.|
> adherence-window-in-minutes|[nonNegativeDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeDouble)|0|1|The window around the scheduled time when the task can be completed, in minutes.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='task-tracking-policy'></a>
>
> ### task-tracking-policy
>
> The rules for tracking task completion.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> is-auto-trackable|boolean|0|1|Whether the task completion workflow can be triggered automatically by a change in the user's health data.|For example, if the task is to measure the user's blood pressure, an auto- trackable workflow could be triggered when a blood pressure entry is uploaded to the user's HealthVault record.
> source-types|[tracking-source-types](#tracking-source-types)|1|1|The types of data that can cause the tracking/completion workflow to be triggered.|
> trigger-types|[tracking-trigger-types](#tracking-trigger-types)|1|1|The processes that can cause the tracking/completion workflow to be triggered.|
> occurrence-metrics|[task-occurrence-metrics](#task-occurrence-metrics)|0|1|The definition for evaluating a health measurement or activity to decide whether a task occurred.|
> completion-metrics|[task-completion-metrics](#task-completion-metrics)|1|1|The definition for evaluating a health measurement or activity to decide whether a task was completed.|
> target-events|[task-target-events](#task-target-events)|0|1|A set of filters to be performed on a collection of health measurements or activities. These filters determine which items should be further evaluated for task occurrence and completion.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='tracking-trigger-types'></a>
>
> ### tracking-trigger-types
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> trigger-type|[tracking-trigger-type](#tracking-trigger-type)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='tracking-source-types'></a>
>
> ### tracking-source-types
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> source-type|[tracking-source-type](#tracking-source-type)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='task-occurrence-metrics'></a>
>
> ### task-occurrence-metrics
>
> The definition for evaluating a health measurement or activity to decide whether a task occurred.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> evaluate-targets|boolean|0|1|Whether to evaluate the metric targets.|
> targets|[task-range-metrics](#task-range-metrics)|0|1|The rules that a HealthVault item must meet to be counted as a task occurrence.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='task-range-metrics'></a>
>
> ### task-range-metrics
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> target|[task-range-metric](#task-range-metric)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='task-range-metric'></a>
>
> ### task-range-metric
>
> The rules that a HealthVault item must meet to count toward task occurrence.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> property-xpath|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|The xpath to the property to be evaluated within the item XML.|
> min-target|double|0|1|The minimum allowed value of the property.|
> max-target|double|0|1|The maximum allowed value of the property.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='task-completion-metrics'></a>
>
> ### task-completion-metrics
>
> The definition for evaluating a health measurement or activity to decide whether a task was completed.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> recurrence-type|[task-recurrence-type](#task-recurrence-type)|1|1|How often the task should occur.|
> completion-type|[task-completion-type](#task-completion-type)|1|1|The method for evaluating task completion.|
> occurrence-count|[positiveInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveInt)|0|1|For frequency-based tasks, indicates how many times the task should occur.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='task-target-events'></a>
>
> ### task-target-events
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> target-event|[task-target-event](#task-target-event)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='task-target-event'></a>
>
> ### task-target-event
>
> A filter to be performed on a collection of health measurements or activities. This determines which items should be further evaluated for task occurrence and completion.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> element-xpath|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|The xpath to the element to be evaluated within the item XML.|
> is-negated|boolean|0|1|If false or omitted, the element must match one of the values in element-values. If true, the element must NOT match any of the values in element-values.|
> element-values|[strings](#strings)|0|1|The values that the element is to be evaluated against for a match.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='task-status'></a>
>
> ### task-status
>
> The task status.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Archived|User is no longer working on this task.|
> enumeration|InProgress|User is actively working on this task.|
> enumeration|Recommended|User has not started working on this task.|
> enumeration|Completed|User worked on this task through to completion of the prescribed program.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='task-recurrence-type'></a>
>
> ### task-recurrence-type
>
> How often the task should occur.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|None||
> enumeration|Minute||
> enumeration|Hourly||
> enumeration|Daily||
> enumeration|Weekly||
> enumeration|Monthly||
> enumeration|Yearly||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='task-schedule-type'></a>
>
> ### task-schedule-type
>
> The schedule type.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Zoned|Task is scheduled at an absolute time independent of the local timezone.|An example would be a task to take medication every 4 hours.
> enumeration|Local|Task is scheduled at a relative time in the local timezone.|An example would be a task to go running at 7am every morning.
> enumeration|Unscheduled|Task is unscheduled.|
> enumeration|Anytime|Task can occur at any time.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='tracking-trigger-type'></a>
>
> ### tracking-trigger-type
>
> The processes that can cause the tracking/completion workflow to be triggered.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Manual|The workflow is triggered by a manual action from the user.|For example, the user pressing a button in the application to indicate that they performed the task might trigger the workflow.
> enumeration|HealthVaultItem|The workflow is triggered by a change in the user's HealthVault data.|For example, if the task is to measure blood pressure, a blood pressure measurement being uploaded from the user's blood pressure monitor could trigger the workflow.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='tracking-source-type'></a>
>
> ### tracking-source-type
>
> The types of data that can cause the tracking/completion workflow to be triggered.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Manual|The workflow is triggered by manual input from the user.|For example, the user pressing a button in the application to indicate that they performed the task might trigger the workflow.
> enumeration|HealthVaultItem|The workflow is triggered by new data in the user's HealthVault record.|For example, if the task is to measure blood pressure, a new blood pressure measurement uploaded from the user's blood pressure monitor could trigger the workflow.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='task-completion-type'></a>
>
> ### task-completion-type
>
> The method for evaluating task completion.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Frequency|Task completion is determined by performing the task the required number of times within a time range.|For example, a task to exercise three times a week.
> enumeration|Scheduled|Task completion is determined by performing the task at a scheduled time.|For example, a task to exercise every day at 7am.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='metric-value-type'></a>
>
> ### metric-value-type
>
> Indicates what a property on a HealthVault item represents and how it should be evaluated.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|MinutesToMidnight||
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/task.xsd)
[!code-xml[XSD schema](xsd/task.xsd)]
