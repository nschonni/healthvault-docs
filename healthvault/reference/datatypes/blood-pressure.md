---
uid: HV_ca3c57f4-f4c1-4e15-be67-0a3caf5414ed
title: Blood pressure
---

# Blood pressure

## Overview

Property|Value
---|---
id|ca3c57f4-f4c1-4e15-be67-0a3caf5414ed
name|Blood pressure
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.BloodPressure](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.bloodpressure)
- [Microsoft.HealthVault.ItemTypes.BloodPressure](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.bloodpressure)

## Related data types

- [Cardiac profile](xref:HV_adaf49ad-8e10-49f8-9783-174819e97051)
- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
- [Heart rate](xref:HV_b81eb4a6-6eac-4292-ae93-3872d6870994)
- [Vital signs](xref:HV_73822612-C15F-4B49-9E65-6AF369E55C65)

## Details
A single blood pressure reading.

<a name='blood-pressure'></a>

### Root element: blood-pressure

Defines a single blood pressure reading.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time the reading was taken.|
systolic|[nonNegativeInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeInt)|1|1|The systolic pressure at the time of the reading.|The systolic pressure is the peak pressure in the arteries during a cardiac cycle. It is measured in millimeters of mercury (mmHg).
diastolic|[nonNegativeInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeInt)|1|1|The diastolic pressure at the time of the reading.|The diastolic pressure is the lowest pressure in the arteries during a cardiac cycle. It is measured in millimeters of mercury (mmHg).
pulse|[nonNegativeInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeInt)|0|1|The person's pulse rate at the time of the reading.|The pulse is measured in beats per minute.
irregular-heartbeat|boolean|0|1|Indicates whether an irregular heartbeat (arrhythmia) was detected when the measurement was taken.|The irregular heartbeat is a boolean indicator.

## Example
[!code-xml[Example](../sample-xml/ca3c57f4-f4c1-4e15-be67-0a3caf5414ed.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/bp.xsd)
[!code-xml[XSD schema](../xsd/bp.xsd)]
