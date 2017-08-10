---
uid: HV_184166BE-8ADB-4D9C-8162-C403040E31AD
title: Insulin injection usage
---

# Insulin injection usage

## Overview

Property|Value
---|---
id|184166BE-8ADB-4D9C-8162-C403040E31AD
name|Insulin injection usage
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.InsulinInjectionUse](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.insulininjectionuse)
- [Microsoft.HealthVault.ItemTypes.InsulinInjectionUse](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.insulininjectionuse)

## Related data types

- [Blood glucose](xref:HV_879e7c04-4e8a-4707-9ad3-b054df467ce4)
- [Diabetic profile](xref:HV_80CF4080-AD3F-4BB5-A0B5-907C22F73017)
- [Insulin injection](xref:HV_3B3C053B-B1FE-4E11-9E22-D4B480DE74E8)

## Details
Note, this may wrap more than one "dose" if multiple injections per use are prescribed.

<a name='diabetes-insulin-injection-use'></a>

### Root element: diabetes-insulin-injection-use

A single use of an insulin-injection.

Note, this may wrap more than one "dose" if multiple injections per use are prescribed.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time when the insulin-injection was used.||
type|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The type of the insulin used.|For example, 'Analoga' or 'Normal'|insulin-types
amount|[insulin-injection-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#insulin-injection-value)|1|1|The amount of insulin injected.|The typical range is 0.1-50IE. An IE unit is 1/100ml.|
device-id|string|0|1|The unique id or serial number for the insulin package.|If available, this value can be used to correlate results.|

## Example
[!code-xml[Example](../sample-xml/184166BE-8ADB-4D9C-8162-C403040E31AD.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/insulin-injection-use.xsd)
[!code-xml[XSD schema](../xsd/insulin-injection-use.xsd)]
