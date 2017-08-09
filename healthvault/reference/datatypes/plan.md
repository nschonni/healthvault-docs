---
uid: HV_504d6c08-68f9-4e07-8699-5fb55678f13d
title: Plan
---

# Plan

## Overview

Property|Value
---|---
id|504d6c08-68f9-4e07-8699-5fb55678f13d
name|Plan
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## Related data types

- [Task](xref:HV_6184d61f-4846-4219-b675-b61de85860d1)
- [Task tracking entry](xref:HV_b54a6e00-c1fb-4e22-8694-0a4ae94e8cb6)

## Details
Applications should not interact with this data type directly via GetThings, PutThings, etc. Instead, they should use the ActionPlan methods in the HealthVault REST APIs.

<a name='plan'></a>

### Root element: plan

The action plan.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
name|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|The localized plan name.|
description|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|The localized plan description.|
status|[plan-status](#plan-status)|1|1|The plan status.|
category|[plan-category](#plan-category)|1|1|The plan category.|
objectives|[plan-objective-list](#plan-objective-list)|1|1|The plan objectives.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='plan-objective-list'></a>
>
> ### plan-objective-list
>
> A list of objectives.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> objective|[plan-objective](#plan-objective)|1|unbounded|A single objective.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='plan-objective'></a>
>
> ### plan-objective
>
> An objective to be achieved by following the plan.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> id|[guid](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#guid)|1|1|The objective identifier.|
> name|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|The localized name of the objective.|
> description|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|The localized description of the objective.|
> state|[plan-objective-state](#plan-objective-state)|1|1|The objective state.|
> outcomes|[plan-outcome-list](#plan-outcome-list)|0|1|The outcomes used to quantify progress toward the objective.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='plan-outcome-list'></a>
>
> ### plan-outcome-list
>
> A list of outcomes.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> outcome|[plan-outcome](#plan-outcome)|1|unbounded|A single outcome.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='plan-outcome'></a>
>
> ### plan-outcome
>
> An outcome used to quantify progress toward an objective.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|The localized outcome name.|
> type|[plan-outcome-type](#plan-outcome-type)|1|1|The outcome type.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='plan-objective-state'></a>
>
> ### plan-objective-state
>
> The state of an objective.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Inactive|User is not actively working toward this objective.|
> enumeration|Active|User is actively working toward this objective.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='plan-outcome-type'></a>
>
> ### plan-outcome-type
>
> The outcome type.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|StepsPerDay||
> enumeration|CaloriesPerDay||
> enumeration|ExerciseHoursPerWeek||
> enumeration|SleepHoursPerNight||
> enumeration|MinutesToFallAsleepPerNight||
> enumeration|Other||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='plan-category'></a>
>
> ### plan-category
>
> The category of the plan's focus area.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Health|Plan focusing on any health condition.|
> enumeration|Sleep|Plan focusing on getting better sleep.|
> enumeration|Activity|Plan focusing on being more physically active.|
> enumeration|Stress|Plan focusing on managing stress.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='plan-status'></a>
>
> ### plan-status
>
> The plan status.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Archived|User is no longer actively following the plan.|
> enumeration|InProgress|User is actively following the plan.|
> enumeration|Recommended|User has not started following the plan.|
> enumeration|Completed|User followed the plan through to completion.|
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/plan.xsd)
[!code-xml[XSD schema](../xsd/plan.xsd)]
