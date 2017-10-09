---
uid: HV_98f76958-e34f-459b-a760-83c1699add38
title: Cholesterol
---

# Cholesterol

## Overview

Property|Value
---|---
id|98f76958-e34f-459b-a760-83c1699add38
name|Cholesterol
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.CholesterolProfileV2](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.cholesterolprofilev2)
- [Microsoft.HealthVault.ItemTypes.CholesterolProfileV2](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.cholesterolprofilev2)

## Related data types

- [Daily dietary intake](xref:HV_9c29c6b9-f40e-44ff-b24e-fba6f3074638)
- [Lab results](xref:HV_5800eab5-a8c2-482a-a4d6-f1db25ae08c3)
- [Vital signs](xref:HV_73822612-C15F-4B49-9E65-6AF369E55C65)

## Details
A single cholesterol reading.

<a name='cholesterol-profile'></a>

### Root element: cholesterol-profile

Defines cholesterol reading in the blood.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time the reading was taken.|
ldl|[concentration-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#concentration-value)|0|1|Low density lipoprotein value.|The LDL value measures the amount of low-density lipoprotein (LDL) cholesterol in the blood. It is stored in mmol/L.
hdl|[concentration-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#concentration-value)|0|1|High density lipoprotein value.|The HDL value measures the amount of high-density lipoprotein (HDL) cholesterol, in the blood. It is stored in mmol/L.
total-cholesterol|[concentration-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#concentration-value)|0|1|Total cholesterol.|Total cholesterol value in blood. It is stored in mmol/L.
triglyceride|[concentration-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#concentration-value)|0|1|Triglyceride level.|Triglyceride value measures the amount of triglycerides in the blood. It is stored in mmol/L.

## Example
[!code-xml[Example](../sample-xml/98f76958-e34f-459b-a760-83c1699add38.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/cholesterol-profile.2.xsd)
[!code-xml[XSD schema](../xsd/cholesterol-profile.2.xsd)]
