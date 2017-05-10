---
uid: HV_85a21ddb-db20-4c65-8d30-33c899ccf612
title: Exercise
---

# Exercise

## Overview

Property|Value
---|---
id|85a21ddb-db20-4c65-8d30-33c899ccf612
name|Exercise
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Exercise](https://go.microsoft.com/fwlink/?LinkID=136119)

## Related data types

- [Aerobic profile](xref:HV_7b2ea78c-4b78-4f75-a6a7-5396fe38b09a)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
- [Exercise samples](xref:HV_e1f92d7f-9699-4483-8223-8442874ec6d9)
- [Weekly aerobic exercise goal](xref:HV_e4501363-fb95-4a11-bb60-da64e98048b5)

## Details
An exercise session such as running or climbing.

<a name='exercise'></a>

### Root element: exercise

Records the completion of an exercise.

Sample data - such as heartrate values collected at intervals during the exercise - are stored using the exercise sample type. All samples for an exercise should be added to the related items collection for the exercise. <br /> The exercise type is an update to the aerobic exercise session type, and there are certain complexities to supporting existing data. See "Using the Exercise Type" for more information.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|approx-date-time|1|1|The date and time when the exercise occurred.||
activity|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The type of activity.|Stores the overall activity for the exercise period. <br /> Examples: Running, hiking, walking, golfing, dancing.|[exercise-activities](xref:HV_54f3c660-07f6-4a1a-9461-1f498164c161), [aerobic-activities](xref:HV_779858b5-43e7-474d-b572-e4be9b1f6789)
title|string|0|1|A descriptive title for the exercise.|Examples: Hiking up Mt. Baker, 3-day walk, Memorial day triathlon.|
distance|[length-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#length-value)|0|1|The distance covered in the exercise.|Distances are stored in meters. The application must convert the distance entered by the user into meters and should also store the distance and units entered by the user in the display-value so that it can be displayed to the user in their preferred unit of measure when viewing the data.|
duration|[positiveDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveDouble)|0|1|The duration of the exercise in minutes.||
detail|[StructuredNameValue](#StructuredNameValue)|0|unbounded|Additional information about the exercise.|The detail information typically stores information that is specific to the type of exercise activity and any device used to measure it. <br /> Examples: Average heart rate, total distance, average temperature, intensity.|
segment|[ExerciseSegment](#ExerciseSegment)|0|unbounded|Information pertaining to a portion of the overall exercise.|This is typically used to store information about separate laps in a race or individual events within a triathlon.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StructuredNameValue'></a>
>
> ### StructuredNameValue
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> name|[coded-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#coded-value)|1|1|The name of the information stored in this detail.|The units of the information are defined in the vocabulary key. <br /> Example: Average heartrate uses the key AverageHeartrate_BPM. Example: Calories burned uses the key CaloriesBurned_calories.|[exercise-detail-names](xref:HV_67b4e697-d718-4cf5-8bd5-62da77afcb77)
> value|[structured-measurement](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#structured-measurement)|1|1|The value of the detail.|For example, to store an average heartrate of 125, place 125 in the value element and set the unit to "BPM". <br /> Units should be coded using the exercise-units vocabulary.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ExerciseSegment'></a>
>
> ### ExerciseSegment
>
> Information pertaining to a portion of the overall exercise.
>
> This is typically used to store information about separate laps in a race or individual events within a triathlon.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> activity|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The type of activity for this segment.|
> title|string|0|1|A descriptive title for this segment.|Examples: Lap 1, bicycle leg, first half.
> distance|[length-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#length-value)|0|1|The distance covered in the segment.|Distances are stored in meters. The application must convert the distance entered by the user into meters and should also store the distance and units entered by the user in the display-value so that it can be displayed to the user in their preferred unit of measure when viewing the data.
> duration|[positiveDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveDouble)|0|1|The duration of this segment in minutes.|
> offset|[nonNegativeDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeDouble)|0|1|The offset of this segment from the start of the exercise, measured in minutes.|
> detail|[StructuredNameValue](#StructuredNameValue)|0|unbounded|Additional information about the segment.|
>
>

## Example
[!code-xml[Example](sample-xml/85a21ddb-db20-4c65-8d30-33c899ccf612.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/exercise.xsd)
[!code-xml[XSD schema](xsd/exercise.xsd)]
