---
uid: HV_80CF4080-AD3F-4BB5-A0B5-907C22F73017
title: Diabetic profile
---

# Diabetic profile

## Overview

Property|Value
---|---
id|80CF4080-AD3F-4BB5-A0B5-907C22F73017
name|Diabetic profile
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.DiabeticProfile](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.diabeticprofile)
- [Microsoft.HealthVault.ItemTypes.DiabeticProfile](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.diabeticprofile)

## Related data types

- [Blood glucose](xref:HV_879e7c04-4e8a-4707-9ad3-b054df467ce4)
- [Insulin injection usage](xref:HV_184166BE-8ADB-4D9C-8162-C403040E31AD)
- [Insulin injection](xref:HV_3B3C053B-B1FE-4E11-9E22-D4B480DE74E8)

## Details
A person's diabetic profile is made up of a set of measurements that indicate the diabetic capabilities of the person.

<a name='diabetic-profile'></a>

### Root element: diabetic-profile

A summary of a person's diabetic condition.

A person's diabetic profile is made up of a set of measurements that indicate the diabetic capabilities of the person.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|date-time|1|1|The date/time when the diabetic profile measurements were taken.|
max-HbA1C|[percentage](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#percentage)|0|1|The maximum HbA1C reading (as a %) .|
target-glucose-zone-group|[TargetGlucoseZoneGroup](#TargetGlucoseZoneGroup)|0|unbounded|A grouping of glucose zones.|This allows for customized groupings of glucose zones based on different values. Glucose zones are often used to optimize management events for different purposes. By grouping glucose zones into named groups it is easier to identify the zones to use for a particular management event.

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TargetGlucoseZoneGroup'></a>
>
> ### TargetGlucoseZoneGroup
>
> A grouping of glucose zones.
>
> This allows for customized groupings of glucose zones based on different values. Glucose zones are often used to optimize management events for different purposes. By grouping glucose zones into named groups it is easier to identify the zones to use for a particular management event.
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
> target-glucose-zone|[TargetGlucoseZone](#TargetGlucoseZone)|0|unbounded|The heart rate zone definitions that make up the zone group.|Each heart rate zone definition defines a zone for the zone group. In most cases the zone definitions should not overlap.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TargetGlucoseZone'></a>
>
> ### TargetGlucoseZone
>
> A glucose zone.
>
> A glucose zone defines a range of glucose measurements <br /><br /> A zone is defined by a lower and upper limit measured in glucose percentage or as a percentage of a person's maximum glucose value.
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
> lower-bound|[ZoneBoundary](#ZoneBoundary)|1|1|The lower boundary of the glucose zone.|
> upper-bound|[ZoneBoundary](#ZoneBoundary)|1|1|The upper boundary of the glucose zone.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ZoneBoundary'></a>
>
> ### ZoneBoundary
>
> A glucose zone boundary.
>
> The boundary of a glucose zone may be set as either an absolute glucose measurement or as a percentage of a person's maximum glucose measurement.
>
> ### Choice
>
> Min occurs: 1
>
> Max occurs: 1
> Choice of absolute or relative boundary units.
>
> The boundary of a glucose zone may be set as either an absolute glucose measurement or as a percentage of a person's maximum glucose measurement.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> absolute-glucose|[blood-glucose-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#blood-glucose-value)|1|1|A zone boundary defined by an absolute glucose value.|The zone boundary is expressed as an absolute blood glucose value.
> percent-max-glucose|[percentage](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#percentage)|1|1|A zone boundary defined by a relative blood glucose value.|The zone boundary is expressed as a percentage of the person's maximum blood glucose value.
>
>

## Example
[!code-xml[Example](sample-xml/80CF4080-AD3F-4BB5-A0B5-907C22F73017.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/diabetic-profile.xsd)
[!code-xml[XSD schema](xsd/diabetic-profile.xsd)]
