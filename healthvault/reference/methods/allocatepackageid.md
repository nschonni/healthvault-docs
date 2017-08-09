---
uid: HV_File_allocatepackageid
title: AllocatePackageId
---

# AllocatePackageId

## Response Overview

The unique identity code (to access the package) or failure result.

## Response Details

<a name='info'></a>

### Root element: info

The element of the response that contains the method specific return value(s).

All response schemas contain the info element which contain the return value of the method. If the method does not define an info element, the method has no return value.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
identity-code|string|1|1|A 20 digit unique code that the user will need to enter into account.healthvault.com in order to face the challenge question and access the PPP.|This code is to be kept secret. If the code is lost, the application should call DeleteConnectPackage in order to delete it, then call CreateConnectPackage again in order to obtain a new identity code.

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-allocatepackageid.xsd)
[!code-xml[XSD schema](../xsd/response-allocatepackageid.xsd)]
