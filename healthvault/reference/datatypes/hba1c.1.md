---
uid: HV_227F55FB-1001-4D4E-9F6A-8D893E07B451
title: HbA1C
---

# HbA1C

## Overview

Property|Value
---|---
id|227F55FB-1001-4D4E-9F6A-8D893E07B451
name|HbA1C
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.HbA1C](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.hba1c)
- [Microsoft.HealthVault.ItemTypes.HbA1C](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.hba1c)

## Details
HbA1c is a test that measures the amount of glycosylated hemoglobin in your blood.

<a name='HbA1C'></a>

### Root element: HbA1C

Defines a single HbA1C reading.

HbA1c is a test that measures the amount of glycosylated hemoglobin in your blood.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time the reading was taken.||
value|[percentage](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#percentage)|1|1|The HbA1C measurement as a percentage.||
HbA1C-assay-method|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The HbA1C reference method used for this measurement.|The measurement of HbA1c in human blood is most important for the longterm control of the glycaemic state in diabetic patients. There is no internationally agreed assay measurement method.|[HbA1C-assay-method](xref:HV_f32a02f2-6576-4bf1-a43c-4dba903063b4)
device-id|string|0|1|The unique id or serial number for the measurment device.|If available, this value can be used to correlate results.|

## Example
[!code-xml[Example](../sample-xml/227F55FB-1001-4D4E-9F6A-8D893E07B451.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/HbA1C.xsd)
[!code-xml[XSD schema](../xsd/HbA1C.xsd)]
