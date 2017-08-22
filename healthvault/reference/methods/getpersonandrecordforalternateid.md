---
uid: HV_File_getpersonandrecordforalternateid
title: GetPersonAndRecordForAlternateId
---

# GetPersonAndRecordForAlternateId

## Request Overview

Gets the person and record ids associated with an alternate id.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
alternate-id|[string255nw](xref:HV_File_types#string255nw)|1|1|The alternate id to search for.|

## Response Details

<a name='info'></a>

### Root element: info

The element of the response that contains the method specific return value(s).

All response schemas contain the info element which contain the return value of the method. If the method does not define an info element, the method has no return value.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
person-info|[PersonInfo](xref:HV_File_types#PersonInfo)|1|1|Information about the person and record associated with the alternate id.|

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-getpersonandrecordforalternateid.xsd)
[!code-xml[XSD schema](../xsd/method-getpersonandrecordforalternateid.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getpersonandrecordforalternateid.xsd)
[!code-xml[XSD schema](../xsd/response-getpersonandrecordforalternateid.xsd)]
