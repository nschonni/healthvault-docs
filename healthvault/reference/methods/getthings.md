---
uid: HV_File_getthings
title: GetThings
---

# GetThings

## Request Overview

Schema for the GetThings method request.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
group|[ThingRequestGroup](#ThingRequestGroup)|1|unbounded|Specifies the thing/things to be retrieved.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ThingFilterSpec'></a>
>
> ### ThingFilterSpec
>
> Schema for specifying filters on things.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> type-id|[guid](xref:HV_File_types#guid)|0|unbounded|Allows filtering based on a thing type id.|The list of thing types can be queried through the Dictionary.
> thing-state|[ThingState](xref:HV_File_thing#ThingState)|0|2|Allows filtering based on a state of a thing.|Current values for the state are "Active" and "Deleted".
> eff-date-min|dateTime|0|1|The minimum date the thing pertains to.|If this was a weight measurement, the effective time refers to the date the weight was taken, not when it was stored. When used with eff-date-max, can specify a range for effective dates for searching things. If eff-date-max is not specified, things that are created after eff-date-min are returned. All values being compared are compared as greater than or equal to.
> eff-date-max|dateTime|0|1|The maximum date the thing pertains to.|If this was a weight measurement, the effective time refers to the date the weight was taken, not when it was stored. When used with eff-date-min, can specify a range for effective dates for searching things. If eff-date-min is not specified, things that are created earlier than eff-date-max are returned. All values being compared are compared as less than or equal to.
> created-app-id|[guid](xref:HV_File_types#guid)|0|1|The application that created this thing.|Each application is identified by a unique application id.
> created-person-id|[guid](xref:HV_File_types#guid)|0|1|The person that created this thing.|Each person is identified by a unique person id.
> updated-app-id|[guid](xref:HV_File_types#guid)|0|1|The application that last updated this thing.|Each application is identified by a unique application id.
> updated-person-id|[guid](xref:HV_File_types#guid)|0|1|The person that last updated this thing.|Each person is identified by a unique person id.
> created-date-min|dateTime|0|1|The minimum date the thing was created on.|When used with created-date-max, can specify a creation date range for searching things. If create-date-max is not specified, things that are created after created-date-min are returned. All values being compared are compared as greater than or equal to.
> created-date-max|dateTime|0|1|The maximum date the thing was created on.|When used with created-date-min, can specify a creation date range for searching things. If create-date-min is not specified, things that are created earlier than created-date-max are returned. All values being compared are compared as less than or equal to.
> updated-date-min|dateTime|0|1|The minimum date the thing was last updated on.|When used with updated-date-max, can specify a updated date range for searching things. If updated-date-max is not specified, things that are created after updated-date-min are returned. All values being compared are compared as greater than or equal to.
> updated-date-max|dateTime|0|1|The maximum date the thing was last updated on.|When used with updated-date-min, can specify a updated date range for searching things. If updated-date-min is not specified, things that are created earlier than updated-date-max are returned. All values being compared are compared as less than or equal to.
> xpath|string|0|1|An xpath that can be specified for filtering on the existence of specific data.|XPath with wildcards such as //, *, descendant::, descendant-or-self:: are not allowed. The xpath is only used as a matching criteria. You can't use the xpath to count the number of results or add up values. The error INVALID_FILTER will be returned if wildcards are detected.
> updated-end-date-max|dateTime|0|1|The maximum updated-end-date of the Thing.|
> updated-end-date-min|dateTime|0|1|The minimum updated-end-date of the Thing.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ThingFormatSpec'></a>
>
> ### ThingFormatSpec
>
> Specifies how the results are returned.
>
> The section element specifies which sections are returned. The xml element specifies how the actual thing data is formatted.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> section|[ThingSectionSpec](#ThingSectionSpec)|0|unbounded|Specifies the sections to be retrieved.|
> xml|string|0|unbounded|Name of the transforms to apply to the results.|This could come in the form of the name of a server supported transform; an XSL fragment; or a URL to an external XSL. If present and blank, the raw data-xml will be returned. If not present, the data-xml will not be returned.
> type-version-format|[guid](xref:HV_File_types#guid)|0|unbounded|The version ID for the type format in which the results should be returned.|When a type gets versioned, HealthVault will retrieve instances of multiple versions even when only one type is specified in the request filter. By default HealthVault will map the XML of the instance to the version supported by the application based on the base authorization XML specified in the configuration of the application in HealthVault. However, if multiple versions are supported by the application, it can use this parameter to state the version format to use when writing out the instance XML. For example, when querying for medications, HealthVault will retrieve medications of both version one and two schemas. If an application only supports version one of the medication schema, then HealthVault will automatically map version two instances down to the version one schema. However, if the application supports both version one and two by declaring both type IDs in the applications configuration, then version one instances will be returned using the version one schema, and version two instances will be returned using the version two schema. If this application wants to retrieve all instances using a common schema (say version two), then is would specify the version two type ID in this parameter and all instances will be mapped to version two of the medication schema before being returned.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ThingRequestGroup'></a>
>
> ### ThingRequestGroup
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
> filter|[ThingFilterSpec](#ThingFilterSpec)|0|unbounded|Specifies a filter for things to be retrieved based on the properties of the thing.|
> format|[ThingFormatSpec](#ThingFormatSpec)|1|1|Specifies a view for the results.|
> current-version-only|boolean|0|1|Specifies whether or not we should return only the current version of things that satisfy the filter.|This is true by default. If set to false all the versions of the thing are returned.
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
> <a name='ThingSectionSpec'></a>
>
> ### ThingSectionSpec
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
> enumeration|otherdata|Specifies the other data section of the thing.|The other data section includes the data-other xml. Other data is an additional data element that is not subject to schema validation on the server.
> enumeration|effectivepermissions|Specifies the effective permissions the caller has on the thing.|The effective permissions section includes the eff-permissions xml.
> enumeration|digitalsignatures|Specifies the digital signautures on the thing.|The digital signatures section includes the signature xml, which contains any digital signatures on the returned thing. That digital signature includes a key and a cryptographic hash which can be used to verify that the contents of the thing have not changed since the time it was signed.
> enumeration|tags|Specifies the tags on the thing.|The tags section includes the tags xml which is a string element that contains comma separated list of tags.
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
group|[ThingResponseGroup](#ThingResponseGroup)|1|1|Contains the response to the GetThings method request.|The response are returned as groups of responses that coincide with the filter groups in the request. Each group is identified with a group name that was specified in the request.

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ThingResponseGroup'></a>
>
> ### ThingResponseGroup
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
> thing|[thing](xref:HV_File_thing)|0|unbounded|The things that satisfied the criteria in the filter group of the request.|The things returned here might be a partial list. The server will return a list of things up to a maximum based on server configuration. The unprocessed-thing-key-info element will contain additional things in partial form. To retrieve the things in full form, the thing ids can be specified in the filter group of additional GetThing methods requests.
> unprocessed-thing-key-info|[UnprocessedThingKeyInfo](xref:HV_File_thing#UnprocessedThingKeyInfo)|0|unbounded|Additional things that satisfied the criteria in the filter group of the request but are returned in partial form, including the thing id and thing type.|To retrieve the things in full form, the thing ids can be specified in the filter group of additional GetThing methods requests.
> filtered|boolean|0|1|Indicates whether some of the things were filtered.|Thing may be filtered because of security settings on the record.
>
>

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-getthings.xsd)
[!code-xml[XSD schema](../xsd/method-getthings.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getthings.xsd)
[!code-xml[XSD schema](../xsd/response-getthings.xsd)]
