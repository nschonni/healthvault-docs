---
uid: HV_File_getupdatedrecordsforapplication
title: GetUpdatedRecordsForApplication
---

# GetUpdatedRecordsForApplication

## Request Overview

Gets a list of records for an application with things that have been updated since a specified date.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
update-date|dateTime|0|1|The date that should be used to when evaluating which record identifiers should be returned.|If no date is specified, then all records for a requesting application will be returned that contain an instance of the thing-type-id specified.

## Response Overview

The list of records for an application with things that have been updated since a specified date.

## Response Details

<a name='info'></a>

### Root element: info

The element of the response that contains the method specific return value(s).

All response schemas contain the info element which contain the return value of the method. If the method does not define an info element, the method has no return value.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
record-id|[record-id](#record-id)|0|unbounded|The list of record identifiers for the records authorized for the application that have been updated.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='record-id'></a>
>
> ### record-id
>
> ### Extension
>
> Base type: [guid](xref:HV_File_types#guid)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> update-date|dateTime||||
>
>

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-getupdatedrecordsforapplication.xsd)
[!code-xml[XSD schema](../xsd/method-getupdatedrecordsforapplication.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getupdatedrecordsforapplication.xsd)
[!code-xml[XSD schema](../xsd/response-getupdatedrecordsforapplication.xsd)]
