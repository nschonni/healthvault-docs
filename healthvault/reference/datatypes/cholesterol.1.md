---
uid: HV_796C186F-B874-471c-8468-3EEFF73BF66E
title: Cholesterol
---

# Cholesterol

## Overview

Property|Value
---|---
id|796C186F-B874-471c-8468-3EEFF73BF66E
name|Cholesterol
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.CholesterolProfile](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.cholesterolprofile)
- [Microsoft.HealthVault.ItemTypes.CholesterolProfile](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.cholesterolprofile)

## Related data types

- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
- [Daily dietary intake](xref:HV_9c29c6b9-f40e-44ff-b24e-fba6f3074638)
- [Lab results](xref:HV_5800eab5-a8c2-482a-a4d6-f1db25ae08c3)
- [Vital signs](xref:HV_73822612-C15F-4B49-9E65-6AF369E55C65)

## Details
Covers primary cholesterol/lipid profile test readings.

<a name='cholesterol-profile'></a>

### Root element: cholesterol-profile

Cholesterol test results. Also referred to as lipid profile.

Cholesterol profile is typically comprised of LDL (low-density lipoprotein) cholesterol, HDL (high density lipoprotein) cholesterol and total cholesterol. This data type also in corporates currently-requested secondary tests that may be applicable for cholesterol.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[date](xref:HV_File_dates#date)|1|1|The date when the samples that led to this test result were taken.|
ldl|[positiveInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveInt)|0|1|Low density lipoprotein cholesterol.|The LDL test measures how much low-density lipoprotein (LDL) cholesterol in the blood. Increased levels of LDL cholesterol is associated with atherosclerosis. LDL cholesterol is measured in mg/dL.
hdl|[positiveInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveInt)|0|1|High density lipoprotein cholesterol.|HDL stands for high density lipoprotein cholesterol, a form of "good" cholesterol. Proteins in the blood that move cholesterol, triglycerides, and other lipids to various tissues are lipoproteins. HDL cholesterol is measured in mg/dL.
total-cholesterol|[positiveInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveInt)|0|1|Total cholesterol.|A total cholesterol test is a rough measure of all the cholesterol and triglycerides in your blood. Total cholesterol is measured in mg/dL.
triglyceride|[positiveInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveInt)|0|1|Triglyceride level.|Triglycerides are a type of fat. Your body makes some triglycerides. Triglycerides also come from the food you eat. Triglycerides are measured in mg/dL.

## Example
[!code-xml[Example](../sample-xml/796C186F-B874-471c-8468-3EEFF73BF66E.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/cholesterol-profile.xsd)
[!code-xml[XSD schema](../xsd/cholesterol-profile.xsd)]
