---
uid: HV_bd0403c5-4ae2-4b0e-a8db-1888678e4528
title: File
---

# File

## Overview

Property|Value
---|---
id|bd0403c5-4ae2-4b0e-a8db-1888678e4528
name|File
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [File](https://go.microsoft.com/fwlink/?LinkID=136134)

## Related data types

- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
- [Clinical Document Architecture (CDA)](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf)

## Related articles

- [Uploading a File to HealthVault](http://msdn.microsoft.com/en-us/library/ff803586.aspx)

## Details
Files are stored as encoded data in the "other data" section of things. Most files are stored as base64 encoded binary with the appropriate content-type set for the type of the file.

<a name='file'></a>

### Root element: file

Defines the schema for a file which can be uploaded to Microsoft HealthVault.

Files are stored as encoded data in the "other data" section of things. Most files are stored as base64 encoded binary with the appropriate content-type set for the type of the file.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
name|[string255](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#string255)|1|1|The original name of the file, with extension if available.|
size|positiveInteger|1|1|The size of the file in bytes.|
content-type|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The content type of the file.|If empty, Microsoft HealthVault will assume a content type of application/octet-stream.

## Example
[!code-xml[Example](sample-xml/bd0403c5-4ae2-4b0e-a8db-1888678e4528.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/file.xsd)
[!code-xml[XSD schema](xsd/file.xsd)]
