---
uid: HV_File_auth
title: auth
---

# auth

## Overview

Property|Value
---|---
id|File_auth
name|auth
immutable|
singleton|
allow-readonly|
effective date XPath|

## Details

<a name=''></a>

### Root element:
 Type:

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Set'></a>
>
> ### Set
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> date-range|[DateRange](xref:HV_File_types#DateRange)|0|unbounded||
> type-id|[guid](xref:HV_File_types#guid)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Rule'></a>
>
> ### Rule
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> is-incr|boolean|optional|||
> is-optional|boolean|optional|||
> name|[string16](xref:HV_File_types#string16)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> reason|[CultureSpecificString1024](xref:HV_File_types#CultureSpecificString1024)|0|unbounded|The reason the application is requesting this access.|This reason string will be presented to the user when the application asks them to approve this rule.
> display-flags|unsignedInt|0|1|Flags directing the display of optional rules.|<pre> 0x1 DisplayFirstTime Display optional rule during initial App Authorization 0x2 CheckedFirstTime Display the optional rule as checked during inital App Authorization 0x4 CheckedDefault Display the optional rule as checked (opt-out) </pre>
> permission|[Permission](xref:HV_File_types#Permission)|1|5||
> target-set|[Set](#Set)|0|unbounded||
> exception-set|[Set](#Set)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Rules'></a>
>
> ### Rules
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> rule|[Rule](#Rule)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Auth'></a>
>
> ### Auth
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> rules|[Rules](#Rules)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AuthXml'></a>
>
> ### AuthXml
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> auth|[Auth](#Auth)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TextualRule'></a>
>
> ### TextualRule
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> permission|string|1|1||
> target-thing-types|string|0|1||
> target-sets|string|0|1||
> target-dates|string|0|1||
> except-thing-types|string|0|1||
> except-sets|string|0|1||
> except-dates|string|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TextualPermissions'></a>
>
> ### TextualPermissions
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> textual-permissions-type|[TextualPermissionsType](#TextualPermissionsType)|1|1||
> textual-rule|[TextualRule](#TextualRule)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SimplePhoneFactorCredential'></a>
>
> ### SimplePhoneFactorCredential
>
> A phone factor credential.
>
> This credential type is used for two factor authentication.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> id|[string64](xref:HV_File_types#string64)|1|1|A unique identifier for the credential.|This identifier is supplied by the client on creation.
> phone-number|[string32](xref:HV_File_types#string32)|1|1|The phone number to call for authentication.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UserPassCred'></a>
>
> ### UserPassCred
>
> A username and password based credential.
>
> This credential type authenticates a user with a username and password.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> username|[LoginName](xref:HV_File_types#LoginName)|1|1|The username of the person being authenticated.|Each user has a unique username and an associated password.
> password|[string1024](xref:HV_File_types#string1024)|1|1|The user's password.|The password used to authenticate the user via the provided username.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SimpleUserPassCredential'></a>
>
> ### SimpleUserPassCredential
>
> A simple user credential that authenticates a user in Microsoft HealthVault.
>
> Each user has a unique username and associated password that identifies and authenticates a Microsoft HealthVault user.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> simple-userpass|[UserPassCred](#UserPassCred)|1|1|A username and password based credential.|This credential type authenticates a user with a username and password.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UserPassAuthSessionCred'></a>
>
> ### UserPassAuthSessionCred
>
> A credential which establishes an authenticated session using a username and password based credential.
>
> A username and password based credential in conjunction with a shared secret so that an authenticated session can be established with Microsoft HealthVault.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> username|[string128](xref:HV_File_types#string128)|1|1|The username of the person being authenticated.|Each user has a unique username and an associated password.
> password|[string1024](xref:HV_File_types#string1024)|1|1|The user's password.|The password used to authenticate the user via the provided username.
> shared-secret|[HMACAlgorithm](xref:HV_File_types#HMACAlgorithm)|1|1|The shared secret used to establish the authenticated session with Microsoft HealthVault.|The shared secret is used to authenticate all requests which include the token produced on succesful authentication. In order for a client to establish an authenticated session with the Microsoft Health Service, it must provide a shared secret. The client uses the secret as the secret key when HMAC'ing over the header section of the request. The resulting HMAC digest forms the content of the request auth section.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='FederatingCred'></a>
>
> ### FederatingCred
>
> The federating credential that demonstrates a prior successful authentication.
>
> This credential represents a successful authentication to an application which is allowed to federate a logon to another application. The token is used to verify a prior successful authentication to the federating application. The application id associated with the token must match the application id in the federating request.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> federating-auth-token|string|1|1|A credential token that demonstrates a prior successful authentication.|This token is produced for application servers upon successful authentication of a user.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AuthSessionSubCredential'></a>
>
> ### AuthSessionSubCredential
>
> Defines the possible subcredentials that can be used with an AuthSessionCredential.
>
> This credential envelopes other credentials. None of the contained credentials themselves contain other credentials, avoiding recursion.
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
> simple-passport|[SimplePassportCredential](#SimplePassportCredential)|1|1|A credential for verifying identity with Microsoft Passport.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AuthSessionCredential'></a>
>
> ### AuthSessionCredential
>
> A credential for authenticating a session with a sub-credential.
>
> This credential envelopes other credentials. None of the contained credentials themselves contain other credentials, avoiding recursion.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> sub-credential|[AuthSessionSubCredential](#AuthSessionSubCredential)|1|1|The user's credential that will be used with the application's credential to create the session.|
> shared-secret|[HMACAlgorithm](xref:HV_File_types#HMACAlgorithm)|1|1|The shared secret is used to authenticate all requests which include the token produced on succesful authentication. In order for a client to establish an authenticated session with the Microsoft Health Service, it must provide a shared secret. The client uses the secret as the secret key when HMAC'ing over the header section of the request. The resulting HMAC digest forms the content of the request auth section.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SimpleOpenIdCredential'></a>
>
> ### SimpleOpenIdCredential
>
> Represents the confirmed claimed id of a user who has been authenticated to an Open Id Provider.
>
> Authentication is performed to an Open Id Provider through Shell which passes it to platform for verification against a HealthVault account.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> claimed-id|[string128](xref:HV_File_types#string128)|1|1|The unique claimed identifier for the person.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SimpleFacebookCredential'></a>
>
> ### SimpleFacebookCredential
>
> Represents the confirmed user id of a user who has been authenticated to the facebook service.
>
> Authentication to Facebook is done through the Shell which extracts the user's user-id from the ticket and passes it to the platform for verification against a HealthVault account.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> user-id|[positiveLong](xref:HV_File_types#positiveLong)|1|1|The unique user-id for the person.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SimplePassportCredential'></a>
>
> ### SimplePassportCredential
>
> Represents the confirmed identification of a user who has been authenticated to the Passport service.
>
> Authentication to Passport is done through the Shell which extracts the user's PUID from the ticket and passes it to the platform for verification against a HealthVault account.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> puid|[puid](xref:HV_File_types#puid)|1|1|The unique Passport identifier for the person.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SimpleEmergencyAccessCredential'></a>
>
> ### SimpleEmergencyAccessCredential
>
> Represents a code to access a record for emergency purposes.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> access-code|[string128nw](xref:HV_File_types#string128nw)|1|1|The system wide unique code for the person's access.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntegratedWindowsCredential'></a>
>
> ### IntegratedWindowsCredential
>
> Represents the confirmed identification of a user who has been authenticated to integrated windows service.
>
> Authentication is done through any gating application which extracts the user's windows account security identifier and passes it to platform for verification against a HealthVault account.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> sid|[string255nw](xref:HV_File_types#string255nw)|1|1|The windows security identifier for the person.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AssociatedCredInfo'></a>
>
> ### AssociatedCredInfo
>
> Info used to describe the credential to associated with the account.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> credential-metadata|[stringnz](xref:HV_File_types#stringnz)|0|1|Meta-data associated with the credential that is used by Microsoft HealthVault.|An example of a meta datum is the description of the associated credential.
> credential-name|[string128](xref:HV_File_types#string128)|0|1|The credential name is used to identify the credential to the end user.|
> date-created|dateTime|0|1|The date this credential was created.|
> date-last-used|dateTime|0|1|The date this was last used to authenticate.|
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
> simple-encrypted|[stringnz](xref:HV_File_types#stringnz)|1|1|A simple credential encrypted.|This opaque credential is returned by the create credential calls. It represents the original authenticating credential.
> simple-userpass|[UserPassCred](#UserPassCred)|1|1|A simple user credential that authenticates a user in Microsoft HealthVault.|Each user has a unique username and associated password that identifies and authenticates a Microsoft HealthVault user.
> simple-passport|[SimplePassportCredential](#SimplePassportCredential)|1|1|A credential for verifying identity with Microsoft Passport.|
> simple-openid|[SimpleOpenIdCredential](#SimpleOpenIdCredential)|1|1|Represents the confirmed claimed id of a user who has been authenticated to an Open Id Provider.|
> simple-facebook|[SimpleFacebookCredential](#SimpleFacebookCredential)|1|1|Represents the confirmed user-id of a user who has been authenticated to the Facebook Service.|
> simple-emergency-access|[SimpleEmergencyAccessCredential](#SimpleEmergencyAccessCredential)|1|1|Represents emergency access to a record.|
> simple-phone-factor|[SimplePhoneFactorCredential](#SimplePhoneFactorCredential)|1|1|This credential type is used for two factor authentication by phone.|
> integrated-windows|[IntegratedWindowsCredential](#IntegratedWindowsCredential)|1|1|A simple integrated windows authentication consisting of the windows security identity.|
> saml|[SamlCredentialWithKey](#SamlCredentialWithKey)|1|1|Credential key based on SAML 2.0 token issued by a trusted STS.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='NewCredInfo'></a>
>
> ### NewCredInfo
>
> Info used to describe new credentials that will be associated with the account.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> credential-metadata|[stringnz](xref:HV_File_types#stringnz)|0|1|Meta-data associated with the credential that is used by Microsoft HealthVault.|An example of a meta datum is the description of the associated credential.
> credential-name|[string128](xref:HV_File_types#string128)|0|1|The credential name is used to identify the credential to the end user.|
> date-created|dateTime|0|1|The date this credential was created.|
> date-last-used|dateTime|0|1|The date this was last used to authenticate.|
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
> simple-encrypted|[stringnz](xref:HV_File_types#stringnz)|1|1|A simple credential encrypted.|This opaque credential is returned by the create credential calls. It represents the original authenticating credential.
> simple-userpass|[UserPassCred](#UserPassCred)|1|1|A simple user credential that authenticates a user in Microsoft HealthVault.|Each user has a unique username and associated password that identifies and authenticates a Microsoft HealthVault user.
> simple-passport|[SimplePassportCredential](#SimplePassportCredential)|1|1|A credential for verifying identity with Microsoft Passport.|
> simple-openid|[SimpleOpenIdCredential](#SimpleOpenIdCredential)|1|1|Represents the confirmed claimed id of a user who has been authenticated to an Open Id Provider.|
> simple-facebook|[SimpleFacebookCredential](#SimpleFacebookCredential)|1|1|Represents the confirmed user-id of a user who has been authenticated to the Facebook Service.|
> simple-emergency-access|[SimpleEmergencyAccessCredential](#SimpleEmergencyAccessCredential)|1|1|Represents emergency access to a record.|
> simple-phone-factor|[SimplePhoneFactorCredential](#SimplePhoneFactorCredential)|1|1|This credential type is used for two factor authentication by phone.|
> integrated-windows|[IntegratedWindowsCredential](#IntegratedWindowsCredential)|1|1|A simple integrated windows authentication consisting of the windows security identity.|
> saml|[SamlCredentialWithToken](#SamlCredentialWithToken)|1|1|SAML 2.0 token issued for a user by a trusted STS.|
> msa-with-ticket|[MSACredentialWithTicket](#MSACredentialWithTicket)|1|1|A credential for verifying identity with MSA.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SecondFactorCredential'></a>
>
> ### SecondFactorCredential
>
> Credential used for two factor authentication.
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
> simple-phone-factor|[SimplePhoneFactorCredential](#SimplePhoneFactorCredential)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Token'></a>
>
> ### Token
>
> The authenticated session token.
>
> If the request succeeded, then an authenticated session token is returned.
>
> ### Extension
>
> Base type: [stringz1024](xref:HV_File_types#stringz1024)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> app-id|[guid](xref:HV_File_types#guid)|required|||
> app-record-auth-action|[AppRecordAuthAction](xref:HV_File_types#AppRecordAuthAction)|required|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='MshAssociatedCredential'></a>
>
> ### MshAssociatedCredential
>
> Info used to describe the credentials that could be used for HealthVault - Microsoft Health account pairing.
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
> simple-passport|[SimplePassportCredential](#SimplePassportCredential)|1|1||
> simple-encrypted|[stringnz](xref:HV_File_types#stringnz)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AuthenticatingToken'></a>
>
> ### AuthenticatingToken
>
> An encrypted token representing the original credentials presented for authenticating to HealthVault.
>
> Two tokens are returned from CreateCredentialToken. This token represents the original credentials presented to HealthVault to authenticate a user. It will not authenticate the user in subsequent HealthVault requests.
>
> ### Extension
>
> Base type: [stringnz](xref:HV_File_types#stringnz)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> supported-instances|[stringnz](xref:HV_File_types#stringnz)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SamlToken'></a>
>
> ### SamlToken
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Any||1|1|The SAML token.|The SAML token consists of raw XML that is embedded in the request.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SamlCredentialWithToken'></a>
>
> ### SamlCredentialWithToken
>
> Represents the confirmed identification of a user authenticated by STS and issued a SAML security token.
>
> HealthVault obtains SAML token from STS using ws-federation handshakes.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> saml-token|[SamlToken](#SamlToken)|1|1|Saml 2.0 token.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SamlCredentialWithKey'></a>
>
> ### SamlCredentialWithKey
>
> Represents the confirmed identification of a user authenticated by STS and issued a SAML security token.
>
> HealthVault obtains SAML token from STS using ws-federation handshakes.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name-id|string|1|1|HealthVault specific unique credential key.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='MSACredentialWithTicket'></a>
>
> ### MSACredentialWithTicket
>
> Represents the confirmed identification of a user authenticated by Microsoft Account.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> msa-ticket|[string1024nw](xref:HV_File_types#string1024nw)|1|1|The authentication ticket created by Microsoft Account (MSA).|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='MSACredentialWithLongTicket'></a>
>
> ### MSACredentialWithLongTicket
>
> Represents the confirmed identification of a user authenticated by Microsoft Account. Accepts tickets provided by apps, which can be a longer string length.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> msa-ticket|[string2048nw](xref:HV_File_types#string2048nw)|1|1|The authentication ticket created by Microsoft Account (MSA).|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TextualPermissionsType'></a>
>
> ### TextualPermissionsType
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Custom||
> enumeration|ReadAll||
> enumeration|UpdateAll||
> enumeration|CreateAll||
> enumeration|DeleteAll||
> enumeration|ReadUpdateAll||
> enumeration|ReadCreateAll||
> enumeration|UpdateCreateAll||
> enumeration|ReadUpdateCreateAll||
> enumeration|ReadUpdateCreateDeleteAll||
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/auth.xsd)
[!code-xml[XSD schema](../xsd/auth.xsd)]
