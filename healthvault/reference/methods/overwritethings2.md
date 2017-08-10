---
uid: HV_File_overwritethings2
title: OverwriteThings2
---

# OverwriteThings2

## Request Overview

Overwrites a thing even if the new data uses an older version of the thing schema.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
thing|[Thing2](xref:HV_File_thing#Thing2)|1|unbounded|The thing to be updated. If the thing-id exists, then the previous thing is updated. If thing-id is not provided, then a new thing is created.|

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-overwritethings2.xsd)
[!code-xml[XSD schema](../xsd/method-overwritethings2.xsd)]

