---
uid: HV_File_querypermissions
title: QueryPermissions
---

# QueryPermissions

## Request Overview

Gets the permissions the authenticated person has for the specified thing type for the specified record.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
thing-type-id|[guid](xref:HV_File_types#guid)|1|unbounded|The thing type ids identifying the thing types for which the permissions are being queried.|

## Response Overview

The permissions for online or offline access that the authenticated person has for the specified thing type in the specified record in the context of the current application.

## Response Details

<a name='info'></a>

### Root element: info

The element of the response that contains the method specific return value(s).

All response schemas contain the info element which contain the return value of the method. If the method does not define an info element, the method has no return value.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
thing-type-permission|[ThingTypePermission](xref:HV_File_types#ThingTypePermission)|0|unbounded|The permissions for online or offline access that the authenticated person has for the specified thing type in the specified record in the context of the current application.|If for a thing type id in the request neither online nor offline access permissions are available, no result is returned for that particular thing type id.
other-settings|[OtherSettings](#OtherSettings)|1|1|The permission settings for the specified record in the context of current application outside of thing types.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='OtherSettings'></a>
>
> ### OtherSettings
>
> Application record permission settings outside of thing types, such as meaningfuluse-opt-in.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> meaningfuluse-opt-in|boolean|0|1|Whether the specified record has opted into Meaningful Use reporting.|If not returned, the value is unspecified for the record.
>
>

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-querypermissions.xsd)
[!code-xml[XSD schema](../xsd/method-querypermissions.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-querypermissions.xsd)
[!code-xml[XSD schema](../xsd/response-querypermissions.xsd)]
