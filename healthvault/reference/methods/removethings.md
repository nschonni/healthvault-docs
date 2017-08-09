---
uid: HV_File_removethings
title: RemoveThings
---

# RemoveThings

## Request Overview

Deletes things from a record.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
thing-id|[ThingKey](xref:HV_File_thing#ThingKey)|1|unbounded|The list identifying the specific things to be deleted.|A thing-revision uniquely identifies a thing at a specific point in thime

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-removethings.xsd)
[!code-xml[XSD schema](../xsd/method-removethings.xsd)]

