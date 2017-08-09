---
uid: HV_File_associatealternateid
title: AssociateAlternateId
---

# AssociateAlternateId

## Request Overview

Associates an alternate id with a person and record.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
alternate-id|[string255nw](xref:HV_File_types#string255nw)|1|1|The alternate id to associate.|

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-associatealternateid.xsd)
[!code-xml[XSD schema](../xsd/method-associatealternateid.xsd)]

