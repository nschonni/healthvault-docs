---
uid: HV_File_getthings3
title: GetThings3
---

# GetThings3

## Request Overview

Searches for things based on supplied criteria.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
group|[ThingRequestGroup2](#ThingRequestGroup2)|1|unbounded|Specifies the thing/things to be retrieved.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='BlobFilterSpec'></a>
>
> ### BlobFilterSpec
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> blob-name|[stringnwz64](xref:HV_File_types#stringnwz64)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='BlobFilters'></a>
>
> ### BlobFilters
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> blob-filter|[BlobFilterSpec](#BlobFilterSpec)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='BlobPayloadRequest'></a>
>
> ### BlobPayloadRequest
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> blob-filters|[BlobFilters](#BlobFilters)|0|1||
> blob-format|[blob-format](#blob-format)|1|1||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='blob-format'></a>
> >
> > ### blob-format
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > blob-format-spec|[BlobFormatSpec](#BlobFormatSpec)|1|1||
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ThingFormatSpec2'></a>
>
> ### ThingFormatSpec2
>
> Specifies how the results are returned.
>
> The section element specifies which sections are returned. The xml element specifies how the actual thing data is formatted.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> section|[ThingSectionSpec2](#ThingSectionSpec2)|0|unbounded|Specifies the sections to be retrieved.|
> xml|string|0|unbounded|Name of the transforms to apply to the results.|This could come in the form of the name of a server supported transform; an XSL fragment; or a URL to an external XSL. If present and blank, the raw data-xml will be returned. If not present, the data-xml will not be returned.
> type-version-format|[guid](xref:HV_File_types#guid)|0|unbounded|The version ID for the type format in which the results should be returned.|When a type gets versioned, HealthVault will retrieve instances of multiple versions even when only one type is specified in the request filter. By default HealthVault will map the XML of the instance to the version supported by the application based on the base authorization XML specified in the configuration of the application in HealthVault. However, if multiple versions are supported by the application, it can use this parameter to state the version format to use when writing out the instance XML. For example, when querying for medications, HealthVault will retrieve medications of both version one and two schemas. If an application only supports version one of the medication schema, then HealthVault will automatically map version two instances down to the version one schema. However, if the application supports both version one and two by declaring both type IDs in the applications configuration, then version one instances will be returned using the version one schema, and version two instances will be returned using the version two schema. If this application wants to retrieve all instances using a common schema (say version two), then it would specify the version two type ID in this parameter and all instances will be mapped to version two of the medication schema before being returned.
> blob-payload-request|[BlobPayloadRequest](#BlobPayloadRequest)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ThingIntentsSpec'></a>
>
> ### ThingIntentsSpec
>
> Specifies the usage intentions for items retrieved in the group.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> intent|[intent](#intent)|0|unbounded|Specifies a usage intention for items retrieved in the group.|The value may be one of "view", "download", or "transmit".
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='intent'></a>
> >
> > ### intent
> >
> > ### Restriction
> >
> > Base type: string
> >
> > #### Restriction facets
> >
> > Restriction type|Value|Summary|Remarks
> > ---|---|---|---
> > enumeration|view|Specifies that the retrieved items are intended for user to view.|
> > enumeration|download|Specifies that the retrieved items are intended for user to download.|
> > enumeration|transmit|Specifies that the retrieved items are intended for transmission via the Direct protocol.|
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ThingOrderBySpecs'></a>
>
> ### ThingOrderBySpecs
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> order-by-property|[ThingOrderBySpec](#ThingOrderBySpec)|1|1|Schema for specifying order by clause on things.|Currently only one order by clause is supported per request. Multiple clauses may be supported in the future. If an order by clause is present, then only things of the type specified in the order by clause will be returned, even if additional type IDs are listed in the filter spec.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ThingOrderBySpec'></a>
>
> ### ThingOrderBySpec
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> type-id|[guid](xref:HV_File_types#guid)|required|||
> property-name|string|required|||
> direction|[OrderByDirection](#OrderByDirection)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ThingRequestGroup2'></a>
>
> ### ThingRequestGroup2
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> name|string|optional|||
> max|nonNegativeInteger|optional|||
> max-full|nonNegativeInteger|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> filter|[ThingFilterSpec](xref:HV_File_getthings#ThingFilterSpec)|0|unbounded|Specifies a filter for things to be retrieved based on the properties of the thing.|
> format|[ThingFormatSpec2](#ThingFormatSpec2)|1|1|Specifies a view for the results.|
> current-version-only|boolean|0|1|Specifies whether or not we should return only the current version of things that satisfy the filter.|This is true by default. If set to false all the versions of the thing are returned.
> intents|[ThingIntentsSpec](#ThingIntentsSpec)|0|1|Specifies the usage intentions for items retrieved in the group.|Specified intentions may be used by HealthVault for auditing purposes. If the intents element is empty, it explicitly specifies no intentions. If the intents element is not present, the default "view" intention is assumed if the method was invoked online.
> order-by|[ThingOrderBySpecs](#ThingOrderBySpecs)|0|1|Specifies the order in which to return the things being retrieved.|
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
> id|[guid](xref:HV_File_types#guid)|0|unbounded|Specifies thing ids that need to be returned.|
> key|[ThingKey](xref:HV_File_thing#ThingKey)|0|unbounded|Specifies keys of things that need to be returned.|
> client-thing-id|[string255](xref:HV_File_types#string255)|0|unbounded|Specifies client assigned ids of things that need to be returned.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ThingSectionSpec2'></a>
>
> ### ThingSectionSpec2
>
> Allows sections of the thing to be specified.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|core|Specifies the core parts of the thing.|The core includes thing-id, version-stamp, type-id, eff-date, thing-state, flags.
> enumeration|audits|Specifies the auditing section of the thing.|The audit section includes the updated element.
> enumeration|effectivepermissions|Specifies the effective permissions the caller has on the thing.|The effective permissions section includes the eff-permissions xml.
> enumeration|digitalsignatures|Specifies the digital signautures on the thing.|The digital signatures section includes the signature xml, which contains any digital signatures on the returned thing. That digital signature includes a key and a cryptographic hash which can be used to verify that the contents of the thing have not changed since the time it was signed.
> enumeration|tags|Specifies the tags on the thing.|The tags section includes the tags xml which is a string element that contains comma separated list of tags.
> enumeration|blobpayload|Specifies the blob payload section of the thing.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='BlobFormatSpec'></a>
>
> ### BlobFormatSpec
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|information||
> enumeration|inline||
> enumeration|streamed||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='OrderByDirection'></a>
>
> ### OrderByDirection
>
> Specifies that the values in the specified property should be sorted in ascending or descending order.
>
> Asc = Ascending order Desc = Descending order
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Asc||
> enumeration|Desc||
>
>

## Response Overview

Specifies the schema for the GetThings method response.

## Response Details

<a name='info'></a>

### Root element: info

Contains the response of the GetThings method request.

### Choice

Min occurs: 1

Max occurs: unbounded
### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
group|[ThingResponseGroup2](#ThingResponseGroup2)|1|1|Contains the response to the GetThings method request.|The response are returned as groups of responses that coincide with the filter groups in the request. Each group is identified with a group name that was specified in the request.

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ThingResponseGroup2'></a>
>
> ### ThingResponseGroup2
>
> Each response group corresponds to a filter request group sent with the GetThings request.
>
> Each group is uniquely identified by the group name and contains the represent an group of clauses that are used as a filter to a GetThings method request. Each group is independent of the other groups that might be sent with the same request.
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> name|string|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> thing|[Thing2](xref:HV_File_thing#Thing2)|0|unbounded|The things that satisfied the criteria in the filter group of the request.|The things returned here might be a partial list. The server will return a list of things up to a maximum based on server configuration. The unprocessed-thing-key-info element will contain additional things in partial form. To retrieve the things in full form, the thing ids can be specified in the filter group of additional GetThing methods requests.
> unprocessed-thing-key-info|[UnprocessedThingKeyInfo](xref:HV_File_thing#UnprocessedThingKeyInfo)|0|unbounded|Additional things that satisfied the criteria in the filter group of the request but are returned in partial form, including the thing id and thing type.|To retrieve the things in full form, the thing ids can be specified in the filter group of additional GetThing methods requests.
> filtered|boolean|0|1|Indicates whether some of the things were filtered.|Thing may be filtered because of security settings on the record.
> order-by-culture|string|0|1|Indicates the culture used to sort the text fields.|The culture may not be the same culture as requested in request header. It is the closest match HealthVault supports.
>
>

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-getthings3.xsd)
[!code-xml[XSD schema](../xsd/method-getthings3.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getthings3.xsd)
[!code-xml[XSD schema](../xsd/response-getthings3.xsd)]
