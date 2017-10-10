---
uid: HV_0aa6a4c7-cef5-46ea-970e-206c8402dccb
title: Education - MyData file (preview)
---

# Education - MyData file (preview)

## Overview

Property|Value
---|---
id|0aa6a4c7-cef5-46ea-970e-206c8402dccb
name|Education - MyData file (preview)
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## Details
This data type is intended to store the U.S. Department of Education's MyData initiative documents. For more information about the MyData initiative see: http://www.ed.gov/edblogs/technology/mydata/

<a name='mydata-education-file'></a>

### Root element: mydata-education-file

Defines the schema for a MyData education file which can be uploaded to Microsoft HealthVault.

This data type is intended to store the U.S. Department of Education's MyData initiative documents. For more information about the MyData initiative see: http://www.ed.gov/edblogs/technology/mydata/

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
name|[string255nw](xref:HV_File_types#string255nw)|1|1|A name describing the MyData instance. For example this could be the original name of the file, with the extension if it is available.|

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/mydata-education-file.xsd)
[!code-xml[XSD schema](../xsd/mydata-education-file.xsd)]
