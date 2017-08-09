---
uid: HV_File_getvalidgroupmembership
title: GetValidGroupMembership
---

# GetValidGroupMembership

## Request Overview

Gets a list of valid things of type Group Membership.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
application-id|[guid](xref:HV_File_types#guid)|0|unbounded|A list of application id's. If the list contains 1 or more application id's, only Group Membership things last written by an application whose id is on the list will be returned.|

## Response Overview

A list of valid Group Membership things for a record.

## Response Details

<a name='info'></a>

### Root element: info

Contains the response of the GetValidGroupMemberships method request.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
thing|[thing](xref:HV_File_thing)|0|unbounded|The valid Group Membership things.|

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-getvalidgroupmembership.xsd)
[!code-xml[XSD schema](../xsd/method-getvalidgroupmembership.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getvalidgroupmembership.xsd)
[!code-xml[XSD schema](../xsd/response-getvalidgroupmembership.xsd)]
