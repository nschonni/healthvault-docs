---
uid: HV_File_updateexternalid
title: UpdateExternalId
---

# UpdateExternalId

## Request Overview

Updates the external id for a connect request.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
new-external-id|[stringnz](xref:HV_File_types#stringnz)|1|1|Specifies the external id that will replace the old-external-id.|

### Choice

Min occurs: 1

Max occurs: 1
### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
identity-code|[stringnz](xref:HV_File_types#stringnz)|1|1||
old-external-id|[stringnz](xref:HV_File_types#stringnz)|1|1|Specifies the external id that will be replaced by the new-external-id.|

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-updateexternalid.xsd)
[!code-xml[XSD schema](../xsd/method-updateexternalid.xsd)]

