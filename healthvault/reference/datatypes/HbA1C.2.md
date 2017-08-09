---
uid: HV_62160199-b80f-4905-a55a-ac4ba825ceae
title: HbA1C
---

# HbA1C

## Overview

Property|Value
---|---
id|62160199-b80f-4905-a55a-ac4ba825ceae
name|HbA1C
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.HbA1CV2](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.hba1cv2)
- [Microsoft.HealthVault.ItemTypes.HbA1CV2](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.hba1cv2)

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
value|[HbA1CValue](#HbA1CValue)|1|1|The value of the HbA1C measurement.||
HbA1C-assay-method|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The HbA1C reference method used for this measurement.|The measurement of HbA1c in human blood is most important for the longterm control of the glycaemic state in diabetic patients. The hemoglobin A1C assay is generally accepted as the international standard.|[HbA1C-assay-method](xref:HV_f32a02f2-6576-4bf1-a43c-4dba903063b4)
device-id|string|0|1|The unique id or serial number for the measurment device.|If available, this value can be used to correlate results.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='HbA1CValue'></a>
>
> ### HbA1CValue
>
> The value of the HbA1C measurement.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> mmol-per-mol|double|1|1|The value of the HbA1C measurement in mmol/mol.|
> display|[display-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#display-value)|0|1|The display value for the HbA1C measurement.|
>
>

## Example
[!code-xml[Example](../sample-xml/62160199-b80f-4905-a55a-ac4ba825ceae.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/HbA1C.2.xsd)
[!code-xml[XSD schema](../xsd/HbA1C.2.xsd)]
