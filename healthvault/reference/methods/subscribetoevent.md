---
uid: HV_File_subscribetoevent
title: SubscribeToEvent
---

# SubscribeToEvent

## Request Overview

Creates an event subscription for the calling application.

## Request Details

<a name='info'></a>

### Root element: info

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
subscription|[subscription](xref:HV_File_subscription)|1|1|The subscription to create in HealthVault.|

## Response Overview

The response for the SubscribeToEvent method.

## Response Details

<a name='info'></a>

### Root element: info

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
subscription-id|[guid](xref:HV_File_types#guid)|1|1|The unique identifier of the created subscription.|

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-subscribetoevent.xsd)
[!code-xml[XSD schema](../xsd/method-subscribetoevent.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-subscribetoevent.xsd)
[!code-xml[XSD schema](../xsd/response-subscribetoevent.xsd)]
