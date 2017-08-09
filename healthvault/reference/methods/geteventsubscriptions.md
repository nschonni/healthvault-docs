---
uid: HV_File_geteventsubscriptions
title: GetEventSubscriptions
---

# GetEventSubscriptions

## Response Overview

The response containing the entire collection of subscriptions for calling application.

## Response Details

<a name='info'></a>

### Root element: info

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
subscriptions|[Subscriptions](xref:HV_File_subscription#Subscriptions)|1|1|The collection of subscriptions for the calling application.|

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-geteventsubscriptions.xsd)
[!code-xml[XSD schema](../xsd/response-geteventsubscriptions.xsd)]
