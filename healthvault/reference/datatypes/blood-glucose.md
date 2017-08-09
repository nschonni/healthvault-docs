---
uid: HV_879e7c04-4e8a-4707-9ad3-b054df467ce4
title: Blood glucose
---

# Blood glucose

## Overview

Property|Value
---|---
id|879e7c04-4e8a-4707-9ad3-b054df467ce4
name|Blood glucose
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.BloodGlucose](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.bloodglucose)
- [Microsoft.HealthVault.ItemTypes.BloodGlucose](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.bloodglucose)

## Related data types

- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
- [Medical device](xref:HV_EF9CF8D5-6C0B-4292-997F-4047240BC7BE)
- [Insulin injection usage](xref:HV_184166BE-8ADB-4D9C-8162-C403040E31AD)
- [Diabetic profile](xref:HV_80CF4080-AD3F-4BB5-A0B5-907C22F73017)
- [Insulin injection](xref:HV_3B3C053B-B1FE-4E11-9E22-D4B480DE74E8)
- [Lab results](xref:HV_5800eab5-a8c2-482a-a4d6-f1db25ae08c3)

## Details
A single blood glucose reading.

<a name='blood-glucose'></a>

### Root element: blood-glucose

Defines a single blood glucose reading.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time the reading was taken.||
value|[blood-glucose-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#blood-glucose-value)|1|1|The value of the blood glucose measurement.||
glucose-measurement-type|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|An enumeration of the possible blood glucose measurement types, whole blood or plasma (serum).||[glucose-measurement-type](xref:HV_50173422-248c-4555-9da6-248d8981e261)
outside-operating-temp|boolean|0|1|Indicates whether the reading is outside the operating temperature range of the device that made the reading.||
is-control-test|boolean|0|1|Indicates whether the reading was the result of a control test.||
normalcy|[one-to-five](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#one-to-five)|0|1|A value that indicates how the reading compares to normal blood glucose concentrations (usually the same as the measurement range of the device that made the reading).|The value ranges from one to five with 1 being much lower than a normal reading, 2 being lower than a normal reading, 3 being equivalent to a normal reading, 4 being higher than a normal reading and 5 being much higher than a normal reading.|
measurement-context|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|An optional enumeration string that indicates contextual information about the reading.||[glucose-measurement-context](xref:HV_18eb66b4-d944-4aa7-be4d-3183b1e6f484)

## Example
[!code-xml[Example](../sample-xml/879e7c04-4e8a-4707-9ad3-b054df467ce4.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/blood-glucose.xsd)
[!code-xml[XSD schema](../xsd/blood-glucose.xsd)]
