---
uid: HV_4b7971d6-e427-427d-bf2c-2fbcf76606b3
title: Emotional state
---

# Emotional state

## Overview

Property|Value
---|---
id|4b7971d6-e427-427d-bf2c-2fbcf76606b3
name|Emotional state
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Emotion](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.emotion)
- [Microsoft.HealthVault.ItemTypes.Emotion](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.emotion)

## Related data types

- [Concern](xref:HV_AEA2E8F2-11DD-4A7D-AB43-1D58764EBC19)

## Details
A subjective record of an emotional state.

<a name='emotion'></a>

### Root element: emotion

A subjective record of an emotional state.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time when the emotional state occurred.|
mood|[one-to-five](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#one-to-five)|0|1|A subjective ranking of the emotional state.|The value ranges from one to five, with one being sad and five being very happy.
stress|[one-to-five](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#one-to-five)|0|1|A subjective ranking of the person's stress level.|The value ranges from one to five, with one being relaxed to five being stressed.
wellbeing|[one-to-five](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#one-to-five)|0|1|A subjective ranking of the person's health.|The value ranges from one to five, with one being sick to five being healthy.

## Example
[!code-xml[Example](../sample-xml/4b7971d6-e427-427d-bf2c-2fbcf76606b3.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/emotion.xsd)
[!code-xml[XSD schema](../xsd/emotion.xsd)]
