---
uid: HV_File_getrecordoperations
title: GetRecordOperations
---

# GetRecordOperations

## Request Overview

Gets all operations that have occurred on the record since a specified sequence number.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
record-operation-sequence-number|long|1|1|The sequence number from which to retrieve all operations that have occurred on the record.|

## Response Details

<a name='info'></a>

### Root element: info

The element of the response that contains the method specific return value(s).

All response schemas contain the info element which contain the return value of the method. If the method does not define an info element, the method has no return value.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
latest-record-operation-sequence-number|long|1|1|The most current record operation sequence number of the record when this call was made.|
operations|[RecordOperations](#RecordOperations)|0|1|A list of the operations that have occurred since the specified record operation sequence number in the request.|The operations are returned by sequence number in ascending order. It is possible to receive a delete operation for which the application does not receive a create operation. This occurrs when a thing is created and permanently deleted between calls to GetRecordOperations by the application.

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RecordOperation'></a>
>
> ### RecordOperation
>
> An operation that occurred on the record.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> operation|[Operation](#Operation)|1|1|The type of operation that occurred on the record.|
> sequence-number|long|1|1|The sequence number of the operation on the record.|The sequence number is a record relative number that increases with each operation that is performed on the record. Multiple things may be operated upon in the same operation so multiple things may have the same sequence operation number.
> thing-id|[ThingKey](xref:HV_File_thing#ThingKey)|1|1|The identifier of the thing on which the operation occurred.|
> type-id|[guid](xref:HV_File_types#guid)|1|1|The type identifier for the thing that was operated upon.|
> eff-date|dateTime|0|1|The effective date of the thing.|The effective date is used to indicate the date that the thing occurred on. For example, the date exercise occurred on or a medication was taken. The effective date will not be present for deleted things.
> updated-end-date|dateTime|0|1|Updated end date of the thing instance.|Updated end date is used to end the relevancy of a Thing. For example, end date on a condition will mean that the condition is no longer relevant for the user after that date. Some types we can automatically populate updated end date from type specific data in data-xml. For such types, if updated end date is not specified on thing xml, it will be derived from data-xml element but if present its value will be always used. Any date greater than '9999-12-31T00:00:00Z' will clear the updated-end-date value. The updated end date will not be present for deleted things.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RecordOperations'></a>
>
> ### RecordOperations
>
> A list of the operations that have occurred since the specified record operation sequence number in the request in ascending order by sequence number.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> record-operation|[RecordOperation](#RecordOperation)|1|unbounded|An operation that occurred on the record.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Operation'></a>
>
> ### Operation
>
> The type of operation that occurred on the record.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Create|The operation created the thing.|
> enumeration|Update|The operation updated the thing or restored a deleted thing.|
> enumeration|Delete|The operation deleted or permanently deleted the thing.|
>
>

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-getrecordoperations.xsd)
[!code-xml[XSD schema](../xsd/method-getrecordoperations.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getrecordoperations.xsd)
[!code-xml[XSD schema](../xsd/response-getrecordoperations.xsd)]
