---
uid: HV_File_deletependingconnectrequest
title: DeletePendingConnectRequest
---

# DeletePendingConnectRequest

## Request Overview

Deletes the pending connect request for the supplied external id.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
external-id|[stringnz](xref:HV_File_types#stringnz)|1|1|Specifies the external id for which the associated pending connect request is removed.|

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-deletependingconnectrequest.xsd)
[!code-xml[XSD schema](../xsd/method-deletependingconnectrequest.xsd)]

