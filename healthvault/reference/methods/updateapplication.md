---
uid: HV_File_updateapplication
title: UpdateApplication
---

# UpdateApplication

## Request Overview

Updates an application configuration.

## Request Details

<a name='info'></a>

### Root element: info

The element of the response that contains the method specific return value(s).

All response schemas contain the info element which contain the return value of the method. If the method does not define an info element, the method has no return value.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
id|[guid](xref:HV_File_types#guid)|1|1|The id of the application to update.|
name|[CultureSpecificString255](xref:HV_File_types#CultureSpecificString255)|0|unbounded|The application name.|
public-keys|[PublicKeys](xref:HV_File_application-configuration#PublicKeys)|0|1|The X509 certificate to be used in conjunction with the application id to uniquely identify the application to HealthVault.|This value should be the hexadecimal representation of the entire X509 certificate, excluding the private key. The easiest way to get this value is to take the binary value of a .cer file as a hexadecimal. It is extremely important that the private key that cooresponds to this public key should be secured both physically and electronically so that other applications cannot identify themselves the application being added.
person-online-base-auth|[AuthXml](xref:HV_File_auth#AuthXml)|0|1|The list of data types (with corresponding permissions) that the application can access to while the person is logged in and using the application.|This set of authorization rules must be a subset of the calling application's authorization rule set. If not, an INVALID_APPAUTH error will be returned.
person-offline-base-auth|[AuthXml](xref:HV_File_auth#AuthXml)|0|1|The list of data types (with corresponding permissions) that the application can access at any time.|This set of authorization rules must be a subset of the calling application's authorization rule set. If not, an INVALID_APPAUTH error will be returned.
methods|[stringnz](xref:HV_File_types#stringnz)|0|1|List of HealthVault methods that the application is allowed to call.|Version 1 of the AddApplication ignores this element and configures the application with x-BaseMethods and x-UserDataExtended method groups. Version 2 of the AddApplication ensures the methods specified are equal to or a subset of the child-method-mask-ceiling configured for the master application.
action-url|[stringnz](xref:HV_File_types#stringnz)|0|1|A single url used by HealthVault with different query string parameters to make specific requests to an online application.|Since an application must have both a privacy statement and a terms of use statement, the application configuration must have one of the following: 1. An action url. 2. Both the privacy statement and terms of use (see the "privacy-statement" and "terms-of-use" parameters). If the above condition is not met, an INVALID_XML error will be returned.
description|[CultureSpecificStringnz](xref:HV_File_types#CultureSpecificStringnz)|0|unbounded|A high level description about what the application does.|
auth-reason|[CultureSpecificStringnz](xref:HV_File_types#CultureSpecificStringnz)|0|unbounded|The reason why the application requires the requested permissions to the various data types.|
domain-name|[string255](xref:HV_File_types#string255)|0|1|The domain name from which emails sent on behalf of the application will originate from.|For example, if the domain name supplied was 'myapp.com', the application would call SendInsecureMessageFromApplication with a mailbox-name 'mailbox', and the recipient would receive an email from mailbox@myapp.com. Currently not supported. The list of methods that the application is given access to by default does not contain any of the methods for sending email.
large-logo|[AppLargeLogoInfo](xref:HV_File_application-configuration#AppLargeLogoInfo)|0|1|The application's logo as a base64 encoded string and its corresponding content type.|The large logo can be up to 120 pixels wide, 60 pixels high, and 160kb in size.
small-logo|[AppSmallLogoInfo](xref:HV_File_application-configuration#AppSmallLogoInfo)|0|1|The application's logo as a base64 encoded string and its corresponding content type.|The small logo can be up to 40kb in size.
persistent-tokens|[AppPersistentTokens](xref:HV_File_application-configuration#AppPersistentTokens)|0|1|Specifies whether the application requires using persistent tokens and the duration to persist the tokens for (in seconds)|A persistent token is an encrypted identifier for the user and application. It can be used to enable the "Keep me signed in on this computer" feature in HealthVault.
app-type|[stringnz](xref:HV_File_types#stringnz)|0|1|The category used to classify the application.|Currently not used by HealthVault.
privacy-statement|[StatementInfo](xref:HV_File_application-configuration#StatementInfo)|0|1|The application's privacy statement as a base64 encoded string and its corresponding content type.|
terms-of-use|[StatementInfo](xref:HV_File_application-configuration#StatementInfo)|0|1|The application's terms of use statement as a base64 encoded string and its corresponding content type.|
app-auth-required|boolean|0|1|This value will be ignored by Platform. Use "restrict-app-users" instead.|
restrict-app-users|boolean|0|1|Specifies whether the application authorization is restricted to users added through AuthorizeApplication method.|
is-published|boolean|0|1|Currently not supported.|Currently not supported.
dtc-success-message|[StatementInfo](xref:HV_File_application-configuration#StatementInfo)|0|1|The message to display to the use when direct to clinial authorization completes successfully.|Represented as a base64 encoded string and its corresponding content type.
app-attributes|[ApplicationAttributes](xref:HV_File_application-configuration#ApplicationAttributes)|0|1|The application attributes.|
valid-ip-prefixes|[string255nw](xref:HV_File_types#string255nw)|0|1|A comma separated list of IP address masks from which the application can call HealthVault.|HealthVault provides some added security to applications by supporting calls that come from valid IP addresses of the application. IP addresses can be specified using a specific IP address and 32 bit mask like 192.168.0.1/32 or by specifying a subnet and mask like 192.168.0.0/16. You can have more than one IP address or mask by comma separating them.
vocabulary-authorizations|[VocabularyAuthorizations](xref:HV_File_vocab#VocabularyAuthorizations)|0|1|A set of restricted vocabularies that the application is allowed to call.|HealthVault provides access to a base set of publically available vocabularies. Certain vocabularies are however restricted to a target application audience. These vocabularies are only available to the application if they are explicitly set via this field. AddApplication ensures the vocabularies specified are equal to or a subset of the child-authorized-vocabularies-ceiling configured for the master application.
supported-record-locations|[SupportedLocationList](xref:HV_File_location#SupportedLocationList)|0|1|The record locations that this application supports.|The record locations supplied here must be a subset of the record locations supported by the master application.
supported-instances|[SupportedInstanceList](xref:HV_File_location#SupportedInstanceList)|0|1|The HealthVault instances that this application supports.|
meaningful-use-sources|[MeaningfulUseSourcesList](xref:HV_File_application-configuration#MeaningfulUseSourcesList)|0|1|The list of associated Meaningful Use data sources for this application.|Sources specified must be equal to or a subset of the meaningful-use-sources-ceiling configured for the master application.
organizations|[OrganizationsList](xref:HV_File_application-configuration#OrganizationsList)|0|1|The list of organizational entities (companies, institutions, etc.) responsible for the application and the content it creates.|Currently only one organization is allowed per application. This is subject to change in the future.
bulk-extraction-settings|[BulkExtractionSettings](xref:HV_File_application-configuration#BulkExtractionSettings)|0|1|Settings related to bulk-extraction of data by HealthVault applications.|Contains settings like - whether the application has been onboarded for bulk extraction and whether the application allows the user to opt-in for bulk extraction.

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-updateapplication.xsd)
[!code-xml[XSD schema](../xsd/method-updateapplication.xsd)]

