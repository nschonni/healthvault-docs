---
uid: HV_921588d1-27bf-423c-8e55-650d2fedb3e0
title: Spirometer reading
---

# Spirometer reading

## Overview

Property|Value
---|---
id|921588d1-27bf-423c-8e55-650d2fedb3e0
name|Spirometer reading
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Old.Spirometer](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.old.spirometer)

## Details
Note: Please use the peak flow type instead of this type.

<a name='spirometer'></a>

### Root element: spirometer

A single reading from a spirometer.

Note: Please use the peak flow type instead of this type.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time when the spirometer reading was taken.|
fev1|[flow-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#flow-value)|0|1|The forced expiratory volume in one second.|FEV1 is the forced expiratory volume in one measured in liters/second.
pef|[flow-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#flow-value)|0|1|The peak expirator flow.|PEF is the peak expiratory flow measured in liters/second.
warning|string|0|unbounded|The reading was not normal.|The presence of one or more of these elements indicates that the reading was not normal. The element value should contain text describing the concern.
problem|string|0|unbounded|The reading was not normal and action should be taken.|The presence of one or more of these elements indicates that the reading was not normal and that action should be taken. The element value should contain text describing the concern.
FEVoverFVC|[percentage](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#percentage)|0|1|The ratio of FEV 1 to FVC at the time of the reading.|In healthy adults this should be approximately 75 - 80%.
FEF25to75|[percentage](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#percentage)|0|1|The forced expiratory flow 25-75% at the time of the reading.|This is the average flow (or speed) of air coming out of the lung during the middle portion of the expiration.
FEF25to50|[percentage](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#percentage)|0|1|The forced expiratory flow 25-50% at the time of the reading.|This is the average flow (or speed) of air coming out of the lung during the middle portion of the expiration.
FIF25to75|[percentage](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#percentage)|0|1|The forced inspiratory flow 25-75% at the time of the reading.|This is the average flow (or speed) of air coming into the lung during the middle portion of the inspiration.
FIF25to50|[percentage](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#percentage)|0|1|The forced inspiratory flow 25-50% at the time of the reading.|This is the average flow (or speed) of air coming into the lung during the middle portion of the inspiration.
FET|[positiveDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveDouble)|0|1|The forced expiratory time at the time of the reading.|This is the length of the expiration in seconds.
SVC|[volume-value](#volume-value)|0|1|The slow vital capacity (SVC) at the time of the reading measured in liters (L).|The patient inspires fully and than slowly expires all the air in his lungs or the other way around: the patient expires fully and inspires slowly to a maximum.
TV|[volume-value](#volume-value)|0|1|The tidal volume at the time of the reading, measured in liters (L).|This is the specific volume of air is drawn into and then expired out of the lungs. Average flow (or speed) of air coming into the lung during the middle portion of the inspiration during the respiratory cycle.
MVV|[flow-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#flow-value)|0|1|The maximum voluntary ventilation (MVV) at the time of the reading, measured in liters per second (L/s).|For this test the patient inspires and expires in the spirometer over and over again as fast as he can, during at least 12 seconds.

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='volume-value'></a>
>
> ### volume-value
>
> A volume measurement.
>
> A volume measurement consists of the value in liters (L), which is the base unit of measurement for flow, and an optional display value. The display value is used to store the flow measurement in the user's preference of volume units. This avoids rounding errors when converting to and back from L.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> liters|[positiveDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveDouble)|1|1|The volume measurement in liters (L).|
> display|[display-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#display-value)|0|1|The display value for the volume measurement.|The display value contains the volume measurement value stored in the user's preference of units.
>
>

## Example
[!code-xml[Example](../../sample-xml/921588d1-27bf-423c-8e55-650d2fedb3e0.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../../xsd/spirometer.xsd)
[!code-xml[XSD schema](../../xsd/spirometer.xsd)]
