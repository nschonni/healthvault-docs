---
uid: HV_b54a6e00-c1fb-4e22-8694-0a4ae94e8cb6
title: Task tracking entry
---

# Task tracking entry

## Overview

Property|Value
---|---
id|b54a6e00-c1fb-4e22-8694-0a4ae94e8cb6
name|Task tracking entry
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## Related data types

- [Plan](xref:HV_504d6c08-68f9-4e07-8699-5fb55678f13d)
- [Task](xref:HV_6184d61f-4846-4219-b675-b61de85860d1)

## Details
Applications should not interact with this data type directly via GetThings, PutThings, etc. Instead, they should use the ActionPlan methods in the HealthVault REST APIs.

<a name='task-tracking-entry'></a>

### Root element: task-tracking-entry

Represents a single occasion on which the user performed (or was supposed to perform) a task.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
tracking-time|[date-time](xref:HV_File_dates#date-time)|1|1|When the entry was recorded.|
tracking-type|[task-tracking-type](#task-tracking-type)|1|1|The method by which the tracking entry was triggered.|
tracking-status|[task-tracking-status](#task-tracking-status)|1|1|The task adherence or completion status represented by this tracking entry.|
occurrence-start-time|[date-time](xref:HV_File_dates#date-time)|0|1|When the occurrence window began.|This field should be null if the tracking status is Completion or OutOfWindow.
occurrence-end-time|[date-time](xref:HV_File_dates#date-time)|0|1|When the occurrence window ended.|This field should be null if the tracking status is Completion or OutOfWindow.
completion-start-time|[date-time](xref:HV_File_dates#date-time)|1|1|When the completion window began.|
completion-end-time|[date-time](xref:HV_File_dates#date-time)|1|1|When the completion window ended.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='task-tracking-status'></a>
>
> ### task-tracking-status
>
> The task adherence or completion status represented by this tracking entry.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Occurrence|The user performed a task at the required time.|For example, if the task is to exercise for thirty minutes three times a week, then every time the user completes a thirty-minute exercise session a TaskOccurrence with status Occurrence will be logged.
> enumeration|Completion|The user completed a task by performing all required occurrences.|For example, if the task is to exercise for thirty minutes three times a week, then when the user completes all three exercise sessions a TaskOccurrence with status Completion will be logged.
> enumeration|OutOfWindow|The user performed a task, but not at the required time, so it doesn't count toward task completion.|For example, if the task is to take medication at 10:00 plus/minus fifteen minutes, and the user takes medication at 12:00, a TaskOccurrence with status OutOfWindow will be logged.
> enumeration|NonOccurrence|The user failed to perform the task.|For example, if the user forgot to take their medication or didn't exercise, the application can optionally record this as a TaskOccurrence with status NonOccurrence.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='task-tracking-type'></a>
>
> ### task-tracking-type
>
> The method by which the tracking entry was triggered.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Manual|This tracking entry was triggered by a manual action from the user.|For example, the user may have pressed a button in the application to indicate that they performed the task.
> enumeration|Auto|This tracking entry was triggered by a change in the user's HealthVault data.|For example, if the task is to measure blood pressure, and a blood pressure measurement is uploaded from the user's blood pressure monitor, it can automatically trigger a task tracking entry.
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/task-tracking-entry.xsd)
[!code-xml[XSD schema](../xsd/task-tracking-entry.xsd)]
