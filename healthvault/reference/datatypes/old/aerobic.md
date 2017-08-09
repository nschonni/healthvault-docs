---
uid: HV_90dbf000-fc55-4b92-b4a1-da45c36ad8bb
title: Aerobic exercise session
---

# Aerobic exercise session

## Overview

Property|Value
---|---
id|90dbf000-fc55-4b92-b4a1-da45c36ad8bb
name|Aerobic exercise session
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Old.AerobicSession](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.old.aerobicsession)

## Related data types

- [Aerobic profile](xref:HV_7b2ea78c-4b78-4f75-a6a7-5396fe38b09a)
- [Exercise samples](xref:HV_e1f92d7f-9699-4483-8223-8442874ec6d9)
- [Weekly aerobic exercise goal](xref:HV_e4501363-fb95-4a11-bb60-da64e98048b5)

## Details
Note: Please use the new exercise type instead of this type. <br /> An aerobic session is a single instance of exercise like running, biking, etc.

<a name='aerobic-session'></a>

### Root element: aerobic-session

A single session of aerobic exercise.

Note: Please use the new exercise type instead of this type. <br /> An aerobic session is a single instance of exercise like running, biking, etc.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time when the aerobic session occurred.|
session|[aerobic-session](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#aerobic-session)|1|1|The information about the entire aerobic session.|
session-samples|[aerobic-session-samples](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#aerobic-session-samples)|0|1|The information about the sample sets within the aerobic session.|
lap-session|[aerobic-lap-session](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#aerobic-lap-session)|0|unbounded|The information about the lap within an aerobic session.|

## Example
[!code-xml[Example](../../sample-xml/90dbf000-fc55-4b92-b4a1-da45c36ad8bb.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../../xsd/aerobic.xsd)
[!code-xml[XSD schema](../../xsd/aerobic.xsd)]
