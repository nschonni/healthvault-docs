---
title: Common data types
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Overview of common HealthVault data types like display-value, codable-value, and date time values
---


Common data types
=================

This article describes some of the common data structures used to define thing types. Applications should adhere to these guidelines so that account holders can use their data with multiple applications across the HealthVault ecosystem.

Display-value
-------------

One of the problems when dealing with measurements is that the unit of measurement that the application wants to use for calculations, comparisons, and graphing is sometimes different from the units the user wants to see. For example, a user may want to view their weight in pounds, but an application may want to perform calculations in kilograms.

An application could be unit-aware and do unit conversion every time it reads a measurement value; however, this can lead to problems. Floating point numbers aren't exact, so in some cases the conversion may be lossy. In many cases two-way conversion doesn't lead back to the same value as before.

To address this, measurement values in HealthVault have two parts: the value and the display value.

-   The value is defined as a numeric element in a common base unit. For weight, the base unit is kilograms. For height it's meters. Each base unit is chosen to specifically meet the most common requirements for the measurement type.

-   The display value is the equivalent of the numeric value, but it's stored as a string value with a unit code. The string value should be set by the application to the exact value as entered by the user. The unit code should be set based on the unit of measure selected by the user. For example, a user entering a weight value might enter "180 pounds". The display value should be 180 in the string part, and the appropriate code should be selected to represent "pounds". The value would then be calculated from the 180 pounds and be set to 81.6466266 (kg).

When performing calculations, comparing values, or performing diagnostics, the application should use the value. When displaying the value to the user, the application should use the display value to preserve the unit preference of the user who entered the data. However, if the application wants to allow the user to select the units displayed, it can use the value and convert as necessary. Be wary of floating point rounding errors.

Codable-value
-------------

In medicine, procedures, conditions, medications, allergies, etc. are often coded to uniquely identify concepts in a way that can be computed upon more effectively than raw strings. A coding is a reference to a specific value in a well-defined vocabulary of terms. Popular medical vocabularies in use in the United States include SNOMED and RxNorm, but there are many more. HealthVault uses the same concept to identify other data in addition to those covered by the medical vocabularies. Some of those vocabularies may be provided by HealthVault itself, while others may come from other vendors/institutions. For more information, see <a href="vocabularies-and-codable-values.md" id="PageContent_14095_2">vocabularies and codable values</a>.

Coding is useful because it gives a simple way to uniquely identify something without having to compare user-entered text. A code is made up of a code value, a code family, a code system, and a code version.

A codable-value is a flexible way to allow data points to be identified by one or more vocabularies. HealthVault doesn't restrict which vocabularies are used in a codable-value. In many cases the HealthVault thing type documentation suggests vocabularies, but if the application has another vocabulary it can be used instead of or in addition to the suggested one. Codable-values accept multiple codes for each data point, allowing the data to be more portable between applications in the HealthVault ecosystem regardless of the vocabularies used by those applications.

In addition to the multiple codes allowed by the codable-value, there is a free-form text field. It's a HealthVault principle to accept health data in as many forms as possible, because we believe that applications should be free to make choices that work best for their users. In some cases applications just can't code the value to a vocabulary. In these cases the application can still provide the value in the free-form text field. This may make it harder to consume the value due to requiring string comparisons instead of code comparisons. For example, if the application is looking for medications that are ibuprofen, they may have to look for multiple strings such as <span class="literalValue">ibuprofen</span>, <span class="literalValue">Advil</span>, or <span class="literalValue">Motrin</span> instead of just looking for the RxNorm code for ibuprofen.

We recommend that applications fill in the code portion of the codable-value whenever possible. The vocabulary used is up to the application, but in many cases a suggestion is made in the HealthVault thing type documentation.

Measurement types
-----------------

Measurement types come in two forms:

-   General measurement: a generic coupling of a display string and a structured value that can be of any unit type.

-   A specific measurement: these measurements are strongly typed in the XML schema and provide a base value in a common unit of measure along with a display-value.

Both of these measurement types provide a place for applications to put the user-entered value and a place to put the numeric representation of that value.

### General measurement

A general measurement is used in HealthVault thing types where the measurement may not be of a fixed type. For example, in lab results, the measurement could be for anything from platelets to minerals. Each of these has a different base unit of measure but all need to be stored as a lab test result.

The display portion of the general measurement should include both the value and the units in the same string in a way that is displayable to the end user.

The structured portion of the general measurement should include the numeric value and the units of the numeric value as a codable-value.

### Specific measurement

The specific measurement types are defined for thing types where the unit of measure is well known. For example, height and weight are both well-known and require units of length and weight respectively. So, instead of these thing types using a general measurement, which would require the application to be flexible in dealing with the units for the measurement, these specific measurement types provide a numeric value as a base unit of measurement: meters for height and kilograms for weight. This numeric value should be used in all calculations, graphing, and diagnostics done with the data. In addition, a display-value is provided to hold the value in the unit of measure that the user entered or expects to see. See the display-value section for more details.

Date and time values
--------------------

HealthVault uses a few different date/time types to support different scenarios. Some date/times require precision to the milliseconds. Others allow the time zone to be specified. Others are descriptive rather than structured.

### Structured date/time types

A structured date/time is one in which the date/time elements are represented by XML elements containing integer values. For example, the date January 1, 2012 would be represented by the following date-time:

`<date><y>2012</y><m>1</m><d>1</d></date>`
The following table shows the structured date/time types and what parts are required (R), optional (O), or not applicable (na)

<table style="width:100%;">
<colgroup>
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Type</p></th>
<th><p>Year</p></th>
<th><p>Month</p></th>
<th><p>Day</p></th>
<th><p>Hour</p></th>
<th><p>Minute</p></th>
<th><p>Second</p></th>
<th><p>Millisecond</p></th>
<th><p>Time zone</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>date-time</p></td>
<td><p>R</p></td>
<td><p>R</p></td>
<td><p>R</p></td>
<td><p>O</p></td>
<td><p>O</p></td>
<td><p>O</p></td>
<td><p>O</p></td>
<td><p>O</p></td>
</tr>
<tr class="even">
<td><p>date</p></td>
<td><p>R</p></td>
<td><p>R</p></td>
<td><p>R</p></td>
<td><p>na</p></td>
<td><p>na</p></td>
<td><p>na</p></td>
<td><p>na</p></td>
<td><p>na</p></td>
</tr>
<tr class="odd">
<td><p>approx-date</p></td>
<td><p>R</p></td>
<td><p>O</p></td>
<td><p>O</p></td>
<td><p>na</p></td>
<td><p>na</p></td>
<td><p>na</p></td>
<td><p>na</p></td>
<td><p>na</p></td>
</tr>
<tr class="even">
<td><p>time</p></td>
<td><p>na</p></td>
<td><p>na</p></td>
<td><p>na</p></td>
<td><p>R</p></td>
<td><p>R</p></td>
<td><p>O</p></td>
<td><p>O</p></td>
<td><p>na</p></td>
</tr>
<tr class="odd">
<td><p>StructuredApproxDate</p></td>
<td><p>R</p></td>
<td><p>O</p></td>
<td><p>O</p></td>
<td><p>O</p></td>
<td><p>O</p></td>
<td><p>O</p></td>
<td><p>O</p></td>
<td><p>O</p></td>
</tr>
</tbody>
</table>

### Approximate date/time

The approx-date-time type allows for either a structured date/time or a descriptive one. The structured date/time is simply an instance of the StructuredApproxDate described above. The descriptive choice is a simple string and is intended to be less specific than can be described by a structured date. For example, "as an infant" or "after puberty" indicate date/time values that cannot be expressed by year, month, day, etc. These string-based representations of time are common in medicine and need to be accounted for.
