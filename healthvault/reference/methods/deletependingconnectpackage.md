---
uid: HV_File_deletependingconnectpackage
title: DeletePendingConnectPackage
---

# DeletePendingConnectPackage

## Request Overview

Deletes the pending connect package.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---

### Choice

Min occurs: 1

Max occurs: 1
### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
identity-code|[stringnz](xref:HV_File_types#stringnz)|1|1||
external-id|[stringnz](xref:HV_File_types#stringnz)|1|1|Specifies the external id for which the associated pending connect package is removed.|

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-deletependingconnectpackage.xsd)
[!code-xml[XSD schema](../xsd/method-deletependingconnectpackage.xsd)]

