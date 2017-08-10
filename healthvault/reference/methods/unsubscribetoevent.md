---
uid: HV_File_unsubscribetoevent
title: UnsubscribeToEvent
---

# UnsubscribeToEvent

## Request Overview

Removes the subscription identified by the supplied id.

## Request Details

<a name='info'></a>

### Root element: info

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
subscription-id|[guid](xref:HV_File_types#guid)|1|1|The identifier of the subscription to remove.|

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-unsubscribetoevent.xsd)
[!code-xml[XSD schema](../xsd/method-unsubscribetoevent.xsd)]

