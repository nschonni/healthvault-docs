---
uid: HV_File_thing
title: thing
---

# thing

## Overview

Property|Value
---|---
id|File_thing
name|thing
immutable|
singleton|
allow-readonly|
effective date XPath|

## Details

<a name=''></a>

### Root element:
 Type:

> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='ThingKey'></a>
> 
> ### ThingKey
> 
> ### Extension
> 
> Base type: [guid](xref:HV_File_types#guid)
> 
> ### Attributes
> 
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> version-stamp|[guid](xref:HV_File_types#guid)|required|||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='ThingType'></a>
> 
> ### ThingType
> 
> ### Extension
> 
> Base type: [guid](xref:HV_File_types#guid)
> 
> ### Attributes
> 
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> name|string|optional|||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='GuidAndName'></a>
> 
> ### GuidAndName
> 
> ### Extension
> 
> Base type: [guid](xref:HV_File_types#guid)
> 
> ### Attributes
> 
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> name|string|required|||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='Audit'></a>
> 
> ### Audit
> 
> Represents an audit trail of creations or updates or deletes to information in the Health service.
> 
> The audit records when the operation happened, by which application, and by which person.
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='Audit2'></a>
> 
> ### Audit2
> 
> Represents an audit trail of creations or updates or deletes to information in the Health service.
> 
> The audit records when the operation happened, by which application, and by which person.
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> master-app-id|[guid](xref:HV_File_types#guid)|0|1|The unique application identifier for the code base of the application that created the audit.|When an application performs a write action on an item the audit is stamped with the applications unique identifier. In the case of master/child applications, or SODA applications, the audit app-id is the identifier of the child or installation of the application. The master-app-id is the application identifier for the root of the configuration for that application. In the case of master/child applications, this is the application identifier of the master. For SODA applications, this is the application identifier for the root configuration of the application.
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='DataXml'></a>
> 
> ### DataXml
> 
> ### Attributes
> 
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> transform|string|optional|||
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Any||1|1||
> common|[common](#common)|0|1||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='DataOther'></a>
> 
> ### DataOther
> 
> ### Extension
> 
> Base type: string
> 
> ### Attributes
> 
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> content-type|[stringz1024](xref:HV_File_types#stringz1024)|optional|||
> content-encoding|[stringz1024](xref:HV_File_types#stringz1024)|optional|||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='EffectivePermissions'></a>
> 
> ### EffectivePermissions
> 
> ### Attributes
> 
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> immutable|boolean|optional|||
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> permission|[Permission](xref:HV_File_types#Permission)|1|5||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='extension'></a>
> 
> ### extension
> 
> ### Attributes
> 
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> source|string|required|||
> ver|string|optional|||
> logo|string|optional|||
> xsl|string|optional|||
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Any||0|unbounded||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='common'></a>
> 
> ### common
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> source|string|0|1||
> note|string|0|1||
> tags|[stringz512](xref:HV_File_types#stringz512)|0|1||
> extension|[extension](#extension)|0|unbounded||
> related-thing|[RelatedThing](#RelatedThing)|0|unbounded|Defines a loose relationship between instances of things within a record.|This relationship is completely application defined and maintained. HealthVault does nothing to ensure that related things exist or have a relationship back to this thing. An example usage for related-things are to use an annotation thing instance to make medical annotations for another thing type or to relate a file instance (like an MRI) to problem instance.
> client-thing-id|[string255](xref:HV_File_types#string255)|0|1|A client assigned friendly id for the thing.|This id is completely application defined and maintained. HealthVault does nothing to ensure that the ids assigned are unique.
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='RelatedThing'></a>
> 
> ### RelatedThing
> 
> Defines a loose relationship between instances of things within a record.
> 
> This relationship is completely application defined and maintained. HealthVault does nothing to ensure that related things exist or have a relationship back to this thing. An example usage for related-things are to use an annotation thing instance to make medical annotations for another thing type or to relate a file instance (like an MRI) to problem instance.
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> relationship-type|string|0|1|A string representing the type of relationship between the two thing instances.|A relationship between thing instances may be made for many reasons. For example, an annotation instance may be a medical annotation for a problem instance in which case the "relationship-type" may be set to "annotation".
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
> thing-id|[guid](xref:HV_File_types#guid)|1|1|The unique identifier for the thing instances that this thing has a relationship to.|The thing ID must be an identifier for a thing within the same health record. It may point to a deleted thing.
> version-stamp|[guid](xref:HV_File_types#guid)|0|1|The unique version stamp of the thing instance that this thing is related to.|The version stamp allows the relationship to occur to a specific instance of a thing.
> client-thing-id|[string255](xref:HV_File_types#string255)|0|1|A string representing client id of the thing instance that this thing is related to.|
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='Thing'></a>
> 
> ### Thing
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> thing-id|[ThingKey](#ThingKey)|0|1||
> type-id|[ThingType](#ThingType)|0|1||
> thing-state|[ThingState](#ThingState)|0|1||
> flags|unsignedInt|0|1|Thing flags.|Currently supported flags: 0x1 (Personal) - the thing is accessible only by custodians. 0x2 (Downversioned) - the thing instance was converted from a newer format to an older format while being written in the response. Applications should not attempt to update an instance that has been down-versioned. 0x4 (Upversioned) - the thing instance was converted from an older format to a newer format while being written in the response. Applications should only attempt to update the instance if given explicit approval by the user as this will change the stored instance from the older format to the new format. In some cases this may cause data loss.
> eff-date|dateTime|0|1||
> created|[Audit](#Audit)|0|1|Represents an audit information about the creation of this health record item.|The audit records when the operation happened, by which application, and by which person. The creation audit information node is returned only by versions of the GetThings method higher than 2.
> updated|[Audit](#Audit)|0|1|Represents an audit information about the update to this health record item.|The audit records when the operation happened, by which application, and by which person.
> data-xml|[DataXml](#DataXml)|0|unbounded||
> data-other|[DataOther](#DataOther)|0|1||
> eff-permissions|[EffectivePermissions](#EffectivePermissions)|0|1||
> tags|[string512](xref:HV_File_types#string512)|0|1|The comma-separated list of user tag strings.|
> element||0|1||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='BlobInfo'></a>
> 
> ### BlobInfo
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|[stringz255](xref:HV_File_types#stringz255)|1|1||
> content-type|[stringz1024](xref:HV_File_types#stringz1024)|1|1||
> hash-info|[BlobHashInfo](#BlobHashInfo)|0|1||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='BlobPayloadItem'></a>
> 
> ### BlobPayloadItem
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> blob-info|[BlobInfo](#BlobInfo)|1|1||
> content-length|long|0|1||
> legacy-content-encoding|[stringz1024](xref:HV_File_types#stringz1024)|0|1|Specifies the content encoding of the BLOB when it was originally created.|This element indicates the content encoding of the BLOB as specified when the BLOB was created. This element is provided for backward compatibility. For newly created BLOBs, the content encoding cannot be specified.
> current-content-encoding|[stringz1024](xref:HV_File_types#stringz1024)|0|1|Specifies the current content encoding of the BLOB.|The current content encoding indicates the current encoding of the raw bytes of the BLOB. It's useful for backward compatability purposes to indicate if the raw bytes are encoded or not. Newly created BLOBs will not have any encoding on the raw bytes. If the raw bytes are encoded, this element specifies the same encoding string as specified by the legacy-content-encoding element. If the bytes are not encoded, this element is not present.
> 
> ### Choice
> 
> Min occurs: 0
> 
> Max occurs: 1
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> base64data|[stringnz](xref:HV_File_types#stringnz)|1|1||
> blob-ref-url|anyURI|1|1||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='BlobPayload'></a>
> 
> ### BlobPayload
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> blob|[BlobPayloadItem](#BlobPayloadItem)|1|unbounded||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='BlobHashInfo'></a>
> 
> ### BlobHashInfo
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> algorithm|[stringz255](xref:HV_File_types#stringz255)|1|1||
> params|[BlobHashAlgorithmParameters](xref:HV_File_types#BlobHashAlgorithmParameters)|0|1||
> hash|[stringnz512](xref:HV_File_types#stringnz512)|1|1||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='BlobSignatureInfo'></a>
> 
> ### BlobSignatureInfo
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> item|[item](#item)|1|unbounded||
> 
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='item'></a>
> >
> > ### item
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > blob-info|[BlobInfo](#BlobInfo)|1|1||
> >
> >
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='SignatureInfo'></a>
> 
> ### SignatureInfo
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> sig-data|[SignatureData](#SignatureData)|1|1||
> element||0|1||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='SignatureData'></a>
> 
> ### SignatureData
> 
> ### Element sequence
> 
> |        Name         |                                Type                                 | Min occurs | Max occurs |                   Summary                   |                                                                 Remarks                                                                 |
> |---------------------|---------------------------------------------------------------------|------------|------------|---------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|
> | hv-signature-method | [HealthVaultThingSignatureMethod](#HealthVaultThingSignatureMethod) |     1      |     1      |                                             |                                                                                                                                         |
> | blob-signature-info |               [BlobSignatureInfo](#BlobSignatureInfo)               |     0      |     1      |                                             |                                                                                                                                         |
> |    algorithm-tag    |             [stringnznw](xref:HV_File_types#stringnznw)             |     1      |     1      | A string identifying the signing algorithm. | This value must be: "rsa-sha1". This is a synonym for the signature method defined by: "<https://www.w3.org/2000/09/xmldsig#rsa-sha1>". |
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='Thing2'></a>
> 
> ### Thing2
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> thing-id|[ThingKey](#ThingKey)|0|1||
> type-id|[ThingType](#ThingType)|0|1||
> thing-state|[ThingState](#ThingState)|0|1||
> flags|unsignedInt|0|1|Thing flags.|Currently supported flags: 0x1 (Personal) - the thing is accessible only by custodians. 0x2 (Downversioned) - the thing instance was converted from a newer format to an older format while being written in the response. Applications should not attempt to update an instance that has been down-versioned. 0x4 (Upversioned) - the thing instance was converted from an older format to a newer format while being written in the response. Applications should only attempt to update the instance if given explicit approval by the user as this will change the stored instance from the older format to the new format. In some cases this may cause data loss.
> eff-date|dateTime|0|1||
> created|[Audit2](#Audit2)|0|1|Represents an audit information about the creation of this health record item.|The audit records when the operation happened, by which application, and by which person. The creation audit information node is returned only by versions of the GetThings method higher than 2.
> updated|[Audit2](#Audit2)|0|1|Represents an audit information about the update to this health record item.|The audit records when the operation happened, by which application, and by which person.
> data-xml|[DataXml](#DataXml)|0|unbounded||
> blob-payload|[BlobPayload](#BlobPayload)|0|1||
> eff-permissions|[EffectivePermissions](#EffectivePermissions)|0|1||
> tags|[stringz512](xref:HV_File_types#stringz512)|0|1|The comma-separated list of user tag strings.|If an empty element is passed, all tags are removed.
> signature-info|[SignatureInfo](#SignatureInfo)|0|1||
> updated-end-date|dateTime|0|1|Updated End Date of the Thing instance.|Updated end date is used to end the relevancy of a Thing. For example, end date on a condition will mean that the condition is no longer relevant for the user after that date. Some types we can automatically populate updated end date from type specific data in data-xml. For such types, if updated end date is not specified on thing xml, it will be derived from data-xml element but if present its value will be always used. Any date greater than '9999-12-31T00:00:00Z' will clear the updated-end-date value.
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='UnprocessedThingKeyInfo'></a>
> 
> ### UnprocessedThingKeyInfo
> 
> Specifies the things returned with partial information.
> 
> Things will be returned with partial information if the maximum limit for full things have been reached. To retrieve the things in full form, the thing ids can be specified in the filter group of additional GetThing methods requests.
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> thing-id|[ThingKey](#ThingKey)|1|1|The unique identifier for the thing.|
> type-id|[ThingType](#ThingType)|1|1|The type of the thing.|The list of things types can be queried through the Dictionary.
> eff-date|dateTime|1|1|The effective date for the thing.|The relevant time for a thing. If this was a weight measurement, the effective time refers to the date the weight was taken, not when it was stored.
> updated-end-date|dateTime|0|1|Updated End Date of the Thing instance.|Updated end date is used to end the relevancy of a Thing. For example, end date on a condition will mean that the condition is no longer relevant for the user after that date. Some types we can automatically populate updated end date from type specific data in data-xml. For such types, if updated end date is not specified on thing xml, it will be derived from data-xml element but if present its value will be always used.
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='AuditAction'></a>
> 
> ### AuditAction
> 
> Representation of the operation performed.
> 
> ### Restriction
> 
> Base type: string
> 
> #### Restriction facets
> 
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Created|A creation took place.|
> enumeration|Updated|An update took place.|
> enumeration|Deleted|A delete took place.|
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='AccessAvenue'></a>
> 
> ### AccessAvenue
> 
> Indicates the avenue used to create, delete or change the thing.
> 
> ### Restriction
> 
> Base type: string
> 
> #### Restriction facets
> 
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Online|Indicates that online access avenue was used to perform the operation on the thing.|
> enumeration|Offline|Indicates that offline access avenue was used to perform the operation on the thing.|
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='ThingState'></a>
> 
> ### ThingState
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
> enumeration|Deleted||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='HealthVaultThingSignatureMethod'></a>
> 
> ### HealthVaultThingSignatureMethod
> 
> ### Restriction
> 
> Base type: string
> 
> #### Restriction facets
> 
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|HVSignatureMethod1||
> enumeration|HVSignatureMethod2||

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/thing.xsd)
[!code-xml[XSD schema](../xsd/thing.xsd)]
