---
uid: HV_File_getupdatedrecordsforapplication2
title: GetUpdatedRecordsForApplication2
---

# GetUpdatedRecordsForApplication2

## Response Overview

The list of records and their corresponding person-ids for an application with things that have been updated since a specified date.

## Response Details

<a name='info'></a>

### Root element: info

The element of the response that contains the method specific return value(s).

All response schemas contain the info element which contain the return value of the method. If the method does not define an info element, the method has no return value.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
updated-records|[UpdatedRecords](#UpdatedRecords)|1|1||

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UpdatedRecord'></a>
>
> ### UpdatedRecord
>
> Record identifier for the record authorized for the application that has been updated and its corresponding person identifier.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> record-id|[guid](xref:HV_File_types#guid)|1|1|Record identifier for the record authorized for the application that has been updated.|
> update-date|dateTime|1|1|The datetime for the record authorized for the application that has been updated.|
> person-id|[guid](xref:HV_File_types#guid)|1|1|Person identifier for the record authorized for the application that has been updated.|
> latest-operation-sequence-number|long|0|1|The latest sequence number for the ever increasing operations that occur on a record.|Each operation on a record increments a sequence number. Applications can request a list of operations that have occurred on a record since a specific sequence number using the GetRecordOperations method. This process can be used to sync changes from a record to a local store.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UpdatedRecords'></a>
>
> ### UpdatedRecords
>
> The list of records authorized for the application that have been updated.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> updated-record|[UpdatedRecord](#UpdatedRecord)|0|unbounded||
>
>

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getupdatedrecordsforapplication2.xsd)
[!code-xml[XSD schema](../xsd/response-getupdatedrecordsforapplication2.xsd)]
