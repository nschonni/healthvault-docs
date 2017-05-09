---
uid: HV_3B3C053B-B1FE-4E11-9E22-D4B480DE74E8
title: Insulin injection
---

# Insulin injection

## Overview

Property|Value
---|---
id|3B3C053B-B1FE-4E11-9E22-D4B480DE74E8
name|Insulin injection
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Insulin injection](https://go.microsoft.com/fwlink/?LinkID=136170)

## Related data types

- [Blood glucose](xref:HV_879e7c04-4e8a-4707-9ad3-b054df467ce4)
- [Medical device](xref:HV_EF9CF8D5-6C0B-4292-997F-4047240BC7BE)
- [Insulin injection usage](xref:HV_184166BE-8ADB-4D9C-8162-C403040E31AD)
- [Diabetic profile](xref:HV_80CF4080-AD3F-4BB5-A0B5-907C22F73017)

## Details
The injection may or may not have a device component. Each new injection package should have a new insulin-injection thing, even if there is a containing device that is reusable. Changes in regimen (min/max doses per day) should also cause a new thing to be created.

<a name='insulin-injection'></a>

### Root element: insulin-injection

Any insulin injection used to treat diabetes.

The injection may or may not have a device component. Each new injection package should have a new insulin-injection thing, even if there is a containing device that is reusable. Changes in regimen (min/max doses per day) should also cause a new thing to be created.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
type|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The type of the insulin used.|For example, 'Analoga' or 'Normal'|insulin-types
amount|[insulin-injection-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#insulin-injection-value)|1|1|The amount of insulin injected.|The typical range is 0.1-50IE. An IE unit is 1/100ml.|
device-id|string|0|1|The unique id or serial number for the insulin package.|If available, this value can be used to correlate results.|

## Example
[!code-xml[Example](sample-xml/3B3C053B-B1FE-4E11-9E22-D4B480DE74E8.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/insulin-injection.xsd)
[!code-xml[XSD schema](xsd/insulin-injection.xsd)]
