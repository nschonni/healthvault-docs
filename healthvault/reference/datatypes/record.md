---
uid: HV_File_record
title: record
---

# record

## Overview

Property|Value
---|---
id|File_record
name|record
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
> <a name='ActiveAppAuthorization'></a>
>
> ### ActiveAppAuthorization
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> record-id|[guid](xref:HV_File_types#guid)|1|1||
> application-id|[guid](xref:HV_File_types#guid)|1|1||
> name|string|1|1||
> date-auth-expires|dateTime|0|1||
> person-online-auth-xml|[AuthXml](xref:HV_File_auth#AuthXml)|0|1||
> person-offline-auth-xml|[AuthXml](xref:HV_File_auth#AuthXml)|0|1||
> date-auth-created|dateTime|0|1||
> date-auth-updated|dateTime|0|1||
> record-display-name|[string255](xref:HV_File_types#string255)|1|1||
> auto-reconcile-documents|boolean|0|1|The user's preference for auto-reconciling document types like CCR and CCD for the specified record and application.|
> location|[location](xref:HV_File_location)|0|1|The location of the person the record is about.|
> pseudo-record-id|[guid](xref:HV_File_types#guid)|0|1|The pseudo record id for the authorized app.|
> pseudo-person-id|[guid](xref:HV_File_types#guid)|0|1|The pseudo person id for the authorized app.|
> can-bulk-extract|boolean|0|1|Has the record consented to the current app for bulk data extraction.|If not returned, the value is unspecified for the record.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActivePersonAuthorization'></a>
>
> ### ActivePersonAuthorization
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> record-id|[guid](xref:HV_File_types#guid)|1|1||
> person-id|[guid](xref:HV_File_types#guid)|1|1||
> name|string|1|1||
> record-custodian|boolean|1|1||
> is-group|boolean|1|1||
> contact-email|[EmailAddress](xref:HV_File_types#EmailAddress)|1|1||
> contact-email-validated|boolean|0|1||
> record-display-name|[string255](xref:HV_File_types#string255)|0|1||
> date-auth-expires|dateTime|0|1||
> auth-xml|[AuthXml](xref:HV_File_auth#AuthXml)|0|1||
> rel-type|[int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)|0|1||
> date-auth-created|dateTime|0|1||
> date-auth-updated|dateTime|0|1||
> can-access-audit|boolean|0|1||
> can-bulk-extract|boolean|0|1|Has the record consented to the current app for bulk data extraction.|If not returned, the value is unspecified for the record.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActivePersonAuthorizationNoIds'></a>
>
> ### ActivePersonAuthorizationNoIds
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|string|1|1||
> record-custodian|boolean|1|1||
> is-group|boolean|1|1||
> contact-email|[EmailAddress](xref:HV_File_types#EmailAddress)|1|1||
> contact-email-validated|boolean|0|1||
> record-display-name|[string255](xref:HV_File_types#string255)|0|1||
> date-auth-expires|dateTime|0|1||
> auth-xml|[AuthXml](xref:HV_File_auth#AuthXml)|0|1||
> rel-type|[int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)|0|1||
> date-auth-created|dateTime|0|1||
> date-auth-updated|dateTime|0|1||
> can-access-audit|boolean|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='NonActiveAuthorization'></a>
>
> ### NonActiveAuthorization
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> record-id|[guid](xref:HV_File_types#guid)|1|1||
> email-address|[EmailAddress](xref:HV_File_types#EmailAddress)|1|1||
> record-custodian|boolean|1|1||
> authorized-record-state|[AuthorizedRecordState](#AuthorizedRecordState)|1|1||
> record-display-name|[string255](xref:HV_File_types#string255)|1|1||
> date-auth-expires|dateTime|1|1||
> auth-xml|[AuthXml](xref:HV_File_auth#AuthXml)|1|1||
> rel-type|[int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)|1|1||
> date-auth-created|dateTime|1|1||
> date-auth-updated|dateTime|1|1||
> grantor-name|[string255](xref:HV_File_types#string255)|1|1||
> grantor-person-id|[guid](xref:HV_File_types#guid)|1|1||
> grantee-name|[string255](xref:HV_File_types#string255)|1|1||
> record-authorization-token|[base64](xref:HV_File_types#base64)|0|1||
> email-text|[string1024](xref:HV_File_types#string1024)|0|1||
> can-access-audit|boolean|0|1||
> requesting-application-id|[guid](xref:HV_File_types#guid)|0|1|The application initiating the sharing invitation.|
> pin-required|boolean|1|1|A pin is required for added security when sharing a record.|If this element is present, users attempting to accept the sharing invitation will be required to enter a pin. The user entered pin must match the stored pin to successfully accept the invitation.
> expires-date|dateTime|1|1|The date this invitation expires.|If this element is present, it represents the date after which the invitation will no longer be valid. If this element is not present, a default expiration will be assigned.
> can-bulk-extract|boolean|0|1|Has the record consented to the current app for bulk data extraction.|If not returned, the value is unspecified for the record.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='NonActiveAuthorizationNoIds'></a>
>
> ### NonActiveAuthorizationNoIds
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> email-address|[EmailAddress](xref:HV_File_types#EmailAddress)|1|1||
> record-custodian|boolean|1|1||
> authorized-record-state|[AuthorizedRecordState](#AuthorizedRecordState)|1|1||
> record-display-name|[string255](xref:HV_File_types#string255)|1|1||
> date-auth-expires|dateTime|1|1||
> auth-xml|[AuthXml](xref:HV_File_auth#AuthXml)|1|1||
> rel-type|[int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)|1|1||
> date-auth-created|dateTime|1|1||
> date-auth-updated|dateTime|1|1||
> grantor-name|[string255](xref:HV_File_types#string255)|1|1||
> grantee-name|[string255](xref:HV_File_types#string255)|1|1||
> record-authorization-token|[base64](xref:HV_File_types#base64)|0|1||
> email-text|[string1024](xref:HV_File_types#string1024)|0|1||
> can-access-audit|boolean|0|1||
> requesting-application-id|[guid](xref:HV_File_types#guid)|0|1|The unique identifier for the application asking to share the record.|If this element is present, the requesting application id will be stored with the sharing invite. The application id can be used to present a customized experiences such as customized sharing page and branded sharing email.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AuthorizedRecordState'></a>
>
> ### AuthorizedRecordState
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Active||
> enumeration|ActivationPending||
> enumeration|ActivationRejected||
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/record.xsd)
[!code-xml[XSD schema](../xsd/record.xsd)]
