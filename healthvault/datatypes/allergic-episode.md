---
uid: HV_d65ad514-c492-4b59-bd05-f3f6cb43ceb3
title: Allergic episode
---

# Allergic episode

## Overview

Property|Value
---|---
id|d65ad514-c492-4b59-bd05-f3f6cb43ceb3
name|Allergic episode
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.AllergicEpisode](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.allergicepisode)
- [Microsoft.HealthVault.ItemTypes.AllergicEpisode](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.allergicepisode)

## Related data types

- [Allergy](xref:HV_52bf9104-2c5e-4f1f-a66d-552ebcc53df7)

## Details
A single instance of an allergic reaction.

<a name='allergic-episode'></a>

### Root element: allergic-episode

Information related to a single instance of an allergic reaction.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|date-time|1|1|The date and time the episode occurred.|
name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The name of the allergy.|
reaction|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The description of the symptoms of this allergic reaction.|
treatment|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|A description of the treatment taken for this allergic reaction.|

## Example
[!code-xml[Example](sample-xml/d65ad514-c492-4b59-bd05-f3f6cb43ceb3.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/allergic-episode.xsd)
[!code-xml[XSD schema](xsd/allergic-episode.xsd)]
