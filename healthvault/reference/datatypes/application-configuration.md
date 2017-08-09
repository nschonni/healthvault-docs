---
uid: HV_File_application-configuration
title: application
---

# application

## Overview

Property|Value
---|---
id|File_application-configuration
name|application
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
> <a name='ApplicationAttributes'></a>
>
> ### ApplicationAttributes
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> app-attribute|[stringnz](xref:HV_File_types#stringnz)|1|20|The application attributes.|Multiple values can be specified by passing multiple instances of this element. Currently supported values: "hippa" Specifies that the application is covered by HIPAA. "clinicaltrial" Specifies that the application is related to a clinical trial and may need a disclosure. Additional supported values may be added in the future. Application code must ignore any unrecognized values to avoid breaking when values are added.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='App'></a>
>
> ### App
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> id|[guid](xref:HV_File_types#guid)|1|1||
> name|[CultureSpecificString255](xref:HV_File_types#CultureSpecificString255)|0|unbounded||
> app-auth-required|boolean|1|1||
> restrict-app-users|boolean|1|1|Specifies whether the application authorization is restricted to users added through AuthorizeApplication method.|
> is-published|boolean|1|1||
> action-url|string|0|1||
> description|[CultureSpecificString](xref:HV_File_types#CultureSpecificString)|0|unbounded||
> auth-reason|[CultureSpecificString](xref:HV_File_types#CultureSpecificString)|0|unbounded||
> domain-name|[string255](xref:HV_File_types#string255)|0|1||This parameter specifies the application's domain name. E-mail sent from the application, will have its From address originating from this domain. If the domain were myapp.com, then the From address will be "mailbox@myapp.com", where mailbox is specified in the send message request from the app.
> client-service-token|[guid](xref:HV_File_types#guid)|0|1|Access token for client services.|Token required to access HealthVault client services. For instance, the vocabulary search service.
> persistent-tokens|[AppPersistentTokens](#AppPersistentTokens)|0|1||
> privacy-statement|[StatementInfo](#StatementInfo)|0|1|The application's privacy statement as a base64 encoded string and its corresponding content type.|
> terms-of-use|[StatementInfo](#StatementInfo)|0|1|The application's terms of use statement as a base64 encoded string and its corresponding content type.|
> dtc-success-message|[StatementInfo](#StatementInfo)|0|1|The message to display to the use when direct to clinial authorization completes successfully.|Represented as a base64 encoded string and its corresponding content type.
> app-attributes|[ApplicationAttributes](#ApplicationAttributes)|0|1|The application attributes.|
> app-type|[string32](xref:HV_File_types#string32)|1|1|The type of application.|The valid application types are: Web, Soda
> master-app-id|[guid](xref:HV_File_types#guid)|0|1|The application id of the master app.|This element may be included if the application is a child of a master application.
> master-app-name|[CultureSpecificString255](xref:HV_File_types#CultureSpecificString255)|0|1|The application name of the master app.|This element may be included if the application is a child of a master application.
> created-date|dateTime|0|1|The date the application was created.|The date the application was created within HealthVault.
> updated-date|dateTime|0|1|The date the application was updated.|The date the application was updated within HealthVault.
> bulk-extraction-settings|[BulkExtractionSettings](#BulkExtractionSettings)|0|1|Settings related to bulk-extraction of data by HealthVault applications.|Contains settings like - whether the application has been onboarded for bulk extraction and whether the application allows the user to opt-in for bulk extraction.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AppWithLogos'></a>
>
> ### AppWithLogos
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> id|[guid](xref:HV_File_types#guid)|1|1||
> name|[CultureSpecificString255](xref:HV_File_types#CultureSpecificString255)|1|unbounded||
> app-auth-required|boolean|1|1||
> restrict-app-users|boolean|1|1|Specifies whether the application authorization is restricted to users added through AuthorizeApplication method.|
> is-published|boolean|1|1||
> action-url|string|0|1||
> description|[CultureSpecificString](xref:HV_File_types#CultureSpecificString)|0|unbounded||
> auth-reason|[CultureSpecificString](xref:HV_File_types#CultureSpecificString)|0|unbounded||
> domain-name|[string255](xref:HV_File_types#string255)|0|1||This parameter specifies the application's domain name. E-mail sent from the application, will have its From address originating from this domain. If the domain were myapp.com, then the From address will be "mailbox@myapp.com", where mailbox is specified in the send message request from the app.
> client-service-token|[guid](xref:HV_File_types#guid)|0|1|Access token for client services.|Token required to access HealthVault client services. For instance, the vocabulary search service.
> large-logo|[AppLargeLogoInfo](#AppLargeLogoInfo)|0|1||
> small-logo|[AppSmallLogoInfo](#AppSmallLogoInfo)|0|1||
> persistent-tokens|[AppPersistentTokens](#AppPersistentTokens)|0|1||
> person-online-base-auth-xml|[AuthXml](xref:HV_File_auth#AuthXml)|1|1||
> person-offline-base-auth-xml|[AuthXml](xref:HV_File_auth#AuthXml)|0|1||
> privacy-statement|[StatementInfo](#StatementInfo)|0|1|The application's privacy statement as a base64 encoded string and its corresponding content type.|
> terms-of-use|[StatementInfo](#StatementInfo)|0|1|The application's terms of use statement as a base64 encoded string and its corresponding content type.|
> dtc-success-message|[StatementInfo](#StatementInfo)|0|1|The message to display to the use when direct to clinial authorization completes successfully.|Represented as a base64 encoded string and its corresponding content type.
> app-attributes|[ApplicationAttributes](#ApplicationAttributes)|0|1|The application attributes.|
> app-type|[string32](xref:HV_File_types#string32)|1|1|The type of application.|The valid application types are: Web, Soda
> master-app-id|[guid](xref:HV_File_types#guid)|0|1|The application id of the master app.|This element may be included if the application is a child of a master application.
> master-app-name|[CultureSpecificString255](xref:HV_File_types#CultureSpecificString255)|0|1|The application name of the master app.|This element may be included if the application is a child of a master application.
> created-date|dateTime|0|1|The date the application was created.|The date the application was created within HealthVault.
> updated-date|dateTime|0|1|The date the application was updated.|The date the application was updated within HealthVault.
> valid-ip-prefixes|[string255nw](xref:HV_File_types#string255nw)|0|1|A comma separated list of IP address masks from which the application can call HealthVault.|HealthVault provides some added security to applications by supporting calls that come from valid IP addresses of the application. IP addresses can be specified using a specific IP address and 32 bit mask like 192.168.0.1/32 or by specifying a subnet and mask like 192.168.0.0/16. You can have more than one IP address or mask by comma separating them.
> vocabulary-authorizations|[VocabularyAuthorizations](xref:HV_File_vocab#VocabularyAuthorizations)|0|1|List of HealthVault vocabularies that the child applications of this application can be configured to have access to.|If unspecified the access is given to all publically available vocabularies in the HealthVault platform.
> child-vocabulary-authorizations-ceiling|[VocabularyAuthorizations](xref:HV_File_vocab#VocabularyAuthorizations)|0|1|List of HealthVault vocabularies that the child applications of this application can be configured to have access to.|If unspecified the access is limited to all publically available vocabularies in the HealthVault platform.
> methods|[stringnz](xref:HV_File_types#stringnz)|0|1|List of HealthVault methods that the application is allowed to call.|Version 1 of the AddApplication and UpdateApplication methods ignore this element and configures the application with x-BaseMethods and x-UserDataExtended method groups. Version 2 of the AddApplication and UpdateApplication methods ensure the methods specified are equal to or a subset of the child-method-mask-ceiling configured for the master application.
> supported-record-locations|[SupportedLocationList](xref:HV_File_location#SupportedLocationList)|0|1|The record locations that this application supports.|
> supported-instances|[SupportedInstanceList](xref:HV_File_location#SupportedInstanceList)|0|1|The HealthVault instances that this application supports.|
> meaningful-use-sources|[MeaningfulUseSourcesList](#MeaningfulUseSourcesList)|0|1|The list of associated Meaningful Use data sources for this application.|Sources specified must be equal to or a subset of the meaningful-use-sources-ceiling configured for the master application.
> meaningful-use-sources-ceiling|[MeaningfulUseSourcesList](#MeaningfulUseSourcesList)|0|1|The list of associated Meaningful Use data sources that this application's child applications can be configured with.|
> organizations|[OrganizationsList](#OrganizationsList)|0|1|The list of organizational entities (companies, institutions, etc.) responsible for the application and the content it creates.|Currently only one organization is allowed per application. This is subject to change in the future.
> bulk-extraction-settings|[BulkExtractionSettings](#BulkExtractionSettings)|0|1|Settings related to bulk-extraction of data by HealthVault applications.|Contains settings like - whether the application has been onboarded for bulk extraction and whether the application allows the user to opt-in for bulk extraction.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CultureSpecificAppLargeLogo'></a>
>
> ### CultureSpecificAppLargeLogo
>
> The CultureSpecific... classes are intended for use with data that can be localized for one or more languages and cultures.
>
> The CultureSpecific... classes should be upward compatibile with the base types.
>
> ### Extension
>
> Base type: [AppLargeLogo](xref:HV_File_application-configuration#AppLargeLogo)
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
> <a name='AppLargeLogoInfo'></a>
>
> ### AppLargeLogoInfo
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> logo|[CultureSpecificAppLargeLogo](#CultureSpecificAppLargeLogo)|1|unbounded||
> content-type|[string255](xref:HV_File_types#string255)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CultureSpecificAppSmallLogo'></a>
>
> ### CultureSpecificAppSmallLogo
>
> The CultureSpecific... classes are intended for use with data that can be localized for one or more languages and cultures.
>
> The CultureSpecific... classes should be upward compatibile with the base types.
>
> ### Extension
>
> Base type: [AppSmallLogo](xref:HV_File_application-configuration#AppSmallLogo)
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
> <a name='AppSmallLogoInfo'></a>
>
> ### AppSmallLogoInfo
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> logo|[CultureSpecificAppSmallLogo](#CultureSpecificAppSmallLogo)|1|unbounded||
> content-type|[string255](xref:HV_File_types#string255)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AppIdAndIncrAuth'></a>
>
> ### AppIdAndIncrAuth
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> id|[guid](xref:HV_File_types#guid)|1|1||
> incr-online-auth-xml|[AuthXml](xref:HV_File_auth#AuthXml)|0|1||
> is-incr-online-auth-replace|boolean|0|1||
> incr-offline-auth-xml|[AuthXml](xref:HV_File_auth#AuthXml)|0|1||
> is-incr-offline-auth-replace|boolean|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AppPersistentTokens'></a>
>
> ### AppPersistentTokens
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> enabled|boolean|1|1||
> token-ttl-seconds|positiveInteger|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PublicKeys'></a>
>
> ### PublicKeys
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> public-key|[PublicKey](#PublicKey)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CultureSpecificStatement'></a>
>
> ### CultureSpecificStatement
>
> The CultureSpecific... classes are intended for use with data that can be localized for one or more languages and cultures.
>
> The CultureSpecific... classes should be upward compatibile with the base types.
>
> ### Extension
>
> Base type: [Statement](xref:HV_File_application-configuration#Statement)
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
> <a name='StatementInfo'></a>
>
> ### StatementInfo
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> statement|[CultureSpecificStatement](#CultureSpecificStatement)|1|unbounded||
> content-type|[string255](xref:HV_File_types#string255)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SodaAppConfig'></a>
>
> ### SodaAppConfig
>
> SodaAppConfig encapsulates the attributes required to create a Soda application.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> id|[guid](xref:HV_File_types#guid)|1|1|The id to assign the newly created application.|When installing a Soda application, the application creates its own app id to register with platform.
> parent-id|[guid](xref:HV_File_types#guid)|1|1|The id of the parent application from which to inherit properties.|Soda applications typically all share a common configuration. The Soda application's configuration is inherited from the parent.
> name|[string255](xref:HV_File_types#string255)|1|1|The name of this Soda instance.|Soda applications all share the parent's name and add a local instance name to distinguish themselves.
> public-keys|[PublicKeys](#PublicKeys)|1|1|The public keys for this Soda instance.|Soda applications typically configure their own keys when registering.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='MeaningfulUseSourcesList'></a>
>
> ### MeaningfulUseSourcesList
>
> A list of Meaningful Use data sources.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> source|[string300nw](xref:HV_File_types#string300nw)|1|unbounded|The name of the source that provides Meaningful Use data.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='OrganizationsList'></a>
>
> ### OrganizationsList
>
> A list of organizational entities (companies, institutions, etc.) responsible for the application and the content it creates.
>
> Currently only one organization is allowed per application. This is subject to change in the future.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> organization|[Organization](#Organization)|1|1|The organization associated with the application.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Organization'></a>
>
> ### Organization
>
> An organizational entity that manages an application and the content it creates.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|[CultureSpecificString255nw](xref:HV_File_types#CultureSpecificString255nw)|1|unbounded|The organization name.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='BulkExtractionSettings'></a>
>
> ### BulkExtractionSettings
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> is-onboarded|boolean|1|1|Stores the BDP onboarding status for the application.|If set to true, the application successfully onboarded to BDP. If set to false, the application didn't onboard to BDP. If no value, we don't have a status on the app's onboarding to BDP.
> is-permission-required|boolean|1|1|Does the application want the user permission for bulk extraction to be required or optional?|If set to true, the user has to opt-in for bulk extraction to use the app. If set to false, the user has the option to opt-in or not. If no value, then no explicit choice has been made yet (Application has not onboarded).
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AppLargeLogo'></a>
>
> ### AppLargeLogo
>
> ### Restriction
>
> Base type: base64Binary
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|3||
> maxLength|163840||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AppSmallLogo'></a>
>
> ### AppSmallLogo
>
> ### Restriction
>
> Base type: base64Binary
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|3||
> maxLength|40960||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PublicKey'></a>
>
> ### PublicKey
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> pattern|[a-fA-F0-9]{512,4096}||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Statement'></a>
>
> ### Statement
>
> ### Restriction
>
> Base type: base64Binary
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ApplicationState'></a>
>
> ### ApplicationState
>
> The state of an application.
>
> An application may be suspended if there is suspicion of fraud. In most cases the state will be Active.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Active|The application is active and can be used to perform health data related activities, such as get and put of things, request authorization etc.|
> enumeration|NeedsVerification||
> enumeration|Suspended|The application was used in a fraudulent manor and can no longer be used.|
> enumeration|Deleted|The application has been deleted and can no longer be used to access any records.|
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/application-configuration.xsd)
[!code-xml[XSD schema](../xsd/application-configuration.xsd)]
