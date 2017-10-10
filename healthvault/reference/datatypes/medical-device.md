---
uid: HV_EF9CF8D5-6C0B-4292-997F-4047240BC7BE
title: Medical device
---

# Medical device

## Overview

Property|Value
---|---
id|EF9CF8D5-6C0B-4292-997F-4047240BC7BE
name|Medical device
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Device](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.device)
- [Microsoft.HealthVault.ItemTypes.Device](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.device)

## Related data types

- [Asthma inhaler](xref:HV_ff9ce191-2096-47d8-9300-5469a9883746)
- [Asthma inhaler usage](xref:HV_03efe378-976a-42f8-ae1e-507c497a8c6d)
- [Blood glucose](xref:HV_879e7c04-4e8a-4707-9ad3-b054df467ce4)
- [Defibrillator episode](xref:HV_a3d38add-b7b2-4ccd-856b-9b14bbc4e075)
- [Insulin injection](xref:HV_3B3C053B-B1FE-4E11-9E22-D4B480DE74E8)

## Related articles

- [Emergency Preparedness](http://go.microsoft.com/fwlink/?LinkId=513260)

## Details
This thing type describes medical equipment a person has.

<a name='device'></a>

### Root element: device

Information related to medical equipment.

This thing type describes medical equipment a person has.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time the report.|
device-name|string|0|1|The name of the medical equipment.|
vendor|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|The vendor of the medical equipment.|
model|string|0|1|Free form model name of the medical equipment.|
serial-number|string|0|1|Free form serial number of the medical equipment.|
anatomic-site|string|0|1|The location on the body where the device takes readings.|
description|string|0|1|A free form description of the of the medical equipment.|

## Example
[!code-xml[Example](../sample-xml/EF9CF8D5-6C0B-4292-997F-4047240BC7BE.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/device.xsd)
[!code-xml[XSD schema](../xsd/device.xsd)]
