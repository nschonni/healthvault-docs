---
uid: HV_File_getthingtype
title: GetThingType
---

# GetThingType

## Request Overview

Gets information about the thing types supported by the platform.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
id|[guid](xref:HV_File_types#guid)|0|unbounded|Optional parameter. If a list of thing-types is provided, information about those thing types are returned. If a list is not provided, then a list of all supported thing types is returned.|
section|[ThingTypeSectionSpec](#ThingTypeSectionSpec)|0|7|Indicates which information about a thing-type is to be returned.|
image-type|string|0|unbounded|Specifies which thing type images should be retrieved.|This requests an image of the specified mime type should be returned. For example, to request a GIF image, "image/gif" should be specified. For icons, "image/vnd.microsoft.icon" should be specified. Note, not all thing types will have all image types and some may not have any images at all. If '*' is specified, all image types will be returned.
last-client-refresh|dateTime|0|1|Allows the caller to tell the server to only respond if there have been changes made to the thing types since the date/time specified.|This parameter is typically used by callers who cache the results of the response. You can timestamp the data returned and then poll for thing type updates periodically and pass that timestamp in this parameter. The server will determine if any updates have occurred since that timestamp and only return results if there were any updates. This determination does not take into account the data you are asking for in the section or image-type specified but for all thing type definitions. Note, there may be slight variations between servers depending on when each server was updated with the new data. This variation may differ in a number of minutes but under normal conditions will be less than an hour.

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ThingTypeSectionSpec'></a>
>
> ### ThingTypeSectionSpec
>
> This allows the caller to specify which information about a thing type should be returned with this request.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|core|The essential information about the thing type should be returned.|
> enumeration|xsd|The schema of the thing type should be returned.|
> enumeration|columns|Columns used by the thing type should be returned.|
> enumeration|transforms|The transforms supported by the thing type should be returned.|
> enumeration|transformsource|The transforms and their XSL source supported by the thing type should be returned.|
> enumeration|versions|The versions of the thing type should be returned.|
> enumeration|effectivedatexpath|Returns all the XPath queries defined on the Thing Type.|XPath queries allow obtaining nodes which will contain the thing's type specific data.
>
>

## Response Overview

This schema defines the response from a getthingtype-request

## Response Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
thing-type|[ThingTypeInfo](#ThingTypeInfo)|0|unbounded|List of one or more thing types that satisfies the request.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Column'></a>
>
> ### Column
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> tag|string|required|||
> label|string|required|||
> type|string|required|||
> width|positiveInteger|required|||
> visible|boolean|optional|||
> order-by|string|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Columns'></a>
>
> ### Columns
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> column|[Column](#Column)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Transforms'></a>
>
> ### Transforms
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> tag|string|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TransformSource'></a>
>
> ### TransformSource
>
> The tag and XSL source for the transform.
>
> The transform source is XSL version 1.0 and uses msxml:script extensions in some cases. The source is XML encoded into the value of the element.
>
> ### Extension
>
> Base type: string
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> tag|string|required|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Image'></a>
>
> ### Image
>
> The image for the thing type.
>
> Images are base64 encoded into the value and the image type is specified as the "mime-type" attribute.
>
> ### Extension
>
> Base type: string
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> mime-type|string|required|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='VersionInfo'></a>
>
> ### VersionInfo
>
> The version information for a single version of a thing type.
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> version-type-id|[guid](xref:HV_File_types#guid)|required|||
> version-name|string|required|||
> version-sequence|integer|required|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> order-by-properties|[OrderByProperties](#OrderByProperties)|0|1|The set of properties that the thing-type can be ordered by in the result.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='OrderByProperties'></a>
>
> ### OrderByProperties
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> property|[Property](#Property)|0|unbounded|The property that the thing-type can be ordered by in the result.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Property'></a>
>
> ### Property
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> name|string|required|||
> type|string|required|||
> xpath|string|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> conversion|[UnitsConversion](#UnitsConversion)|0|1|A conversion to apply to the xpath value.|When a thing type has multiple versions that store the same data with different units, a conversion between units may be required to ensure that values are ordered correctly across versions.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UnitsConversion'></a>
>
> ### UnitsConversion
>
> Describes a conversion to apply to a numeric value.
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
> linear-conversion|[LinearConversion](#LinearConversion)|1|1|A linear conversion to apply to the value.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='LinearConversion'></a>
>
> ### LinearConversion
>
> A linear conversion of the form x' = mx + b.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> multiplier|double|1|1|The value by which to multiply the original value; the 'm' in the equation x' = mx + b.|
> offset|double|1|1|The offset to add in the linear conversion; the 'b' in the equation x' = mx + b.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Versions'></a>
>
> ### Versions
>
> The collection of all versions for a thing type.
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> thing-type-id|[guid](xref:HV_File_types#guid)|required|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> version-info|[VersionInfo](#VersionInfo)|1|unbounded|The version information for a single version of a thing type.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ThingTypeInfo'></a>
>
> ### ThingTypeInfo
>
> Describes the information related to a thing type
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> id|[guid](xref:HV_File_types#guid)|1|1|Unique thing type identifier|
> name|string|1|1|Friendly name|
> uncreatable|boolean|0|1|Specifies whether the thing type can be created or not|
> immutable|boolean|0|1|Specifies whether the thing type can be updated or not|
> singleton|boolean|0|1|Specifies whether the thing type is a singleton|
> xsd|string|0|1|xsd schema describing a thing type|
> columns|[Columns](#Columns)|0|1|Display columns defined for the thing type|
> transforms|[Transforms](#Transforms)|0|1|Transforms defined for this thing type|
> transform-source|[TransformSource](#TransformSource)|0|unbounded|The transforms and XSL source defined for this thing type.|
> image|[Image](#Image)|0|unbounded|The requested images that the thing type supports.|
> versions|[Versions](#Versions)|0|1|The collection of all versions for a thing type.|
> effective-date-xpath|string|0|1|The XPath query for obtaining the effective date.|
> updated-end-date-xpath|string|0|1|The XPath query for obtaining the updated end date.|
> allow-readonly|boolean|0|1|Specifies whether the thing type allows read-only instances.|
>
>

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-getthingtype.xsd)
[!code-xml[XSD schema](../xsd/method-getthingtype.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getthingtype.xsd)
[!code-xml[XSD schema](../xsd/response-getthingtype.xsd)]
