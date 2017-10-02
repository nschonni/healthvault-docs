---
uid: HV_7AB3E662-CC5B-4BE2-BF38-78F8AAD5B161
title: Medical annotation
---

# Medical annotation

## Overview

Property|Value
---|---
id|7AB3E662-CC5B-4BE2-BF38-78F8AAD5B161
name|Medical annotation
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Annotation](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.annotation)
- [Microsoft.HealthVault.ItemTypes.Annotation](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.annotation)

## Details
This thing type describes the medical annotation results of a person.

<a name='annotation'></a>

### Root element: annotation

Information related to a medical annotation.

This thing type describes the medical annotation results of a person.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time of the annotation.|
content|string|0|1|The text content of this medical annotation.|
author|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|The author of this medical annotation.|
classification|string|0|1|A classification for this medical annotation.|
index|string|0|1|A document index for this medical annotation.|
version|string|0|1|A document version for this medical annotation.|

## Example
[!code-xml[Example](../sample-xml/7AB3E662-CC5B-4BE2-BF38-78F8AAD5B161.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/annotation.xsd)
[!code-xml[XSD schema](../xsd/annotation.xsd)]
