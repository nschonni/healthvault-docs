---
uid: HV_7EA47715-CBA4-47F0-99D2-EB0A9FB4A85C
title: Healthcare proxy
---

# Healthcare proxy

## Overview

Property|Value
---|---
id|7EA47715-CBA4-47F0-99D2-EB0A9FB4A85C
name|Healthcare proxy
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Healthcare proxy](https://go.microsoft.com/fwlink/?LinkID=136152)

## Related data types

- [Advance directive](xref:HV_822a5e5a-14f1-4d06-b92f-8f3f1b05218f)
- [Contact](xref:HV_25c94a9f-9d3d-4576-96dc-6791178a8143)

## Details
This thing type describes the healthcare proxy of a person.

<a name='healthcare-proxy'></a>

### Root element: healthcare-proxy

Information related to a healthcare proxy.

This thing type describes the healthcare proxy of a person.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|date-time|1|1|The date and time of the proxy.|
proxy|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|Primary contact for healthcare proxy.|
alternate|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|Alternative contact for healthcare proxy.|
primary-witness|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|Primary witness of healthcare proxy.|
secondary-witness|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|Secondary witness of healthcare proxy.|
content|string|0|1|Free form content of healthcare proxy.|

## Example
[!code-xml[Example](sample-xml/7EA47715-CBA4-47F0-99D2-EB0A9FB4A85C.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/healthcare-proxy.xsd)
[!code-xml[XSD schema](xsd/healthcare-proxy.xsd)]
