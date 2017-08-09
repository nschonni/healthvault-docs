---
uid: HV_File_getauthorizedconnectrequests
title: GetAuthorizedConnectRequests
---

# GetAuthorizedConnectRequests

## Request Overview

Returns all found authorized connect requests associated with the calling application.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
authorized-connect-requests-since|dateTime|0|1|Specifies the UTC datetime from which all found authorized connect requests are to be returned.|If no datetime is supplied, DateTime.Min is assumed, and all connect requests found for the application are returned. If an invalid datetime is supplied, an InvalidDateTime error is retuned. Validated connect requests are removed by HealthVault after 90 days. It is advised that applications call GetAuthorizedConnectRequests daily or weekly to ensure that all validated connect requests are retrieved.

## Response Overview

A list of all connect requests that have been authorized by users (via account.healthvault.com) or failure result.

## Response Details

<a name='info'></a>

### Root element: info

Contains the list of ConnectRequests returned by GetAuthorizedConnectRequests.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
resume-key|dateTime|0|1|Not implemented.|
connect-request|[ConnectRequest](#ConnectRequest)|0|unbounded|List of authorized connect requests tied to the calling application.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ConnectRequest'></a>
>
> ### ConnectRequest
>
> Specifies the person id, record id, application id, and external id that make up the connect request.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> person-id|[guid](xref:HV_File_types#guid)|1|1|The unique identifier for the person.|
> record-id|[record-id](#record-id)|1|1|The unique identifier for the record.|
> app-id|[guid](xref:HV_File_types#guid)|1|1|The unique identifier for the authorized application (the same application that called CreateConnectRequest).|
> external-id|string|1|1|The external identifier for the connect request that allows the calling application to tie the HealthVault record to it's system.|
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='record-id'></a>
> >
> > ### record-id
> >
> > ### Extension
> >
> > Base type: [guid](xref:HV_File_types#guid)
> >
> > ### Attributes
> >
> > Name|Type|Use|Default value|Summary|Remarks
> > ---|---|---|---|---|---
> > app-specific-record-id|string||||
> >
> >
>
>

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-getauthorizedconnectrequests.xsd)
[!code-xml[XSD schema](../xsd/method-getauthorizedconnectrequests.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getauthorizedconnectrequests.xsd)
[!code-xml[XSD schema](../xsd/response-getauthorizedconnectrequests.xsd)]
