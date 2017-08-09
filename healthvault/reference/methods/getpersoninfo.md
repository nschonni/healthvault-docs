---
uid: HV_File_getpersoninfo
title: GetPersonInfo
---

# GetPersonInfo

## Request Overview

Gets basic information about the authenticated person.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
group-membership|boolean|0|1|Tells the method whether to return the groups the person is a member of.|If true, the groups the person is a member of are returned in the response.
effective-record-permissions|boolean|0|1|If true, the application's permission to the specified record is returned as part of the person information.|

## Response Overview

The basic information about an authenticated person.

## Response Details

<a name='info'></a>

### Root element: info

The element of the response that contains the method specific return value(s).

All response schemas contain the info element which contain the return value of the method. If the method does not define an info element, the method has no return value.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
person-info|[PersonInfo](xref:HV_File_types#PersonInfo)|1|1|Basic information about a person.|Basic information about a person including their name, application specific settings, record selected for use by the application, and other records that are the person authorized the application to use.

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-getpersoninfo.xsd)
[!code-xml[XSD schema](../xsd/method-getpersoninfo.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getpersoninfo.xsd)
[!code-xml[XSD schema](../xsd/response-getpersoninfo.xsd)]
