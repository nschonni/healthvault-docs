---
uid: HV_File_getpeopleforrecord
title: GetPeopleForRecord
---

# GetPeopleForRecord

## Response Overview

Gets information about the people that have been authorized to a record or invited to share a record.

## Response Details

<a name='info'></a>

### Root element: info

The element that contains the method specific response.

All responses contain the info element to return data that are specific to each method. If the method does not define an info element, the method does not expect any data for the response.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
active-person-authorization|[ActivePersonAuthorizationNoIds](xref:HV_File_record#ActivePersonAuthorizationNoIds)|1|unbounded|List of persons that have authorizations to the record.|
non-active-authorization|[NonActiveAuthorizationNoIds](xref:HV_File_record#NonActiveAuthorizationNoIds)|0|unbounded|List of persons that have not accepted their sharing invites to the record.|

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getpeopleforrecord.xsd)
[!code-xml[XSD schema](../xsd/response-getpeopleforrecord.xsd)]
