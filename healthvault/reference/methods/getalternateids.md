---
uid: HV_File_getalternateids
title: GetAlternateIds
---

# GetAlternateIds

## Request Overview

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

## Response Overview

## Response Details

<a name='info'></a>

### Root element: info

The element of the response that contains the method specific return value(s).

All response schemas contain the info element which contain the return value of the method. If the method does not define an info element, the method has no return value.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
alternate-ids|[alternate-ids](#alternate-ids)|1|1||

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='alternate-ids'></a>
>
> ### alternate-ids
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> alternate-id|[string255nw](xref:HV_File_types#string255nw)|0|unbounded||
>
>

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-getalternateids.xsd)
[!code-xml[XSD schema](../xsd/method-getalternateids.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getalternateids.xsd)
[!code-xml[XSD schema](../xsd/response-getalternateids.xsd)]
