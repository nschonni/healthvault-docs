---
uid: HV_9df1163d-eae1-405e-8a66-8aaf19bd5fc7
title: Education document (preview)
---

# Education document (preview)

## Overview

Property|Value
---|---
id|9df1163d-eae1-405e-8a66-8aaf19bd5fc7
name|Education document (preview)
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## Details
The Education Document type is intended to store documents related to a student's education such as assignments and exams.

<a name='education-document'></a>

### Root element: education-document

Defines the schema for an education document which can be uploaded to Microsoft HealthVault.

The Education Document type is intended to store documents related to a student's education such as assignments and exams.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
name|[string255nw](xref:HV_File_types#string255nw)|1|1|A name describing the Education Document instance. For example this could be the original name of the file, with the extension if it is available.|

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/education-document.xsd)
[!code-xml[XSD schema](../xsd/education-document.xsd)]
