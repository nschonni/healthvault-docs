---
uid: HV_File_getauthorizedrecords
title: GetAuthorizedRecords
---

# GetAuthorizedRecords

## Request Overview

Gets information about the specified health records for which the authenticated person is authorized to use with the calling application.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
id|[guid](xref:HV_File_types#guid)|1|unbounded|The unique health record identifier of the record(s) to get information about.|Only health records to which the authenticated person has been granted access for the calling application will be returned. No error will be produced if the health record doesn't exist or the authenticated person doesn't have access to the record.

## Response Overview

The basic information about one or more health records.

## Response Details

<a name='info'></a>

### Root element: info

The element of the response that contains the method specific return value(s).

All response schemas contain the info element which contain the return value of the method. If the method does not define an info element, the method has no return value.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
record|[record](xref:HV_File_record)|0|unbounded|Information about the requested record(s) that the authenticated person is authorized to view for the calling application.|

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-getauthorizedrecords.xsd)
[!code-xml[XSD schema](../xsd/method-getauthorizedrecords.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getauthorizedrecords.xsd)
[!code-xml[XSD schema](../xsd/response-getauthorizedrecords.xsd)]
