---
uid: HV_b81eb4a6-6eac-4292-ae93-3872d6870994
title: Heart rate
---

# Heart rate

## Overview

Property|Value
---|---
id|b81eb4a6-6eac-4292-ae93-3872d6870994
name|Heart rate
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Heart rate](https://go.microsoft.com/fwlink/?LinkID=136155)

## Related data types

- [Aerobic profile](xref:HV_7b2ea78c-4b78-4f75-a6a7-5396fe38b09a)
- [Blood oxygen saturation](xref:HV_3a54f95f-03d8-4f62-815f-f691fc94a500)
- [Blood pressure](xref:HV_ca3c57f4-f4c1-4e15-be67-0a3caf5414ed)
- [Cardiac profile](xref:HV_adaf49ad-8e10-49f8-9783-174819e97051)
- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Vital signs](xref:HV_73822612-C15F-4B49-9E65-6AF369E55C65)

## Details
A heart rate measurement in beats per minute.

<a name='heart-rate'></a>

### Root element: heart-rate

A measurement of the record owner's heart rate.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|date-time|1|1|The date and time of this measurement.||
value|[nonNegativeInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeInt)|1|1|The heart rate in beats per minute (BPM).||
measurement-method|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The technique used to obtain the measurement.||[heart-rate-measurement-method](xref:HV_9794654e-52ca-489d-9743-760b001d1cd7)
measurement-conditions|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The conditions under which the heart rate was measured.|Examples: Resting, Active, Morning, Evening.|[heart-rate-measurement-conditions](xref:HV_e9761c2c-81ef-4be6-b653-070f21eda07a)
measurement-flags|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Additional information about the measurement.|Examples: Incomplete measurement, irregular heartbeat, triple scan.|heart-rate-measurement-flags

## Example
[!code-xml[Example](sample-xml/b81eb4a6-6eac-4292-ae93-3872d6870994.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/heart-rate.xsd)
[!code-xml[XSD schema](xsd/heart-rate.xsd)]
