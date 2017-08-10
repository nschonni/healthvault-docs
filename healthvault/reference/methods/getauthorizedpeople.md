---
uid: HV_File_getauthorizedpeople
title: GetAuthorizedPeople
---

# GetAuthorizedPeople

## Request Overview

Gets information about the people that are authorized for an application.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
parameters|[GetAuthorizedPeopleParameters](#GetAuthorizedPeopleParameters)|1|1|The request parameters for retrieving the list of authorized people for an application using person id as a page cursor.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='GetAuthorizedPeopleParameters'></a>
>
> ### GetAuthorizedPeopleParameters
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> person-id-cursor|[guid](xref:HV_File_types#guid)|0|1|The person id cursor used to page through the results of this method.|To get the next page of results, pass in the person id of the last PersonInfo returned in the response. To get the first page of results, omit this element.
> authorizations-created-since|dateTime|0|1|The date that is used to filter authorized people from the returned list according to the date that the person was authorized for the application.|If this element is present and not empty, the method will return those authorized people whose authorization for the application was created after the specified date. If this element is omitted or empty, the method does not filter the results by the date the authorization was created.
> num-results|positiveInteger|0|1|The number of results to return in the response.|Optional element for specifying the number of results to return in the response. If this element isn't included, a system defined default number of results are returned. The maximum number of returned results is limited to a system defined value.
>
>

## Response Overview

A list of authorized people for the application.

## Response Details

<a name='info'></a>

### Root element: info

The element of the response that contains the method specific return value(s).

All response schemas contain the info element which contain the return value of the method. If the method does not define an info element, the method has no return value.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
response-results|[GetAuthorizedPeopleResponse](#GetAuthorizedPeopleResponse)|1|1|The response information for the authorized people.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='GetAuthorizedPeopleResponse'></a>
>
> ### GetAuthorizedPeopleResponse
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> person-info|[PersonInfo](xref:HV_File_types#PersonInfo)|0|unbounded|The person info results for this page of data.|The person id of the last PersonInfo element in this list should be used as the person id cursor parameter for the next call to this method. If this list is empty and the request included a person id cursor, then there are no more authorized people to page through. If the list is empty and the request did not include a person id cursor, there are no people authorized for the application.
> more-results|boolean|1|1|Determines if there are more authorized people whose info can be requested by making a subsequent call to this method.|True if there are additional authorized people whose info can be queried, otherwise False. <br /><br /> To retrieve additional authorized people, make another call to this method. The subsequent call should use the person id of the last PersonInfo in the current page as the person id cursor.
>
>

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-getauthorizedpeople.xsd)
[!code-xml[XSD schema](../xsd/method-getauthorizedpeople.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getauthorizedpeople.xsd)
[!code-xml[XSD schema](../xsd/response-getauthorizedpeople.xsd)]
