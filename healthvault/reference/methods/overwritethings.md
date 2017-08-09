---
uid: HV_File_overwritethings
title: OverwriteThings
---

# OverwriteThings

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
thing|[thing](xref:HV_File_thing)|1|unbounded|The thing to be updated. If the thing-id exists, then the previous thing is updated. If thing-id is not provided, then a new thing is created.|

## Response Overview

Overwrites a thing even if the new data uses an older version of the thing schema.

## Response Details

<a name='info'></a>

### Root element: info

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
thing-id|[ThingKey](xref:HV_File_thing#ThingKey)|1|unbounded|Information about the thing that was created or modified. This includes the thing-id of the thing that was created or modified, and a version stamp.|

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-overwritethings.xsd)
[!code-xml[XSD schema](../xsd/method-overwritethings.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-overwritethings.xsd)
[!code-xml[XSD schema](../xsd/response-overwritethings.xsd)]
