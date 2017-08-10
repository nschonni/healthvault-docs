---
uid: HV_d4b48e6b-50fa-4ba8-ac73-7d64a68dc328
title: Web link
---

# Web link

## Overview

Property|Value
---|---
id|d4b48e6b-50fa-4ba8-ac73-7d64a68dc328
name|Web link
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Link](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.link)
- [Microsoft.HealthVault.ItemTypes.Link](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.link)

## Details
A link to a web page.

<a name='link'></a>

### Root element: link

Defines the schema for a web link saved as a favorite in Microsoft HealthVault.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
url|string|1|1|The full URL for the link, including the scheme and full site name.|
title|string|0|1|Optional friendly name for the link.|

## Example
[!code-xml[Example](../sample-xml/d4b48e6b-50fa-4ba8-ac73-7d64a68dc328.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/link.xsd)
[!code-xml[XSD schema](../xsd/link.xsd)]
