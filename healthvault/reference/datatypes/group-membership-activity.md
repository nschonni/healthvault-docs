---
uid: HV_e75fa095-31ed-4b30-b5f7-463963b5e734
title: Group membership activity
---

# Group membership activity

## Overview

Property|Value
---|---
id|e75fa095-31ed-4b30-b5f7-463963b5e734
name|Group membership activity
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.GroupMembershipActivity](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.groupmembershipactivity)
- [Microsoft.HealthVault.ItemTypes.GroupMembershipActivity](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.groupmembershipactivity)

## Related data types

- [Group membership](xref:HV_66ac44c7-1d60-4e95-bb5b-d21490e91057)

## Details
An activity related to group membership.

<a name='group-membership-activity'></a>

### Root element: group-membership-activity

Describes an activity related to group membership.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time of the activity.||
activity|[coded-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#coded-value)|1|1|The activity that occurred.|For example: RecordAuthorizedForApplication.|[group-membership-activities](xref:HV_e6816bb2-e371-4d42-919d-2090f24d88df)
activity-info|string|0|1|Additional information for this activity.||

## Example
[!code-xml[Example](../sample-xml/e75fa095-31ed-4b30-b5f7-463963b5e734.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/group-membership-activity.xsd)
[!code-xml[XSD schema](../xsd/group-membership-activity.xsd)]
