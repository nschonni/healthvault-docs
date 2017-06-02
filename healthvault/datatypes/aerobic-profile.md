---
uid: HV_7b2ea78c-4b78-4f75-a6a7-5396fe38b09a
title: Aerobic profile
---

# Aerobic profile

## Overview

Property|Value
---|---
id|7b2ea78c-4b78-4f75-a6a7-5396fe38b09a
name|Aerobic profile
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.AerobicProfile](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.aerobicprofile)
- [Microsoft.HealthVault.ItemTypes.AerobicProfile](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.aerobicprofile)

## Related data types

- [Blood oxygen saturation](xref:HV_3a54f95f-03d8-4f62-815f-f691fc94a500)
- [Exercise](xref:HV_85a21ddb-db20-4c65-8d30-33c899ccf612)
- [Heart rate](xref:HV_b81eb4a6-6eac-4292-ae93-3872d6870994)
- [Weekly aerobic exercise goal](xref:HV_e4501363-fb95-4a11-bb60-da64e98048b5)

## Details
A person's aerobic profile is made up of a set of measurements that indicate the aerobic capabilities of the person.

<a name='aerobic-profile'></a>

### Root element: aerobic-profile

A summary of a person's aerobic condition.

A person's aerobic profile is made up of a set of measurements that indicate the aerobic capabilities of the person.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|date-time|1|1|The date/time when the aerobic profile measurements were taken.|
max-heartrate|[positiveInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveInt)|0|1|The maximum heart rate of the person.|The maximum heart rate is measured in beats per minute (BPM).
resting-heartrate|[positiveInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveInt)|0|1|The heart rate of the person when at rest.|The resting heart rate is measured in beats per minute (BPM).
anaerobic-threshold|[positiveInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveInt)|0|1|The anaerobic threshold (AT) is the exercise intensity at which lactate starts to accumulate in the blood stream.|The anaerobic threshold is measured in beats per minute (BPM).
VO2-max|[MaxVO2](#MaxVO2)|0|1|VO2 max is the maximum rate at which oxygen is absorbed into the blood stream by the body.|VO2 max can be measured as either and absolute rate in liters of oxygen per minute, or as a relative rate in milliters of oxygen per kilogram of bodyweight per minute.
heartrate-zone-group|[HeartrateZoneGroup](#HeartrateZoneGroup)|0|unbounded|A grouping of heart rate zones.|This allows for customized groupings of heart rate zones based on different values.Heart rate zones are often used to optimize exercise for different purposes. By grouping heart rate zones into named groups it is easier to identify the zones to use for a particular workout.

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='HeartrateZoneGroup'></a>
>
> ### HeartrateZoneGroup
>
> A grouping of heart rate zones.
>
> This allows for customized groupings of heart rate zones based on different values.Heart rate zones are often used to optimize exercise for different purposes. By grouping heart rate zones into named groups it is easier to identify the zones to use for a particular workout.
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> name|string|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> heartrate-zone|[HeartrateZone](#HeartrateZone)|0|unbounded|The heart rate zone definitions that make up the zone group.|Each heart rate zone definition defines a zone for the zone group. In most cases the zone definitions should not overlap.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='HeartrateZone'></a>
>
> ### HeartrateZone
>
> A heart rate range.
>
> A heart rate zone defines a range of heart rate measurements in beats per minute (BPM). A heart rate zone can be used to categorize the intensity of aerobic exercise or to guide an aerobic session. <br /><br /> A zone is defined by a lower and upper limit measured in BPM or as a percentage of a person's maximum heart rate.
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> name|string|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> lower-bound|[ZoneBoundary](#ZoneBoundary)|1|1|The lower boundary of the heart rate zone.|
> upper-bound|[ZoneBoundary](#ZoneBoundary)|1|1|The upper boundary of the heart rate zone.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ZoneBoundary'></a>
>
> ### ZoneBoundary
>
> A heart rate zone boundary.
>
> The boundary of a heart rate zone may be set as either an absolute heart rate (measured in BPM) or as a percentage of a person's maximum heart rate.
>
> ### Choice
>
> Min occurs: 1
>
> Max occurs: 1
> Choice of absolute or relative boundary unites.
>
> The boundary of a heart rate zone may be set as either an absolute heart rate (measured in BPM) or as a percentage of a person's maximum heart rate.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> absolute-heartrate|[positiveInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveInt)|1|1|A zone boundary defined by an absolute heart rate.|The zone boundary is expressed as an absolute heart rate in beats per minute (BPM).
> percent-max-heartrate|[percentage](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#percentage)|1|1|A zone boundary defined by a relative heart rate.|The zone boundary is expressed as a percentage of the person's maximum heart rate.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='MaxVO2'></a>
>
> ### MaxVO2
>
> The maximum capacity of person to transport and utilize oxygen during incremental exercise.
>
> VO2 max can be measured as either an absolute amount of oxygen utilized, or as an amount that is relative to the person's body weight.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> absolute|[positiveDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveDouble)|0|1|The amount of oxygen utilized per minute of exercise.|Absolute VO2 max is measured in liters per minute (l/min).
> relative|[positiveDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveDouble)|0|1|The amount of oxygen utilized per kilogram body weight per minute.|Relative VO2 max is measured in milliters per kilogram per minute (ml/kg/min). This measurement is the more common measurement used to compare aerobic performance.
>
>

## Example
[!code-xml[Example](sample-xml/7b2ea78c-4b78-4f75-a6a7-5396fe38b09a.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/aerobic-profile.xsd)
[!code-xml[XSD schema](xsd/aerobic-profile.xsd)]
