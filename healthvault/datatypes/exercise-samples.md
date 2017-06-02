---
uid: HV_e1f92d7f-9699-4483-8223-8442874ec6d9
title: Exercise samples
---

# Exercise samples

## Overview

Property|Value
---|---
id|e1f92d7f-9699-4483-8223-8442874ec6d9
name|Exercise samples
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.ExerciseSamples](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.exercisesamples)
- [Microsoft.HealthVault.ItemTypes.ExerciseSamples](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.exercisesamples)

## Related data types

- [Aerobic exercise session](xref:HV_90dbf000-fc55-4b92-b4a1-da45c36ad8bb)
- [Exercise](xref:HV_85a21ddb-db20-4c65-8d30-33c899ccf612)
- [Heart rate](xref:HV_b81eb4a6-6eac-4292-ae93-3872d6870994)

## Details
Examples: Heart rate samples, speed samples, position samples. <br /> Exercise samples are related to exercises through related items. <br /> The samples are stored in the other-data section of the object, and must be fetched by specifying HealthItemRecordSections.OtherData. <br /> The format of the other-data section is the HealthVault comma-separated format.

<a name='exercise-samples'></a>

### Root element: exercise-samples

Stores a set of samples related to an exercise.

Examples: Heart rate samples, speed samples, position samples. <br /> Exercise samples are related to exercises through related items.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|approx-date-time|1|1|The starting date and time when the samples were created.||
name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The kind of information that is stored in this sample set.||[exercise-sample-names](xref:HV_ab3a6eec-3fd2-43d0-aca1-66928a60442a)
unit|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The unit of measure for the samples.||[exercise-units](xref:HV_73fc9713-5551-42ed-8703-9304d4794022)
sampling-interval|double|1|1|The time interval between samples, in seconds.||

## Example
[!code-xml[Example](sample-xml/e1f92d7f-9699-4483-8223-8442874ec6d9.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/exercise-samples.xsd)
[!code-xml[XSD schema](xsd/exercise-samples.xsd)]
