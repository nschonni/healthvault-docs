---
uid: HV_File_createconnectrequest
title: CreateConnectRequest
---

# CreateConnectRequest

## Request Overview

Creates a connect request which will allow the user to tie their HealthVault account to the calling application once the user validates the connect request.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
friendly-name|[stringnz](xref:HV_File_types#stringnz)|1|1|A friendly name that will be presented to the user after the user successfully answers the challenge question.|The friendly name should be something that is recognizable and distinguishes one connect request from another so that the user may choose the expected record during application authorization. For example, a mother of 2 children may want to name her connect requests after each child so she can distinguish one child's connect request from the others.
question|[stringnz](xref:HV_File_types#stringnz)|1|1|A challenge question posed to the user once the identity code has been successfully entered.|The challenge question should be personal and easy to answer for the user. It is recommended that the challenge question require a one word answer. An empty question will result in an InvalidVerificationQuestion error.
answer|[stringnz](xref:HV_File_types#stringnz)|1|1|The answer that the patient is expected to provide when posed with the challenge question.|It is recommended that this be a single word. The answer is case-insensitive, however, it is whitespace sensitive. An empty answer will result in an InvalidVerificationAnswer error.
external-id|[stringnz](xref:HV_File_types#stringnz)|1|1|An identifier supplied by the external application for the connect request.|This value will tie the external application to the HealthVault record being shared. For instance, this could be the patient identifier used to store information in the calling application's database.
call-back-url|[stringnz](xref:HV_File_types#stringnz)|0|1|A URL for call back once the connect request is validated.|Currently not supported.

## Response Overview

The unique identity code or failure result.

## Response Details

<a name='info'></a>

### Root element: info

The element of the response that contains the method specific return value(s).

All response schemas contain the info element which contain the return value of the method. If the method does not define an info element, the method has no return value.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
identity-code|string|1|1|A 20 digit unique code that the user will need to enter into account.healthvault.com in order to face the challenge question and authorize the connect request.|This code is to be kept secret. If the code is lost, the application should call DeletePendingConnectRequest in order to delete it, then call CreateConnectRequest again in order to obtain a new identity code.

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-createconnectrequest.xsd)
[!code-xml[XSD schema](../xsd/method-createconnectrequest.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-createconnectrequest.xsd)
[!code-xml[XSD schema](../xsd/response-createconnectrequest.xsd)]
