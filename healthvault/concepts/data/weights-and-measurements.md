---
title: Measurement types
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn about how HealthVault deals with measurements like weights. 
---

Weights, Measurements and Display Values
========================================

HealthVault data types live in Microsoft.Health.ItemTypes. (You may come across mention of "thing type" rather than "item type." They're the same thing.)

One of the problems that the API has to deal with is the fact that there are different units for a single measurement. For distance, you might want to keep track using meters, but in some cases, users want to enter distances based on miles. So, we write a few conversions in, and when the user enters: 24 miles, we convert it to meters, and store that value. Whenever we need to show that value, we convert it back to miles.

As an example, look at the Weight type, which represents a person's weight. When you look for a weight type in the documentation, you find a Weight item type and a WeightValue item type. The Weight type is the weight of a person, and the WeightValue type is an abstract measurement of weight.

Floating-point numbers aren't exact, so in certain cases, two-way conversion may be lossy.

For example, a user might enter 24.81 miles and then have the program display 24.80999999 miles.

The HealthVault API deals with this situation by adding the concept of a "Display Value." When we want to store a value that is 24.81 miles, we store that exact text in a DisplayValue instance, and the converted value in meters. Applications that need to display the value use the DisplayType version, and those that need to do calculations use the value in meters.

The concept of having a display value and being a measurement is encapsulated in the Measurement&lt;MeasurementType&gt; generic class. Derived from that class are the following measurement types:

-   AltitudeMeasurement
-   BloodGlucoseMeasurement
-   DoubleMeasurement
-   FlowMeasurement
-   InsulinInjectionMeasurement
-   Int32Measurement
-   Length
-   PaceMeasurement
-   PowerMeasurement
-   SpeedMeasurement
-   StringMeasurement
-   TemperatureMeasurement
-   TorqueMeasurement
-   VolumeMeasurement
-   WeightValue

If you look at the **Value** property, you find that it's a WeightValue type, containing the weight in kilograms and the association display value.

One other field is the **When** property, which stores the time at which the weight measurement was taken. Unlike **EffectiveDate**, this field allows modification and is therefore more flexible.
