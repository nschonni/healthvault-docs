---
uid: HV_File_putthings2
title: PutThings2
---

# PutThings2

## Request Overview

Creates or updates one or more things.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
thing|[Thing2](xref:HV_File_thing#Thing2)|1|unbounded|The thing to be created or updated. If the thing-id exists, then the previous thing is updated. If thing-id is not provided, then a new thing is created.|If the request updates an existing thing but does not include any non-empty data elements, the request will return successfully but the thing will not be changed.

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-putthings2.xsd)
[!code-xml[XSD schema](../xsd/method-putthings2.xsd)]

