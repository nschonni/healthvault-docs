---
uid: HV_File_createauthenticatedsessiontoken
title: CreateAuthenticatedSessionToken
---

# CreateAuthenticatedSessionToken

## Request Overview

Provides a way for clients to establish an authenticated session with Microsoft HealthVault.

## Request Details

<a name='info'></a>

### Root element: info

Creates an authenticated session token.

The authenticated session is in the context of the provided credential and the application.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
auth-info|[AuthTokenInfo](#AuthTokenInfo)|1|1|Parameters for creating an authenticated session token.|The caller must provide the application information as well as the user credential for which the session will be in the context of.

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Credential'></a>
>
> ### Credential
>
> Credential in which the authenticated session will be in the context of.
>
> The credential serves two purposes. First, it must be verified as valid. Once verified, the credential provides the authentication context for the session.
>
> ### Choice
>
> Min occurs: 1
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> appserver|[AppServerCred](xref:HV_File_types#AppServerCred)|1|1|Web application server credential.|The credential is a signed request showing proof-of-posession of the application-specific private key. This credential may be used to establish two modes of authentication. First, it may be used to create an trusted anonymous session in the context of the application. Secondly, it may be used to create a trusted session in the context of a specified user.
> userpassauthsession|[UserPassAuthSessionCred](xref:HV_File_auth#UserPassAuthSessionCred)|1|1|A credential consisting of username and password.|This is for test purposes only. Both the username and password are in plaintext.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AuthTokenInfo'></a>
>
> ### AuthTokenInfo
>
> Parameters for creating an authenticated session token.
>
> The caller must provide the application information as well as the user credential for which the session will be in the context of.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> app-id|[AppInfo](xref:HV_File_types#AppInfo)|1|1|Application identifier for the authenticated session.|In order for a session to be created, the user must grant access to the application to run in the context of the user. If permission has not been granted, this will result in a access denied error.
> credential|[Credential](#Credential)|1|1|Credential in which the authenticated session will be in the context of.|The credential serves two purposes. First, it must be verified as valid. Once verified, the credential provides the authentication context for the session.
>
>

## Response Overview

The authenticated session token or failure result.

## Response Details

<a name='info'></a>

### Root element: info

The response for the request to create an authenticated session token.

When a token is requested, if the request is a success then there will be a token. Otherwise, there will be an absence reason.

### Choice

Min occurs: 1

Max occurs: unbounded
### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
token|[Token](xref:HV_File_auth#Token)|1|1|The authenticated session token.|The token has a limited time-to-live. When the token expires, requests will fail with access denied. If there is no token, then there must be an absence reason.
token-absence-reason|[AppAuthTokenAbsenceReason](#AppAuthTokenAbsenceReason)|1|1|The reason the token could not be created.|If the token can be created, then there will be no absence reason.

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AppAuthTokenAbsenceReason'></a>
>
> ### AppAuthTokenAbsenceReason
>
> Reasons why an authenticated session token was not returned.
>
> Depending upon the reason, there may be user-actionable events that would enable the request to succeed.
>
> ### Extension
>
> Base type: [AuthTokenAbsenceReason](xref:HV_File_createauthenticatedsessiontoken#AuthTokenAbsenceReason)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> app-id|[guid](xref:HV_File_types#guid)|required|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AuthTokenAbsenceReason'></a>
>
> ### AuthTokenAbsenceReason
>
> Reasons why an authenticated session token was not returned.
>
> Depending upon the reason, there may be user-actionable events that would enable the request to succeed.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PersonNotAuthorizedForApp|The person is not authorized to run the specified application.|
>
>

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-createauthenticatedsessiontoken.xsd)
[!code-xml[XSD schema](../xsd/method-createauthenticatedsessiontoken.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-createauthenticatedsessiontoken.xsd)
[!code-xml[XSD schema](../xsd/response-createauthenticatedsessiontoken.xsd)]
