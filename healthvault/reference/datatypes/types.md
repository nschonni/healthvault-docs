---
uid: HV_File_types
title: types
---

# types

## Overview

Property|Value
---|---
id|File_types
name|types
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
> <a name='CultureSpecificString'></a>
>
> ### CultureSpecificString
>
> The CultureSpecific... classes are intended for use with data that can be localized for one or more languages and cultures.
>
> The CultureSpecific... classes should be upward compatibile with the base types.
>
> ### Extension
>
> Base type: string
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> attribute||optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CultureSpecificStringnz'></a>
>
> ### CultureSpecificStringnz
>
> The CultureSpecific... classes are intended for use with data that can be localized for one or more languages and cultures.
>
> The CultureSpecific... classes should be upward compatibile with the base types.
>
> ### Extension
>
> Base type: [stringnz](xref:HV_File_types#stringnz)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> attribute||optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CultureSpecificString255'></a>
>
> ### CultureSpecificString255
>
> The CultureSpecific... classes are intended for use with data that can be localized for one or more languages and cultures.
>
> The CultureSpecific... classes should be upward compatibile with the base types.
>
> ### Extension
>
> Base type: [string255](xref:HV_File_types#string255)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> attribute||optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CultureSpecificString1024'></a>
>
> ### CultureSpecificString1024
>
> The CultureSpecific... classes are intended for use with data that can be localized for one or more languages and cultures.
>
> The CultureSpecific... classes should be upward compatibile with the base types.
>
> ### Extension
>
> Base type: [string1024](xref:HV_File_types#string1024)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> attribute||optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CultureSpecificString255nw'></a>
>
> ### CultureSpecificString255nw
>
> The CultureSpecific... classes are intended for use with data that can be localized for one or more languages and cultures.
>
> The CultureSpecific... classes should be upward compatibile with the base types.
>
> ### Extension
>
> Base type: [string255nw](xref:HV_File_types#string255nw)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> attribute||optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CultureSpecificString1024nw'></a>
>
> ### CultureSpecificString1024nw
>
> The CultureSpecific... classes are intended for use with data that can be localized for one or more languages and cultures.
>
> The CultureSpecific... classes should be upward compatibile with the base types.
>
> ### Extension
>
> Base type: [string1024nw](xref:HV_File_types#string1024nw)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> attribute||optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CultureSpecificUrl'></a>
>
> ### CultureSpecificUrl
>
> The CultureSpecific... classes are intended for use with data that can be localized for one or more languages and cultures.
>
> The CultureSpecific... classes should be upward compatibile with the base types.
>
> ### Extension
>
> Base type: [Url](xref:HV_File_types#Url)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> attribute||optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Phone'></a>
>
> ### Phone
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> description|string|0|1||
> is-primary|boolean|0|1||
> number|string|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Email'></a>
>
> ### Email
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> description|string|0|1||
> is-primary|boolean|0|1||
> address|[EmailAddress](#EmailAddress)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RcptAddress'></a>
>
> ### RcptAddress
>
> Identifies an message recipient by email and name.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> address|string|1|1|The email address to which the message will be sent.|The email address must conform to standard email address rules.
> name|string|1|1|The display name to be shown in the To field of the message being sent.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RcptPerson'></a>
>
> ### RcptPerson
>
> Represents a message recipient who is identified by a a unique Microsoft Health account identifier.
>
> The validated attribute determines whether the email address must first be validated by the account owner. If the validated attribute is true and the email address hasn't been validated then an error will be returned.
>
> ### Extension
>
> Base type: [guid](xref:HV_File_types#guid)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> validated|boolean|required|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RcptRecord'></a>
>
> ### RcptRecord
>
> Specifies that this message should be sent to custodians of the health record specified in the request envelope.
>
> The message will be sent to the email addresses of all the record custodians. The validated attribute determines whether the email addresses of the custodians must be validated. Any custodians not validated will be skipped. If the validated attribute is true and no custodians with validated email address are found, an error will be returned.
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> validated|boolean|required|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Address'></a>
>
> ### Address
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> description|string|0|1||
> is-primary|boolean|0|1||
> street|string|1|unbounded||
> city|string|1|1||
> state|string|0|1||
> postcode|string|1|1||
> country|string|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='BlobHashAlgorithmParameters'></a>
>
> ### BlobHashAlgorithmParameters
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> block-size|positiveInteger|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Sig'></a>
>
> ### Sig
>
> A digital signature produced by an application to prove possession of a private key.
>
> Each application server has at least one public key associated to its application identifier. Microsoft HealthVault verifies the signature using the public key specified via the thumbprint.
>
> ### Extension
>
> Base type: [string1024](xref:HV_File_types#string1024)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> digestMethod|[string16](#string16)|required|||
> sigMethod|[string16](#string16)|required|||
> thumbprint|string|required|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='HashFinalizedData'></a>
>
> ### HashFinalizedData
>
> The resulting hash digest.
>
> Microsoft HealthVault will compute the hash over the same data that was used to compute this digest and compare them.
>
> ### Extension
>
> Base type: [string512](xref:HV_File_types#string512)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> algName|[stringnz](#stringnz)|required|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='HashFinalized'></a>
>
> ### HashFinalized
>
> Digest from a hash operation that is used to provide data integrity verification for requests.
>
> This is the result of a hash operation, which is used to ensure the hashed data has not changed. Microsoft HealthVault will compute the corresponding hash over the same data and compare the resulting digests. If the digests are not equal, the request will fail.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> hash-data|[HashFinalizedData](#HashFinalizedData)|1|1|The resulting hash digest.|Microsoft HealthVault will compute the hash over the same data that was used to compute this digest and compare them. If the digests are not equal, the request will fail.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='HMACAlgorithmData'></a>
>
> ### HMACAlgorithmData
>
> The shared secret used in HMAC operations.
>
> The shared secret is used in HMAC operations to authenticate all requests which includes an authenticated session token. In order for a client to establish an authenticated session with Microsoft HealthVault, it must provide a shared secret. The client uses the secret as the secret key when HMAC'ing over the header section of the request. The resulting HMAC digest forms the content of the request auth section. The same algorithm specified in the initial token request must be used for all subsequent HMAC operations applied when using the same authenticated session token.
>
> ### Extension
>
> Base type: [string512](xref:HV_File_types#string512)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> algName|[stringnz](#stringnz)|required|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='HMACAlgorithm'></a>
>
> ### HMACAlgorithm
>
> A description of an HMAC that is used to establish the authentication and integrity checks for requests to Microsoft HealthVault.
>
> This describes the shared secret that the is created on the client side.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> hmac-alg|[HMACAlgorithmData](#HMACAlgorithmData)|1|1|The specification of the HMAC algorithm.|The same algorithm must be used for all subsequent HMAC operations applied when using the same authenticated session token.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='HMACFinalizedData'></a>
>
> ### HMACFinalizedData
>
> The resulting HMAC digest.
>
> The digest is computed by Microsoft HealthVault and is then compared to this result.
>
> ### Extension
>
> Base type: [string512](xref:HV_File_types#string512)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> algName|[stringnz](#stringnz)|required|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='HMACFinalized'></a>
>
> ### HMACFinalized
>
> Digest from a HMAC operation that is used to provide both authentication and integrity verification for requests.
>
> This is the result of an HMAC operation, as opposed to HMAC algorithm which specifies the properties of the operation. The HMAC key is the shared secret provided in the original application request to create an authenticated session token.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> hmac-data|[HMACFinalizedData](#HMACFinalizedData)|1|1|The resulting HMAC digest.|The digest is computed again by Microsoft HealthVault and then is compared to this result.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AppInfo'></a>
>
> ### AppInfo
>
> The applications to create credential tokens for.
>
> Each application will be issued a unique token that has a limited lifetime.
>
> ### Extension
>
> Base type: [guid](xref:HV_File_types#guid)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> is-multi-record-app|boolean|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AppServerCredInfo'></a>
>
> ### AppServerCredInfo
>
> Application server credential information.
>
> Information provided by the requesting application that will be used by Microsoft HealthVault to determine if an authenticated session token will be issued to the caller.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> app-id|[guid](#guid)|1|1|The id of the application that is providing the credential.|The public key that is used to verify the signature is associated to this application id.
> shared-secret|[HMACAlgorithm](#HMACAlgorithm)|1|1|This is the shared secret that is used for subsequent HMACed request envelopes when the application makes a request to Microsoft HealthVault.|This section describes the algorithm that will be used on the client side during subequenct requests.
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
> sig|[Sig](#Sig)|1|1|The signature of the content section.|This signature is generated using the application's private key. The corresponding public key is associated with the application id by Microsoft HealthVault.
> content|[AppServerCredInfo](#AppServerCredInfo)|1|1|The application's credential information.|This section is signed by the application's private key.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='guids'></a>
>
> ### guids
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> id|[guid](#guid)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CultureSpecificExtensionItems'></a>
>
> ### CultureSpecificExtensionItems
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> extension-item|[CultureSpecificExtensionItem](#CultureSpecificExtensionItem)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CultureSpecificExtensionItem'></a>
>
> ### CultureSpecificExtensionItem
>
> Any extra data in string-value pair format.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|[stringnz](#stringnz)|1|1||
> value|[CultureSpecificString](#CultureSpecificString)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DateRange'></a>
>
> ### DateRange
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> date-min|dateTime|0|1||
> date-max|dateTime|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Culture'></a>
>
> ### Culture
>
> Represents a specific culture by combining a language and country/region.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> language|[stringnwz64](#stringnwz64)|0|1|The language of the culture.|
> country|[stringnwz64](#stringnwz64)|0|1|The country or region of the culture.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Group'></a>
>
> ### Group
>
> Defines a group to which on or more people may be a member.
>
> Groups are used for security purposes. They make it easier to grant access rights to a Microsoft HealthVault web service method, authorize people to a record, or grant access rights to particular data in a health record. They are not meant to be used as distribution lists for email or other forms of communication.<br /><br /> For example, all the doctors at a particular clinic may belong to a group to which an individual may grant permission to see medications in their health record.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|[string255](#string255)|1|1|The name of the group.|
> id|[guid](#guid)|1|1|A unique identifier for the group.|Each group in Microsoft HealthVault is assigned a unique identifier which is a 128-bit integer (16 bytes) and is used to identify the group when calling methods on the service.
> contact-email|[EmailAddress](#EmailAddress)|1|1|The email address at which to contact the "owner" of the group.|The email address for the group should refer to a person or set of people that can manage the group membership. It should not be used to define a mailing list for the entire group.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Groups'></a>
>
> ### Groups
>
> Contains a list of the groups a person is a member of.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> group|[Group](#Group)|1|unbounded|A group that a person is a member of.|Groups are used for security purposes. They make it easier to grant access rights to a Microsoft HealthVault web service method, authorize people to a record, or grant access rights to particular data in a health record. They are not meant to be used as distribution lists for email or other forms of communication.<br /><br /> For example, all the doctors at a particular clinic may belong to a group to which an individual may grant permission to see medications in their health record.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PersonInfo'></a>
>
> ### PersonInfo
>
> Basic information about a person.
>
> Basic information about a person including their name, login name, email address, application specific settings, record selected for use by the application, and other records that are the person authorized the application to use.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> person-id|[guid](#guid)|1|1|The unique identifier for a person.|Each account in Microsoft HealthVault is assigned a unique identifier which is a 128-bit integer (16 bytes) and is used to identify the account when calling methods on the service.
> name|[string255](#string255)|1|1|The name of the person.|This is the full name of the person. Note, it may be different than the name associated with the record the person has authorized the application to use.
> app-settings|[AppSettings](#AppSettings)|0|1|The application specific settings for the person.|An application can store person preferences and other settings for the person in the Microsoft Health Service. These settings are automatically returned when GetPersonInfo is called.<br /><br /> If you are familiar with Windows development, this would be analogus to HKEY_CURRENT_USER settings in the Windows Registry.<br /><br /> Microsoft HealthVault does not interpret this data at all and only acts as storage for it on behalf of the application.
> selected-record-id|[guid](#guid)|0|1|The health record the person selected to be used by default for the application.|The first time a person uses an application, they are required to select a health record to use with the application. The HealthVault platform remembers the selection and authorizes the application to use that record. A person may choose to have multiple records authorized for one application but the application should use the selected record by default.
> more-records|boolean|0|1|Tells the caller whether more records exist for the user that weren't returned.|HealthVault will return a maximum number of records for a person during a GetPersonInfo call based on configuration (default is 25 but subject to change). This element will be true if more than the maximum number of records exist for the user and some were not returned.
> record|[Record](#Record)|0|unbounded|All the records that a person has authorized an application to use.|A person may authorize an application to use any number of health records that the person has rights to. These are returned as a list of information about each of the records. Most applications should use the selected-record-id, but some applications that can work with many health records at one time can retrieve them using this element.
> groups|[Groups](#Groups)|0|1|The set of groups the person is a member of.|This element contains group elements containing the name, unique identifier, and contact email for the group.
> preferred-culture|[Culture](#Culture)|0|1|The user's preferred culture for use with comparisons, collation, currency, dates, etc.|If not present, the application should use the operating system or browser settings as appropriate.
> preferred-uiculture|[Culture](#Culture)|0|1|The user's preferred UI culture for use with selecting the language that the application should use when showing text and images to the user.|If not present, the application should use the operating system or browser settings as appropriate.
> location|[Location](#Location)|0|1|The location of the user account.|
> effective-record-permission-list|[EffectiveRecordPermissionList](#EffectiveRecordPermissionList)|0|1|An optional list of the effective permissions the calling application has for the specified record.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EffectiveRecordPermissionList'></a>
>
> ### EffectiveRecordPermissionList
>
> A list of the effective permissions the calling application has for the specified record.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> effective-record-permission|[EffectiveRecordPermission](#EffectiveRecordPermission)|1|unbounded|A list of the permissions the calling application has to the specified record.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EffectiveRecordPermission'></a>
>
> ### EffectiveRecordPermission
>
> A list of the permissions the calling application has to the specified record.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> record-id|[guid](#guid)|1|1|The unique identifier for the record to which the application has the following permissions.|
> thing-type-permission|[ThingTypePermission](#ThingTypePermission)|0|unbounded|The permissions for online or offline access that the authenticated person has for the specified thing type in the specified record in the context of the current application.|If for a thing type id in the request neither online nor offline access permissions are available, no result is returned for that particular thing type id.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Permissions'></a>
>
> ### Permissions
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> permission|[Permission](#Permission)|1|unbounded|A collection of permission objects.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ThingTypePermission'></a>
>
> ### ThingTypePermission
>
> The permissions for online or offline access that the authenticated person has for the specified thing type in the specified record in the context of the current application.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> thing-type-id|[guid](#guid)|1|1|A unique identifier identifying the thing type for which the permissions are available.|
> online-access-permissions|[Permissions](#Permissions)|0|1|The permissions for online access that the authenticated person has for this thing type in the specified record in the context of the current application.|
> offline-access-permissions|[Permissions](#Permissions)|0|1|The permissions for offline access that the authenticated person has for this thing type in the specified record in the context of the current application.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AppSettings'></a>
>
> ### AppSettings
>
> Application specific settings for a person.
>
> An application can store person preferences and other settings for the person in the Microsoft Health Service. These settings are automatically returned when GetPersonInfo is called.<br /><br /> If you are familiar Windows development, this would be analogus to HKEY_CURRENT_USER settings in the Windows Registry.<br /><br /> Microsoft HealthVault does not interpret this data at all and only acts as storage for it on behalf of the application.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Any||0|unbounded|Application specific XML.|An application can provide any XML which defines settings for the application for a particular person.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Record'></a>
>
> ### Record
>
> Basic information about the authenticated person's view of a health record.
>
> Health records are a place to store health and fitness related data. Each person may be authorized to zero to many health records. This type represents the metadata about the authenticated person's view of the record, including it's unique identifier, the relationship the authorized person has with the owner of the record, the name of the record, whether the authorized person is a custodian of the record, and more.
>
> ### Extension
>
> Base type: [string255](xref:HV_File_types#string255)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> id|[guid](#guid)|required|||
> record-custodian|boolean|optional|||
> rel-type|[int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)|required|||
> rel-name|[string255](#string255)|optional|||
> auth-expires|dateTime|optional|||
> auth-expired|boolean|optional|||
> display-name|[string255](#string255)|optional|||
> state|[RecordState](#RecordState)||||
> date-created|dateTime|optional|||
> max-size-bytes|[positiveLong](#positiveLong)|optional|||
> size-bytes|[positiveLong](#positiveLong)|optional|||
> app-record-auth-action|[AppRecordAuthAction](#AppRecordAuthAction)|optional|||
> auto-reconcile-documents|boolean|optional|||
> app-specific-record-id|string|optional|||
> location-country|[string3nw](#string3nw)|optional|||
> location-state-province|[string3nw](#string3nw)|optional|||
> date-updated|dateTime|optional|||
> latest-operation-sequence-number|long|optional|||
> record-app-auth-created-date|dateTime|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='LocalizedString'></a>
>
> ### LocalizedString
>
> ### Extension
>
> Base type: string
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> language||optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='coded-value'></a>
>
> ### coded-value
>
> Defines a value which has been coded in a Microsoft Health Vocabulary.
>
> Microsoft HealthVault provides a set of vocabularies containing common health and fitness terms and codes. Vocabularies are identified by their family, type, and version and contain values which identify an entry in that vocabulary by code.<br /><br /> For example, a prescription vocabulary may be identified by the family 'NCPDP', type 'SCRIPT', and version '1.0' and contain a code of 10 which identifies a 'tablet' form of medication.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> value|string|1|1|The code value which identifies the item in the vocabulary.|Codes are unique to the vocabulary they reside in. The codes for a particular vocabulary can be enumerated using GetVocabulary.
> family|string|0|1|The family of the vocabulary.|The family of a vocabulary partially identifies the vocabulary instance along with type and version. If the value is missing the family is assumed to be 'wc' which is the Microsoft Health Lexicon. <br /> For example, 'NCPDP' is the vocabulary family for codes in the National Council for Prescription Drug Programs.
> type|string|1|1|The type of the vocabulary.|This is the name that identifies the vocabulary in the family of vocabularies.<br /><br /> For example, 'SCRIPT' is the vocabulary name for medical prescriptions in the 'NCPDP' family of vocabularies.
> version|string|0|1|The version of the vocabulary.|The version identifies which version of a vocabulary identified by the 'type' element the code is in if more than one version is present.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='codable-value'></a>
>
> ### codable-value
>
> A value that may have codes from one or more Microsoft Health vocabularies associated with it.
>
> A codable value represents a value that may reference a coded value in one or more of the Microsoft Health vocabularies. Though it does not require the value to be in a vocabulary.<br /><br /> For example, aerobic session data has a mode element of type codable-value. Although many common forms of aerobic session mode can be found in the Microsoft Health Lexicon using the 'aerobic-activities' vocabulary, not all possible activities can be found there. If the activity does exist in the vocabulary it is recommended that applications add the coded-value for that code as a 'code' element and set the 'text' element to the display value for that code. If the activity does not exist in the vocabulary the 'code' element should not be specified and the 'text' element should contain the data the user entered.<br /><br /> By using the coded-value when available the data can be easily localized by Microsoft HealthVault and can also be utilized by applications that are mining the data based on certain code values.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> text|string|1|1|The textual representation of the value.|This may be the display value from one of the coded-values or it may be the user entered value.
> code|[coded-value](#coded-value)|0|unbounded|The codes representing the value from a Microsoft Health vocabulary.|Some values can be represented by codes in more that one vocabulary. If appropriate add coded-values from as many vocabularies as are relevant.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Location'></a>
>
> ### Location
>
> A location consisting of a country and optionally a state/province.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> country|[string3nw](#string3nw)|1|1|The ISO 3166-1 two-letter country code for the location.|
> state-province|[string3nw](#string3nw)|0|1|The ISO 3166-2 state/province code for the location.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Instance'></a>
>
> ### Instance
>
> Describes a single instance of Microsoft HealthVault.
>
> In order to work seamlessly across the globe, HealthVault is deployed in multiple data centers around the world. Each of these deployments contains a complete instance of all HealthVault services, including both the HealthVault Shell and platform, and stores health record data primarily for users from a particular region or constituent population. Although an instance can never access personal health data stored in another instance, it knows that the other instances exist. When an application or end user needs a user's health record data, they can make a call to any instance to learn of the instance in which that user's data is stored.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> id|[string255nw](#string255nw)|1|1|The unique identifier for the instance within the HealthVault ecosystem.|
> name|[string255nw](#string255nw)|1|1|A friendly name for the instance.|This name is not be to used as a unique identifier.
> description|[string1024](#string1024)|1|1|A friendly description of the instance.|This description is not be to used as a unique identifier.
> platform-url|[Url](#Url)|1|1|The platform service URL for this instance.|
> shell-url|[Url](#Url)|1|1|The Shell URL for this instance.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EmailAddress'></a>
>
> ### EmailAddress
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|6||
> maxLength|128||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='LoginName'></a>
>
> ### LoginName
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|6||
> maxLength|128||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Gender'></a>
>
> ### Gender
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|m||
> enumeration|f||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Url'></a>
>
> ### Url
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|1024||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='positiveLong'></a>
>
> ### positiveLong
>
> Represents a positive 64 bit integer.
>
> ### Restriction
>
> Base type: long
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minInclusive|0||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='guid'></a>
>
> ### guid
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> pattern|[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='puid'></a>
>
> ### puid
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> pattern|[a-fA-F0-9]{16}||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Permission'></a>
>
> ### Permission
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|All||
> enumeration|Read||
> enumeration|Update||
> enumeration|Create||
> enumeration|Delete||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='NameMatchType'></a>
>
> ### NameMatchType
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|exact||
> enumeration|prefix||
> enumeration|contains||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='base64Sha1'></a>
>
> ### base64Sha1
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|28||
> maxLength|28||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string1024'></a>
>
> ### string1024
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|1024||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string2048nw'></a>
>
> ### string2048nw
>
> A string between 1 and 2048 characters and not all whitespace.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|2048||
> pattern|(\s*[^\s]+\s*)+||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string1024nw'></a>
>
> ### string1024nw
>
> A string between 1 and 1024 characters and not all whitespace.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|1024||
> pattern|(\s*[^\s]+\s*)+||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string20nw'></a>
>
> ### string20nw
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|20||
> pattern|(\s*[^\s]+\s*)+||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string1nw'></a>
>
> ### string1nw
>
> A string of one character and not containing only whitespace character.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|1||
> pattern|(\s*[^\s]+\s*)+||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string3nw'></a>
>
> ### string3nw
>
> A string no longer than 3 characters and not containing only whitespace characters.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|3||
> pattern|(\s*[^\s]+\s*)+||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string512'></a>
>
> ### string512
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|512||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string255'></a>
>
> ### string255
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|255||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string255nw'></a>
>
> ### string255nw
>
> A string between 1 and 255 characters and not all whitespace.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|255||
> pattern|(\s*[^\s]+\s*)+||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string300nw'></a>
>
> ### string300nw
>
> A string between 1 and 300 characters and not all whitespace.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|300||
> pattern|(\s*[^\s]+\s*)+||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string128'></a>
>
> ### string128
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|128||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string128nw'></a>
>
> ### string128nw
>
> A string between 1 and 128 characters and not all whitespace.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|128||
> pattern|(\s*[^\s]+\s*)+||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string64'></a>
>
> ### string64
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|64||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string32'></a>
>
> ### string32
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|32||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string32nw'></a>
>
> ### string32nw
>
> A string between 1 and 32 characters and not all whitespace.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|32||
> pattern|(\s*[^\s]+\s*)+||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string16'></a>
>
> ### string16
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|16||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string10nw'></a>
>
> ### string10nw
>
> A string between 1 and 10 characters and not all whitespace.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|10||
> pattern|(\s*[^\s]+\s*)+||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string25nw'></a>
>
> ### string25nw
>
> A string between 1 and 25 characters and not all whitespace.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|25||
> pattern|(\s*[^\s]+\s*)+||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='string50nw'></a>
>
> ### string50nw
>
> A string between 1 and 50 characters and not all whitespace.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|50||
> pattern|(\s*[^\s]+\s*)+||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='stringz1024'></a>
>
> ### stringz1024
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|0||
> maxLength|1024||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='stringz512'></a>
>
> ### stringz512
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|0||
> maxLength|512||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='stringz255'></a>
>
> ### stringz255
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|0||
> maxLength|255||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='stringz128'></a>
>
> ### stringz128
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|0||
> maxLength|128||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='stringz64'></a>
>
> ### stringz64
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|0||
> maxLength|64||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='stringz32'></a>
>
> ### stringz32
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|0||
> maxLength|32||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='stringz16'></a>
>
> ### stringz16
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|0||
> maxLength|16||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='stringnz'></a>
>
> ### stringnz
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='stringnznw'></a>
>
> ### stringnznw
>
> Non-zero length string that must contain non-whitespace characters.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> pattern|(\s*[^\s]+\s*)+||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='stringnz256'></a>
>
> ### stringnz256
>
> ### Restriction
>
> Base type: [stringnz](xref:HV_File_types#stringnz)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|256||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='stringnz512'></a>
>
> ### stringnz512
>
> ### Restriction
>
> Base type: [stringnz](xref:HV_File_types#stringnz)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|512||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='stringnz1024'></a>
>
> ### stringnz1024
>
> ### Restriction
>
> Base type: [stringnz](xref:HV_File_types#stringnz)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|1024||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='stringnwz64'></a>
>
> ### stringnwz64
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|0||
> maxLength|64||
> pattern|(\s*[^\s]+\s*)+||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='base64'></a>
>
> ### base64
>
> A base64 string.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> pattern|^[a-zA-Z0-9/+]*={0,2}$||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='char2'></a>
>
> ### char2
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|2||
> maxLength|2||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='OmbEthnicity'></a>
>
> ### OmbEthnicity
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|American Indian or Alaska Native||
> enumeration|Asian||
> enumeration|Black or African American||
> enumeration|Hispanic or Latino||
> enumeration|Native Hawaiian or Other Pacific Islander||
> enumeration|White||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='iso4217'></a>
>
> ### iso4217
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|aed||
> enumeration|afa||
> enumeration|all||
> enumeration|amd||
> enumeration|ang||
> enumeration|aoa||
> enumeration|ars||
> enumeration|aud||
> enumeration|awg||
> enumeration|azm||
> enumeration|bam||
> enumeration|bbd||
> enumeration|bdt||
> enumeration|bgn||
> enumeration|bhd||
> enumeration|bif||
> enumeration|bmd||
> enumeration|bnd||
> enumeration|bob||
> enumeration|brl||
> enumeration|bsd||
> enumeration|btn||
> enumeration|bwp||
> enumeration|byr||
> enumeration|bzd||
> enumeration|cad||
> enumeration|cdf||
> enumeration|chf||
> enumeration|clp||
> enumeration|cny||
> enumeration|cop||
> enumeration|crc||
> enumeration|csd||
> enumeration|cup||
> enumeration|cve||
> enumeration|cyp||
> enumeration|czk||
> enumeration|djf||
> enumeration|dkk||
> enumeration|dop||
> enumeration|dzd||
> enumeration|eek||
> enumeration|egp||
> enumeration|ern||
> enumeration|etb||
> enumeration|eur||
> enumeration|fjd||
> enumeration|fkp||
> enumeration|gbp||
> enumeration|gel||
> enumeration|ggp||
> enumeration|ghc||
> enumeration|gip||
> enumeration|gmd||
> enumeration|gnf||
> enumeration|gtq||
> enumeration|gyd||
> enumeration|hkd||
> enumeration|hnl||
> enumeration|hrk||
> enumeration|htg||
> enumeration|huf||
> enumeration|idr||
> enumeration|ils||
> enumeration|imp||
> enumeration|inr||
> enumeration|iqd||
> enumeration|irr||
> enumeration|isk||
> enumeration|jep||
> enumeration|jmd||
> enumeration|jod||
> enumeration|jpy||
> enumeration|kes||
> enumeration|kgs||
> enumeration|khr||
> enumeration|kmf||
> enumeration|kpw||
> enumeration|krw||
> enumeration|kwd||
> enumeration|kyd||
> enumeration|kzt||
> enumeration|lak||
> enumeration|lbp||
> enumeration|lkr||
> enumeration|lrd||
> enumeration|lsl||
> enumeration|ltl||
> enumeration|lvl||
> enumeration|lyd||
> enumeration|mad||
> enumeration|mdl||
> enumeration|mga||
> enumeration|mkd||
> enumeration|mmk||
> enumeration|mnt||
> enumeration|mop||
> enumeration|mro||
> enumeration|mtl||
> enumeration|mur||
> enumeration|mvr||
> enumeration|mwk||
> enumeration|mxn||
> enumeration|myr||
> enumeration|mzm||
> enumeration|nad||
> enumeration|ngn||
> enumeration|nio||
> enumeration|nok||
> enumeration|npr||
> enumeration|nzd||
> enumeration|omr||
> enumeration|pab||
> enumeration|pen||
> enumeration|pgk||
> enumeration|php||
> enumeration|pkr||
> enumeration|pln||
> enumeration|pyg||
> enumeration|qar||
> enumeration|rol||
> enumeration|rub||
> enumeration|rwf||
> enumeration|sar||
> enumeration|sbd||
> enumeration|scr||
> enumeration|sdd||
> enumeration|sek||
> enumeration|sgd||
> enumeration|shp||
> enumeration|sit||
> enumeration|skk||
> enumeration|sll||
> enumeration|sos||
> enumeration|spl||
> enumeration|srd||
> enumeration|std||
> enumeration|svc||
> enumeration|syp||
> enumeration|szl||
> enumeration|thb||
> enumeration|tjs||
> enumeration|tmm||
> enumeration|tnd||
> enumeration|top||
> enumeration|trl||
> enumeration|try||
> enumeration|ttd||
> enumeration|tvd||
> enumeration|twd||
> enumeration|tzs||
> enumeration|uah||
> enumeration|ugx||
> enumeration|usd||
> enumeration|uyu||
> enumeration|uzs||
> enumeration|veb||
> enumeration|vnd||
> enumeration|vuv||
> enumeration|wst||
> enumeration|xaf||
> enumeration|xag||
> enumeration|xau||
> enumeration|xcd||
> enumeration|xdr||
> enumeration|xof||
> enumeration|xpd||
> enumeration|xpf||
> enumeration|xpt||
> enumeration|yer||
> enumeration|zar||
> enumeration|zmk||
> enumeration|zwd||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RecordState'></a>
>
> ### RecordState
>
> The state of a person's authorization to a record.
>
> Authorization to a record may be suspended or revoked if there is suspicion of fraud. In most cases the state will be Active.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Active|The authorization is active and the authenticated person can access the record with as much rights as was granted to the person.|
> enumeration|ReadOnly|The authorization is in question and the authenticated person can read data in the record but cannot write to the record even if they were previously granted write privileges.|
> enumeration|Suspended|The authorization was used in a fraudulent manor and can no longer be used.|In most cases attempts to use a suspended record will result in INVALID_RECORD_STATE being returned from the method.
> enumeration|Deleted|The record authorization has been deleted and can no longer be used to access the record.|In most cases attempts to use a deleted record will result in INVALID_RECORD_STATE being returned from the method.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AppRecordAuthAction'></a>
>
> ### AppRecordAuthAction
>
> The states of application-record authorization.
>
> If there are actions required, then the enumeration value describes the required user action to successfully create a token.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|||
> enumeration|AuthorizationRequired|The application has never been authorized. The user must authorize this application.|
> enumeration|ReauthorizationRequired|The user must authorize this application.|
> enumeration|ReauthorizationNotPossible|It is not possible to reauthorize this application.|
> enumeration|NoActionRequired|No actions are required.|
> enumeration|RecordLocationNotSupported|The record location isn't supported by the application.|
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/types.xsd)
[!code-xml[XSD schema](../xsd/types.xsd)]
