---
uid: HV_File_disassociatealternateid
title: DisassociateAlternateId
---

# DisassociateAlternateId

## Request Overview

Disassociates an alternate id with a person and record.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
alternate-id|[string255nw](xref:HV_File_types#string255nw)|1|1|The alternate id to disassociate.|

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-disassociatealternateid.xsd)
[!code-xml[XSD schema](../xsd/method-disassociatealternateid.xsd)]

