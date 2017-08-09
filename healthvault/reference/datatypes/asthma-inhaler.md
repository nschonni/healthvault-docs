---
uid: HV_ff9ce191-2096-47d8-9300-5469a9883746
title: Asthma inhaler
---

# Asthma inhaler

## Overview

Property|Value
---|---
id|ff9ce191-2096-47d8-9300-5469a9883746
name|Asthma inhaler
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.AsthmaInhaler](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.asthmainhaler)
- [Microsoft.HealthVault.ItemTypes.AsthmaInhaler](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.asthmainhaler)

## Related data types

- [Asthma inhaler usage](xref:HV_03efe378-976a-42f8-ae1e-507c497a8c6d)
- [Medical device](xref:HV_EF9CF8D5-6C0B-4292-997F-4047240BC7BE)
- [Medication](xref:HV_30cafccc-047d-4288-94ef-643571f7919d)

## Details
The inhaler may or may not have a device component. Each new canister should have a new inhaler thing, even if there is a containing device that is reusable. Changes in regimen (min/max doses per day) should also cause a new thing to be created.

<a name='asthma-inhaler'></a>

### Root element: asthma-inhaler

Any inhaler unit used to treat asthma.

The inhaler may or may not have a device component. Each new canister should have a new inhaler thing, even if there is a containing device that is reusable. Changes in regimen (min/max doses per day) should also cause a new thing to be created.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
drug|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The name of the drug in the canister.|For example, 'ventolin' or 'albuterol'.
strength|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The textual description of the drug strength.|For example, '44 mcg / puff'.
purpose|[purpose](#purpose)|0|1|The purpose for the inhaler.|
start-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|1|1|The approximate date of when the inhaler started being used.|
stop-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|The approximate date of when the inhaler was retired.|Absence of this element implied that as far as we know the canister is still in use.
expiration-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|The date the canister is clinically expired.|
device-id|string|0|1|The unique id or serial number for the canister.|If available, this value can be used to correlate uses.
initial-doses|[int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)|0|1|The number of doses in the unit at the time the thing instance was created.|This may not be the number the canister started with since the expectation is that a change in regimen will cause a new thing to be created as well.<br /><br /> A dose is one puff.
min-daily-doses|[int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)|0|1|The minimum number of doses that should be taken per day.|A dose is one puff.
max-daily-doses|[int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)|0|1|The maximum number of doses that should be taken per day.|A dose is one puff.
can-alert|boolean|0|1|States whether the inhaler can show alerts.|
alert|[alert](#alert)|0|unbounded|A set of the alert times that the device should activate its feature.|Note that his information can change without requiring a new thing to be created. The device data is the key for alerts, we just keep it here for display purposes.

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='alert'></a>
>
> ### alert
>
> A weekly alert schedule.
>
> A weekly alert schedule consists of one or more days of the week plus one or more time values.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> dow|[dow](#dow)|1|7|The day(s) of the week the alert is effective.|
> time|[time](xref:HV_File_dates#time)|1|unbounded|The time(s) of day the alert is scheduled.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='dow'></a>
>
> ### dow
>
> The day of the week.
>
> 1 = Sunday 2 = Monday 3 = Tuesday 4 = Wednesday 5 = Thursday 6 = Friday 7 = Saturday
>
> ### Restriction
>
> Base type: [int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minInclusive|1||
> maxInclusive|7||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='purpose'></a>
>
> ### purpose
>
> The intended purpose of the inhaler.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Control|To control the onset of attacks.|
> enumeration|Rescue|To rescue during an attack.|
> enumeration|Combination|A combination of control and rescue.|
>
>

## Example
[!code-xml[Example](../sample-xml/ff9ce191-2096-47d8-9300-5469a9883746.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/asthma-inhaler.xsd)
[!code-xml[XSD schema](../xsd/asthma-inhaler.xsd)]
