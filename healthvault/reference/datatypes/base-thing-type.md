---
uid: HV_3e730686-781f-4616-aa0d-817bba8eb141
title: Base thing type
---

# Base thing type

## Overview

Property|Value
---|---
id|3e730686-781f-4616-aa0d-817bba8eb141
name|Base thing type
immutable|True
singleton|True
allow-readonly|False
effective date XPath|No effective date XPath

## Details
For instance, a weight-value type is used for the weight thing type as well as the dietary-intake-daily thing type.

<a name=''></a>

### Root element:
 Type:

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='duration-value'></a>
>
> ### duration-value
>
> A pair of approximate date-times used to create a range.
>
> This type derives uses two approximate date-times to provide a duration range.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> start-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|1|1|The approximate start date and time for the duration range.|
> end-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|The approximate end date and time for the duration range.|The end-date is optional in order to support indefinite durations.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='double-range'></a>
>
> ### double-range
>
> A pair of doubles used to create a range.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> minimum-range|double|1|1|The minimum value for the range.|
> maximum-range|double|1|1|The maximum value for the range.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='display-value'></a>
>
> ### display-value
>
> A numeric value used for display purposes and tagged with arbitrary units.
>
> Microsoft HealthVault standardizes its storage of data like length, weight, and temperature so that applications can process the data more easily. So, in order to support the user's preference of units the display value type is used to maintain the user entered value such that any application can display the value back to the user in the same form they entered it even though the data is stored in a base unit value. This prevents rounding errors on the data when converting to and from the base unit of measure.<br /><br /> The display value should be set whenever data is taken directly from the user through UI and it should be used to show data to the user when available.
>
> ### Extension
>
> Base type: double
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> units|string|required|||
> units-code|string|optional|||
> text|string|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='weight-value'></a>
>
> ### weight-value
>
> A weight measurement.
>
> A weight measurement consists of the value in kilograms, which is the base unit of measurement for weight, and an optional display value. The display value is used to store the weight measurement in the user's preference of weight units. This avoids rounding errors when converting to and back from kilograms.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> kg|[nonNegativeDouble](#nonNegativeDouble)|1|1|The weight measurement in kilograms.|
> display|[display-value](#display-value)|0|1|The display value for the weight measurement.|The display value contains the weight measurement value stored in the user's preference of units.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='length-value'></a>
>
> ### length-value
>
> A length measurement.
>
> A length measurement consists of the value in meters, which is the base unit of measurement for length, and an optional display value. The display value is used to store the length measurement in the user's preference of length units. This avoids rounding errors when converting to and back from meters.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> m|[positiveDouble](#positiveDouble)|1|1|The length measurement in meters.|
> display|[display-value](#display-value)|0|1|The display value for the length measurement.|The display value contains the length measurement value stored in the user's preference of units.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='flow-value'></a>
>
> ### flow-value
>
> A flow measurement.
>
> A flow measurement consists of the value in liters per second (L/s), which is the base unit of measurement for flow, and an optional display value. The display value is used to store the flow measurement in the user' s preference of flow units. This avoids rounding errors when converting to and back from L/s.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> liters-per-second|[positiveDouble](#positiveDouble)|1|1|The flow measurement in liters per second (L/s).|
> display|[display-value](#display-value)|0|1|The display value for the flow measurement.|The display value contains the flow measurement value stored in the user's preference of units.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='altitude-value'></a>
>
> ### altitude-value
>
> An altitude measurement.
>
> An altitude measurement consists of the value in meters above sea level, which is the base unit of measurement for altitude, and an optional display value. The display value is used to store the altitude measurement in the user's preference of altitude units. This avoids rounding errors when converting to and back from meters.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> m|double|1|1|The altitude measurement in meters.|A negative value indicates the measurement was take below sea level.
> display|[display-value](#display-value)|0|1|The display value for the altitude measurement.|The display value contains the altitude measurement value stored in the user's preference of units.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='temperature-value'></a>
>
> ### temperature-value
>
> A temperature measurement.
>
> A temperature measurement consists of the value in Celsuis (C), which is the base unit of measurement for temperature, and an optional display value. The display value is used to store the temperature in the user's preference of units. This avoids rounding errors when converting to and back from Celsius.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> celsius|double|1|1|The temperature measurement in Celsius(C).|
> display|[display-value](#display-value)|0|1|The display value for the temperature measurement.|The display value contains the temperature measurement value stored in the user's preference of units.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='pace-value'></a>
>
> ### pace-value
>
> A pace measurement.
>
> A pace measurement consists of the value in seconds per 100 meters, which is the base unit of measurement for pace, and an optional display value. The display value is used to store the pace in the user's preference of units. This avoids rounding errors when converting to and back from seconds per 100 meters.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> seconds-per-hundred-meters|[positiveDouble](#positiveDouble)|1|1|The pace measurement in seconds per 100 meters.|
> display|[display-value](#display-value)|0|1|The display value for the pace measurement.|The display value contains the pace measurement value stored in the user's preference of units.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='power-value'></a>
>
> ### power-value
>
> A power measurement.
>
> A power measurement consists of the value in watts, which is the base unit of measurement for power, and an optional display value. The display value is used to store the power in the user's preference of units. This avoids rounding errors when converting to and back from watts.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> watts|[positiveDouble](#positiveDouble)|1|1|The power measurement in watts.|
> display|[display-value](#display-value)|0|1|The display value for the power measurement.|The display value contains the power measurement value stored in the user's preference of units.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='torque-value'></a>
>
> ### torque-value
>
> A torque measurement.
>
> A torque measurement consists of the value in newton meters, which is the base unit of measurement for torque, and an optional display value. The display value is used to store the torque in the user's preference of units. This avoids rounding errors when converting to and back from newton meters.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> newton-meters|[positiveDouble](#positiveDouble)|1|1|The torque measurement in newton meters.|
> display|[display-value](#display-value)|0|1|The display value for the torque measurement.|The display value contains the torque measurement value stored in the user's preference of units.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='speed-value'></a>
>
> ### speed-value
>
> A speed measurement.
>
> A speed measurement consists of the value in meters per second (m/s), which is the base unit of measurement for speed, and an optional display value. The display value is used to store the speed in the user's preference of units. This avoids rounding errors when converting to and back from m/s.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> meters-per-second|[positiveDouble](#positiveDouble)|1|1|The speed measurement in meters per second (m/s).|
> display|[display-value](#display-value)|0|1|The display value for the speed measurement.|The display value contains the speed measurement value stored in the user's preference of units.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='blood-glucose-value'></a>
>
> ### blood-glucose-value
>
> A blood glucose measurement.
>
> A blood glucose measurement consists of the value in millimoles per liter (mmol/L), which is the base unit of measurement for blood glucose, and an optional display value. The display value is used to store the blood glucose measurement in the user's preference of measurement units. This avoids rounding errors when converting to and back from mmol/L.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> mmolPerL|[positiveDouble](#positiveDouble)|1|1|The blood glucose measurement in millimoles per liter.|
> display|[display-value](#display-value)|0|1|The display value for the blood glucose measurement.|The display value contains the blood glucose measurement value stored in the user's preference of units.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='insulin-injection-value'></a>
>
> ### insulin-injection-value
>
> A insulin injection measurement.
>
> A insulin injection consists of the value in IE units (1/100ml), which is the base unit of insulin injections, and an optional display value. The display value is used to store the insulin injection amount the user's preference of units. This avoids rounding errors when converting to and back from IE units
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> IE|[positiveDouble](#positiveDouble)|1|1|The insulin injeciton amount in IE units (1/100ml).|
> display|[display-value](#display-value)|0|1|The display value for the insulin injection amount.|The display value contains the insulin injection amount value stored in the user's preference of units.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='goal'></a>
>
> ### goal
>
> Defines a health or fitness goal.
>
> A goal may be a short-term achievement like losing weight or a long-term goal like competing in a marathon.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> target-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|The date upon which the person wants to complete the goal.|
> completion-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|The date on which the goal was completed.|
> status|[goal-status](#goal-status)|0|1|The current status of the goal.|The status is not automatically updated. "Active" goals may need to be evaluated to determine if they have been "achieved".
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='sample'></a>
>
> ### sample
>
> Defines a single sample.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> time-offset|[nonNegativeDouble](#nonNegativeDouble)|1|1|Offset is seconds from sample set base time.|
> note|string|0|1|Description of sample.|
> value|string|0|1|Value of sample.|The value of the sample can be any string. The value depends on the type of sample. Some sample types will have a simple int or double as the value. Others will have a comma separated list. For example, a "position" sample may have "25E,66N" (longitude,latitude) as the value.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='sample-set'></a>
>
> ### sample-set
>
> Defines a sample set.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> base-time|[date-time](xref:HV_File_dates#date-time)|1|1|Sample set base time from which samples are offset.||
> sample-unit|string|1|1|The unit that the value is stored in.|Each sample contains a value. All samples in a sample set should be stored using the same units. This value is a text description of the units the sample value is stored in. Use the "sample-unit-code" to describe the units as a dictionary code.|
> sample-unit-code|[codable-value](#codable-value)|1|1|The dictionary code for the unit that the value is stored in.|Each sample contains a value. All samples in a sample set should be stored using the same units.|Contact the HealthVault team to help define this vocabulary.
> sample|[sample](#sample)|0|unbounded|Sample set samples.||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='aerobic-session'></a>
>
> ### aerobic-session
>
> Defines a lap within a single aerobic session.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> mode|[codable-value](#codable-value)|0|1|The type of activity for the session.|The mode is the type of activity for the session, like biking, running, etc. The most common activities are part the of the Microsoft Health Lexicon and should be referenced using the code retrieved by calling GetVocabulary with "aerobic-activities" as the vocabulary name.<br /><br /> For activities that are not in the Microsoft Health Lexicon you can add the value to the text element of the codable value.|[aerobic-activities](xref:HV_779858b5-43e7-474d-b572-e4be9b1f6789)
> distance|[length-value](#length-value)|0|1|The distance covered in the session.|Distances are stored in meters. The application must convert the distance entered by the user into meters and should also store the distance and units entered by the user in the display-value so that it can be displayed to the user in their preferred unit of measure when viewing the data.|
> minutes|[positiveDouble](#positiveDouble)|0|1|The duration of the session in minutes.||
> intensity|[one-to-five](#one-to-five)|0|1|The subjective average intensity of the session.|Intensity is measured on a scale from one to five where one is easy and five is the most intense.|
> peak-heartrate|[positiveInt](#positiveInt)|0|1|The highest heart rate reached during the session.|The peak heart rate for a session differs from the person's maximum heart rate in that a person most likely will not reach their maximum heart rate during an aerobic session. This measurement defines the highest heart rate recorded during the session.|
> avg-heartrate|[positiveInt](#positiveInt)|0|1|The average heart rate reached during the session.||
> min-heartrate|[positiveInt](#positiveInt)|0|1|The minimum heart rate reached during the session.|This is measured in beats per minute.|
> energy|[positiveDouble](#positiveDouble)|0|1|The food energy expended during the session.|This is measured in kilojoules .|
> energy-from-fat|[positiveDouble](#positiveDouble)|0|1|The food energy burned from fat during the session.|This is measured in kilojoules.|
> peak-speed|[speed-value](#speed-value)|0|1|The maximum speed achieved during the session.|This is measured in meters per second.|
> avg-speed|[speed-value](#speed-value)|0|1|The average speed achieved during the session.|This is measured in meters per second.|
> min-speed|[speed-value](#speed-value)|0|1|The minimum speed achieved during the session.|This is measured in meters per second.|
> peak-pace|[pace-value](#pace-value)|0|1|The maximum pace achieved during the session.|This is measured in seconds per 100 meters.|
> avg-pace|[pace-value](#pace-value)|0|1|The average pace achieved during the session.|This is measured in seconds per 100 meters.|
> min-pace|[pace-value](#pace-value)|0|1|The minimum pace achieved during the session.|This is measured in seconds per 100 meters.|
> peak-power|[power-value](#power-value)|0|1|The maximum power achieved during the session.|This is measured in watts.|
> avg-power|[power-value](#power-value)|0|1|The average power achieved during the session.|This is measured in watts.|
> min-power|[power-value](#power-value)|0|1|The minimum power achieved during the session.|This is measured in watts.|
> peak-torque|[torque-value](#torque-value)|0|1|The maximum torque achieved during the session.|This is measured in newton meters.|
> avg-torque|[torque-value](#torque-value)|0|1|The average torque achieved during the session.|This is measured in newton meters.|
> min-torque|[torque-value](#torque-value)|0|1|The minimum torque achieved during the session.|This is measured in newton meters.|
> left-right-balance|[percentage](#percentage)|0|1|The power output balance between left and right strokes.|This is measured as a percentage (%) relating to the left. For example, a value of 30 indicates that 30% of the power came from the left, while 70% came from the right.|
> peak-cadence|[positiveDouble](#positiveDouble)|0|1|The maximum cadence achieved during the session. T|his is measured in revolutions per minute (rpm).|
> avg-cadence|[positiveDouble](#positiveDouble)|0|1|The average cadence achieved during the session.|This is measured in revolutions per minute (rpm).|
> min-cadence|[positiveDouble](#positiveDouble)|0|1|The minimum cadence achieved during the session.|This is measured in revolutions per minute (rpm).|
> peak-temperature|[temperature-value](#temperature-value)|0|1|The maximum temperature achieved during the session.|This is measured in degrees Celsius (C).|
> avg-temperature|[temperature-value](#temperature-value)|0|1|The average temperature achieved during the session.|This is measured in degrees Celsius (C).|
> min-temperature|[temperature-value](#temperature-value)|0|1|The minimum temperature achieved during the session.|This is measured in degrees Celsius (C).|
> peak-altitude|[altitude-value](#altitude-value)|0|1|The maximum altitude achieved during the session.|This is measured in meters above mean sea level.|
> avg-altitude|[altitude-value](#altitude-value)|0|1|The average altitude achieved during the session.|This is measured in meters above mean sea level.|
> min-altitude|[altitude-value](#altitude-value)|0|1|The minimum altitude achieved during the session.|This is measured in meters above mean sea level.|
> elevation-gain|[length-value](#length-value)|0|1|The gain in elevation achieved during the session.|This is measured in meters.|
> elevation-loss|[length-value](#length-value)|0|1|The loss in elevation achieved during the session.|This is measured in meters.|
> number-of-steps|[nonNegativeInt](#nonNegativeInt)|0|1|Number of steps taken in this session.||
> number-of-aerobic-steps|[nonNegativeInt](#nonNegativeInt)|0|1|Total steps taken in the aerobic activity range.|Total steps taken in the aerobic activity range. This will be less than or equal to the total steps taken given that the participant may not remain in the aerobic activity range for the entire session.|
> aerobic-step-minutes|[nonNegativeDouble](#nonNegativeDouble)|0|1|Total duration spent in the aerobic activity range.|This item will be recorded in units of minutes.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='aerobic-session-samples'></a>
>
> ### aerobic-session-samples
>
> Defines sample sets for an aerobic session.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> heartrate-samples|[sample-set](#sample-set)|0|1|Heart rate sample set for aerobic session.|
> distance-samples|[sample-set](#sample-set)|0|1|Distance sample set for aerobic session.|
> position-samples|[sample-set](#sample-set)|0|1|Position sample set for aerobic session.|Positions are expected to be in either longitude/latitude or UTM coordinates.
> speed-samples|[sample-set](#sample-set)|0|1|Speed sample set for aerobic session.|
> pace-samples|[sample-set](#sample-set)|0|1|Pace sample set for aerobic session.|
> power-samples|[sample-set](#sample-set)|0|1|Power sample set for aerobic session.|
> torque-samples|[sample-set](#sample-set)|0|1|Torque sample set for aerobic session.|
> cadence-samples|[sample-set](#sample-set)|0|1|Cadence sample set for aerobic session.|
> temperature-samples|[sample-set](#sample-set)|0|1|Temperature sample set for aerobic session.|
> altitude-samples|[sample-set](#sample-set)|0|1|Altitude sample set for aerobic session.|
> air-pressure-samples|[sample-set](#sample-set)|0|1|Air pressure sample set for aerobic session.|
> number-of-steps-samples|[sample-set](#sample-set)|0|1|Number of steps taken during this sample.|
> number-of-aerobic-steps-samples|[sample-set](#sample-set)|0|1|Total steps taken in the aerobic activity range.|Total steps taken in the aerobic activity range for the relevant sample. This value will be less than or equal to the total steps taken given that the participant may not remain in the aerobic activity range for the entire sample.
> aerobic-step-minutes-samples|[sample-set](#sample-set)|0|1|Total duration spent in the aerobic activity range.|This item will be recorded in units of minutes.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='aerobic-lap-session'></a>
>
> ### aerobic-lap-session
>
> One stage of the aerobic session.
>
> For example, one circuit of a running track or one length of a swimming pool. Usually indicated by the person pressing the stopwatch during exercise. This may occur multiple times in a session.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|string|0|1|Optional description for this lap, such as "lap 1".|
> seconds-into-session|[nonNegativeDouble](#nonNegativeDouble)|0|1|The start time of the lap relative to the entire session.|This is measured in seconds.
> lap-session|[aerobic-session](#aerobic-session)|0|1|The lap session aerobic measurements.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='address'></a>
>
> ### address
>
> Defines a physical or mailing address.
>
> An address may be used for either a mailing address or physical location.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> description|string|0|1|A description of the address.|For example, a person may label the address as "My home address" or "My mailing address".
> is-primary|boolean|0|1|States if the addresses is the primary address for contacting the person.|If true, the address is the preferred address for contacting the person.
> street|string|1|unbounded|The street portion of the address.|The street address may be made up of one or more lines and should adhere to the standard for the locale in which the address resides.
> city|string|1|1|The city portion of the address.|
> state|string|0|1|The state or province portion of the address.|
> postcode|string|1|1|The postal code portion of the address.|The postal code should adhere to the standard for the locale in which the address resides.
> country|string|1|1|The country/region portion of the address.|This should be a string representation of the country/region as defined by the user. It is not used for processing so it doesn't have to be an ISO-3166 code. For example, a person could refer to the United States of America as "US", "USA", "United States", or "United States of America".
> county|string|0|1|The county portion of the address.|The county should adhere to the standard for the locale in which the address resides.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='phone'></a>
>
> ### phone
>
> A phone number.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> description|string|0|1|A person's description of the phone number.|This is used to describe the phone number. For example, "home", "mobile", "work", etc.
> is-primary|boolean|0|1|States if the phone number is the primary number for contacting the person.|If true, the phone number is the preferred number for contacting the person.
> number|string|1|1|The phone number.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='email'></a>
>
> ### email
>
> An email address.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> description|string|0|1|A person's description of the email address.|This is used to describe the email address. For example, "personal", "work", etc.
> is-primary|boolean|0|1|States if the email address is the primary address for contacting the person.|If true, the email address is the preferred address for contacting the person.
> address|string|1|1|The email address.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='communication-type'></a>
>
> ### communication-type
>
> Defines what type of communication is used.
>
> This type is used to specify the communication medium (i.e. phone, email, pager, etc.), the priority of which medium is preferred and the class (i.e. home, office, mobile, etc.) of medium.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> communication-medium|[codable-value](#codable-value)|1|1|Defines medium of communication used.||[communication-medium](xref:HV_0f4ffdf7-0da2-4ebc-a6ea-9afc92dfa195)
> priority|[positiveInt](#positiveInt)|0|1|Defines priority of communication medium.|Preferred medium is lower value, such as phone-1, phone-2, etc.|
> class|[codable-value](#codable-value)|0|1|Defines class of communication used.||[communication-class](xref:HV_af403245-9f78-4b05-97e1-71d273b842b6)
> value|string|1|1|System.Object[]||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='language'></a>
>
> ### language
>
> Defines a spoken language.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> language|[codable-value](#codable-value)|0|1|The language.|The Microsoft Health Lexicon defines codes for many of the common spoken languages. In most cases the language should be specified by using the code retrieved from the Microsoft Health Lexicon by calling GetVocabulary with "languages" as the vocabulary name. If the language doesn't exist the Microsoft Health Lexicon the "text" element of the codable value can be used to specify the language.|iso:iso639-1
> is-primary|boolean|0|1|States if the language is the primary language of the person.|If true, the language is the preferred spoken language of the person.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='name'></a>
>
> ### name
>
> Defines a person's name.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> full|string|1|1|The person's full name.||
> title|[codable-value](#codable-value)|0|1|The person's title.|For example, "Mr.", "Ms.", "Mrs.", etc.|[name-prefixes](xref:HV_a96ec145-6a52-4f8b-afcb-e5cc74c883c4)
> first|string|0|1|The person's given name.||
> middle|string|0|1|The person's middle name.||
> last|string|0|1|The person's family/sur name.||
> suffix|[codable-value](#codable-value)|0|1|The person's name suffix.|For example, "Jr.", "Sr.", etc.|[name-suffixes](xref:HV_35ed8304-0c8c-4b3c-816d-0d34130395d4)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='person'></a>
>
> ### person
>
> Information related to a contact.
>
> A contact may be an emergency contact, contact information for a doctor, lawyer, etc.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> name|[name](#name)|1|1|The name of the contact person.||
> organization|string|0|1|The name of the organization the contact belongs to.||
> professional-training|string|0|1|The person's professional training.||
> id|string|0|1|The identification number for the person in the organization.||
> contact|[contact](#contact)|0|1|Information on how to contact the person.||
> type|[codable-value](#codable-value)|0|1|The type of the contact person.|A person may be an emergency contact, a health care provider, etc. The values should be taken from the Microsoft Health Lexicon vocabulary 'person-types'.|[person-types](xref:HV_97fabb31-392a-44af-b53f-085e5d02de39)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='contact'></a>
>
> ### contact
>
> Defines a set of contact information.
>
> The contact information can consist of any number of physical/mailing addresses, phone numbers, or email addresses.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> address|[address](#address)|0|unbounded|Physical or mailing addresses.|
> phone|[phone](#phone)|0|unbounded|Telephone numbers such as home, work, or mobile.|
> email|[email](#email)|0|unbounded|Email addresses.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='coded-value'></a>
>
> ### coded-value
>
> Defines a value which has been coded in a Microsoft Health Vocabulary.
>
> Microsoft HealthVault provides a set of vocabularies containing common health and fitness terms and codes. Vocabularies are identified by their family, type, and version and contain values which identify an entry in that vocabulary by code.<br /><br /> For example, a prescription vocabulary may be identified by the family 'NCPDP', type 'SCRIPT', and version '1.0' and contain a code of 10 which identifies a 'tablet' form of medication.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> value|string|1|1|The code value which identifies the item in the vocabulary.|Codes are unique to the vocabulary they reside in. The codes for a particular vocabulary can be enumerated using GetVocabulary.
> family|string|0|1|The family of the vocabulary.|The family of a vocabulary partially identifies the vocabulary instance along with type and version. If the value is missing the family is assumed to be 'wc' which is the Microsoft Health Lexicon. <br /> For example, 'NCPDP' is the vocabulary family for codes in the National Council for Prescription Drug Programs.
> type|string|1|1|The type of the vocabulary.|This is the name that identifies the vocabulary in the family of vocabularies.<br /><br /> For example, 'SCRIPT' is the vocabulary name for medical prescriptions in the 'NCPDP' family of vocabularies.
> version|string|0|1|The version of the vocabulary.|The version identifies which version of a vocabulary identified by the 'type' element the code is in if more than one version is present.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='codable-value'></a>
>
> ### codable-value
>
> A value that may have codes from one or more Microsoft Health vocabularies associated with it.
>
> A codable value represents a value that may reference a coded value in one or more of the Microsoft Health vocabularies. Though it does not require the value to be in a vocabulary.<br /><br /> For example, aerobic session data has a mode element of type codable-value. Although many common forms of aerobic session mode can be found in the Microsoft Health Lexicon using the 'aerobic-activities' vocabulary, not all possible activities can be found there. If the activity does exist in the vocabulary it is recommended that applications add the coded-value for that code as a 'code' element and set the 'text' element to the display value for that code. If the activity does not exist in the vocabulary the 'code' element should not be specified and the 'text' element should contain the data the user entered.<br /><br /> By using the coded-value when available the data can be easily localized by Microsoft HealthVault and can also be utilized by applications that are mining the data based on certain code values.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> text|string|1|1|The textual representation of the value.|This may be the display value from one of the coded-values or it may be the user entered value.
> code|[coded-value](#coded-value)|0|unbounded|The codes representing the value from a Microsoft Health vocabulary.|Some values can be represented by codes in more that one vocabulary. If appropriate add coded-values from as many vocabularies as are relevant.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='lab-result-type'></a>
>
> ### lab-result-type
>
> A clinical value within a laboratory result.
>
> This type is define a clinical value within a laboratory result, including value, unit, reference and toxic ranges.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> value|double|0|1|The value of the laboratory result.||
> unit|[codable-value](#codable-value)|0|1|Units used to define laboratory result.||[lab-results-units](xref:HV_2149be34-4120-4262-baac-d8a0c22e47fd)
> reference-range|[double-range](#double-range)|0|1|The reference range for the laboratory result.||
> toxic-range|[double-range](#double-range)|0|1|The toxic range for the laboratory result.||
> text-value|string|0|1|Free form text for laboratory results.||
> flag|[codable-value](#codable-value)|0|unbounded|Flag for laboratory results.|Example values are normal, critical, high and low.|lab-results-flag
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='lab-test-type'></a>
>
> ### lab-test-type
>
> A laboratory test component, including the lab result value details.
>
> This type is used to define components without a larger clinical laboratory report.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> when|[date-time](xref:HV_File_dates#date-time)|1|1|The date of the laboratory test.||
> name|string|0|1|The name of the laboratory test.||
> substance|[codable-value](#codable-value)|0|1|The substance tested.||Contact the HealthVault team to help define this vocabulary.
> collection-method|[codable-value](#codable-value)|0|1|The collection method for the laboratory test.||Contact the HealthVault team to help define this vocabulary.
> abbreviation|string|0|1|The abbreviation for the laboratory test.||
> description|string|0|1|Free form description of the laboratory test.||
> code|[codable-value](#codable-value)|0|unbounded|The clinical code for the laboratory test.||[LOINC](xref:HV_dd56c2b6-cbdd-4588-af7c-ae26df0521e3)
> result|[lab-result-type](#lab-result-type)|0|1|A clinical value within a laboratory result.|This type is define a clinical value within a laboratory result, including value, unit, reference and toxic ranges.|
> status|[codable-value](#codable-value)|0|1|The status of the laboratory result.|Examples of status include complete and pending.|lab-results-status
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='document-reference-type'></a>
>
> ### document-reference-type
>
> Defines a document reference.
>
> This type is used to define a specific document reference, including classification, index and version.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> title|string|1|1|The title of the document reference.|
> url|string|1|1|The URL for the document reference.|
> document-index|string|1|1|The index for the document reference.|
> version|string|1|1|The version of the document reference.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Organization'></a>
>
> ### Organization
>
> An organization entity.
>
> An entity such as a hospital, a pharmacy, or a doctor's office.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> name|string|1|1|The name of the organization.||
> contact|[contact](#contact)|0|1|The contact information for the organization.||
> type|[codable-value](#codable-value)|0|1|The type of the organization.||Contact the HealthVault team to help define this vocabulary.
> website|string|0|1|The url for the organization's website.||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='condition'></a>
>
> ### condition
>
> Defines a single health or medical issue/problem.
>
> CCR qualifiers and other notes should go in the common/note section of the thing.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> name|[codable-value](#codable-value)|1|1|The name or description of the condition.||Contact the HealthVault team to help define this vocabulary.
> onset-date|[approx-date](xref:HV_File_dates#approx-date)|0|1|The date of onset or the first diagnosis.||
> resolution-date|[approx-date](xref:HV_File_dates#approx-date)|0|1|The date the condition resolved (or for multiple acute episodes, the last date the condition resolved).||
> resolution|string|0|1|A statement of how the condition was resolved.||
> occurrence|[codable-value](#codable-value)|0|1|How often the condition occurs.|Examples: acute, chronic.|Contact the HealthVault team to help define this vocabulary.
> severity|[codable-value](#codable-value)|0|1|The severity for the condition||[condition-severity](xref:HV_58055e78-368d-4a06-bb8c-dc64df6ee44f)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='structured-measurement'></a>
>
> ### structured-measurement
>
> A measurement using specific units.
>
> Examples include 30 cc, 500 mg, 15 liters, 30 inches, etc.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> value|double|1|1|The value of the measurement.||
> units|[codable-value](#codable-value)|1|1|The units for the measurement.|A list of vocabularies may be found in the preferred vocabulary.|[measurement-unit-sets](xref:HV_40bed0b8-17c9-4387-b506-6523cd201918)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='general-measurement'></a>
>
> ### general-measurement
>
> A coded measurement and a display representation.
>
> Examples include 30 cc, 500 mg, 15 liters, 30 inches, etc.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> display|string|1|1|A user-readable string.|Applications typically display this string.
> structured|[structured-measurement](#structured-measurement)|0|unbounded|The coded value of the measurement|Applications typically use this for calculations, charting, or graphing.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='group-membership-type'></a>
>
> ### group-membership-type
>
> A membership of the record owner in a specific group.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> name|[codable-value](#codable-value)|1|1|The name of the group type.|Examples: Organization, SpecialProgram, BargainingUnit.|group-membership-type-name
> value|string|1|1|The value the member has for the group type.|For example, a name of BargainingUnit might have a value of HourlyWorkers.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='volume-value'></a>
>
> ### volume-value
>
> A volume measurement.
>
> A volume measurement consists of the value in liters (L), and an optional display value. The display value is used to store the volume measurement in the user's preference of volume units. This avoids rounding errors when converting between units.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> liters|[nonNegativeDouble](#nonNegativeDouble)|1|1|The volume measurement in liters (L).|
> display|[display-value](#display-value)|0|1|The display value for the volume measurement.|The display value contains the volume measurement value stored in the user's preference of units.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='pressure-value'></a>
>
> ### pressure-value
>
> A pressure measurement.
>
> A pressure measurement consists of the value in pascals (Pa), and an optional display value. The display value is used to store the pressure measurement in the user's preference of pressure units. This avoids rounding errors when converting between units.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> pascals|[nonNegativeDouble](#nonNegativeDouble)|1|1|The SI unit of measure for pressure.||[pressure-units](xref:HV_6991009c-f9e2-4bb6-8041-3538d65dfe1b)
> display|[display-value](#display-value)|0|1|The display value for the pressure measurement.|The display value contains the pressure measurement value stored in the user's preference of units.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='respiratory-rate-value'></a>
>
> ### respiratory-rate-value
>
> A respiratory rate measurement.
>
> A respiratory rate measurement consists of the value in breaths per minute and an optional display value. The display value is used to store the respiratory rate measurement in the user' s preference of units. This avoids rounding errors when converting between units.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> breaths-per-minute|[nonNegativeDouble](#nonNegativeDouble)|1|1|The number of breaths taken during one minute.|
> display|[display-value](#display-value)|0|1|The display value for the respiratory rate measurement.|The display value contains the respiratory rate measurement value stored in the user's preference of units.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='concentration-value'></a>
>
> ### concentration-value
>
> Concentration value (volume / volume).
>
> Concentration measurement consists of the value in millimoles per liter (mmol/L), and an optional display value. The display value is used to store the measurement in the user's preference of measurement units.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> mmolPerL|[nonNegativeDouble](#nonNegativeDouble)|1|1|The concentration measurement in millimoles per liter.|
> display|[display-value](#display-value)|0|1|The display value for the concentration measurement.|The display value contains the concentration measurement value stored in the user's preference of units.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='positiveDouble'></a>
>
> ### positiveDouble
>
> A number, including a decimal point, greater than zero.
>
> This type derives from double and ensures that all values are greater than zero.
>
> ### Restriction
>
> Base type: double
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minExclusive|0||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='nonNegativeDouble'></a>
>
> ### nonNegativeDouble
>
> A number, including a decimal point, greater than or equal to zero.
>
> This type derives from double and ensures that all values are greater than or equal to zero.
>
> ### Restriction
>
> Base type: double
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minInclusive|0||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='positiveInt'></a>
>
> ### positiveInt
>
> A 32-bit number, excluding a decimal point, greater than zero.
>
> This type derives from int and ensures that all values are greater than zero.
>
> ### Restriction
>
> Base type: [int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minExclusive|0||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='nonNegativeInt'></a>
>
> ### nonNegativeInt
>
> A 32-bit number, excluding a decimal point, greater than or equal to zero.
>
> This type derives from int and ensures that all values are greater than or equal to zero.
>
> ### Restriction
>
> Base type: [int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minInclusive|0||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='percentage'></a>
>
> ### percentage
>
> A decimal number between zero and one.
>
> This type derives from double and ensures that all values are between zero and one inclusive.
>
> ### Restriction
>
> Base type: double
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minInclusive|0||
> maxInclusive|1||
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
> <a name='goal-status'></a>
>
> ### goal-status
>
> An enumeration of the possible goal states.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Active|The goal is actively being worked toward.|
> enumeration|Achieved|The goal has been achieved.|
> enumeration|Abandoned|The goal has been abandoned.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='one-to-five'></a>
>
> ### one-to-five
>
> An integer value from one to five.
>
> This type is used in rating something. For instance, an aerobic session intensity may be rated from one to five where five is the most intense and one is the least intense.
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
> maxInclusive|5||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='stringnz'></a>
>
> ### stringnz
>
> A string that is at least one character in length.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='stringnznw'></a>
>
> ### stringnznw
>
> A non-zero length string that must contain non-whitespace characters.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> pattern|(\s*[^\s]+\s*)+||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string128'></a>
>
> ### string128
>
> A string with max of 128 characters.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|128||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string255'></a>
>
> ### string255
>
> A string with max of 255 characters.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|255||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='guid'></a>
>
> ### guid
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> pattern|[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}||
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/base.xsd)
[!code-xml[XSD schema](../xsd/base.xsd)]
