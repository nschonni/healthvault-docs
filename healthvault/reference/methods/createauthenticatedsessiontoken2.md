---
uid: HV_File_createauthenticatedsessiontoken2
title: CreateAuthenticatedSessionToken2
---

# CreateAuthenticatedSessionToken2

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
> appserver2|[AppServerCred](#AppServerCred)|1|1|Web application server credential.|The credential is a signed request showing proof-of-possession of the application-specific private key. This credential may be used to establish two modes of authentication. First, it may be used to create an trusted anonymous session in the context of the application. Secondly, it may be used to create a trusted session in the context of a specified user.
> userpassauthsession|[UserPassAuthSessionCred](xref:HV_File_auth#UserPassAuthSessionCred)|1|1|A credential consisting of username and password.|This is for test purposes only. Both the username and password are in plaintext.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AppServerCred'></a>
>
> ### AppServerCred
>
> Application server credential that is used when an application is identifying itself for subsequent calls to Microsoft HealthVault.
>
> This credential type requires that the content element be signed using the application's private key.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> content|[AppServerCredInfo](#AppServerCredInfo)|1|1|The application's credential information.|This section is signed by the application's private key.
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
> sig|[Sig](xref:HV_File_types#Sig)|1|1|The signature of the content section.|This signature is generated using the application's private key. The corresponding public key is associated with the application id by Microsoft HealthVault.
> hmacSig|[HmacSig](#HmacSig)|1|1|An Hmac signature of the content section.|The signature is generated using the the application's shared key. The key was previously generated via the NewApplicationCreationInfo call.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AppServerCredInfo'></a>
>
> ### AppServerCredInfo
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> app-id|[guid](xref:HV_File_types#guid)|1|1|The application id of the app to authenticate.|
> hmac|[hmac](#hmac)|1|1|The hmac algorithm name that will be used to hmac subsequent requests.|
> signing-time|dateTime|1|1|The time this request was signed. HealthVault will reject requests signed too far in the past.|
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

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='HmacSig'></a>
>
> ### HmacSig
>
> ### Extension
>
> Base type: [string512](xref:HV_File_types#string512)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> algName|[hmac](#hmac)|required|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='hmac'></a>
>
> ### hmac
>
> Names of valid hmac algorithms
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|HMACSHA256|SHA256 HMAC implementation|
> enumeration|HMACSHA1|SHA1 HMAC implementation|
>
>

## Response Overview

Request an authenticated session token for an application.

## Response Details

<a name='info'></a>

### Root element: info

The response for the request to create an authenticated session token.

When a token is requested, if the request is a success then there will be a token. Otherwise, there will be an absence reason.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
token|[Token](xref:HV_File_auth#Token)|1|1|The authenticated session token.|The token has a limited time-to-live. When the token expires, requests will fail with access denied.
shared-secret|[string255](xref:HV_File_types#string255)|1|1|Base64 encoded shared secret for hmac.|Subsequent requests must use this key for the request hmac.

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-createauthenticatedsessiontoken2.xsd)
[!code-xml[XSD schema](../xsd/method-createauthenticatedsessiontoken2.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-createauthenticatedsessiontoken2.xsd)
[!code-xml[XSD schema](../xsd/response-createauthenticatedsessiontoken2.xsd)]
