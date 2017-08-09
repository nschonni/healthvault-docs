---
uid: HV_File_getservicedefinition2
title: GetServiceDefinition2
---

# GetServiceDefinition2

## Request Overview

This method is used to get information about Microsoft HealthVault and its related features.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
updated-date|dateTime|0|1|Allows the caller to tell the server to only respond if there have been changes made to the service definition since the date/time specified.|This parameter is typically used by callers who cache the results of the response. You can poll for service definition updates periodically, passing in the timestamp returned by the last call to the method that returned a nonempty response. The server will determine if any updates have occurred since that timestamp and only return a nonempty response if so. Note, there may be slight variations between servers depending on when each server was updated with the new data. This variation may differ in a number of minutes but under normal conditions will be less than an hour.
response-sections|[ResponseSections](#ResponseSections)|0|1|Indicates which sections of the GetServiceDefinition response to return.|If this element is omitted, the full response will be returned. Otherwise, if a category name is included in the list of response sections, the corresponding node or nodes will be included in the response.

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ResponseSections'></a>
>
> ### ResponseSections
>
> Indicates which sections of the GetServiceDefinition response to return.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> section|[ResponseSection](#ResponseSection)|1|unbounded|Represents one content section to returhn.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ResponseSection'></a>
>
> ### ResponseSection
>
> Indicates which sections of the GetServiceDefinition response to return.
>
> "platform" indicates that the platform node should be returned. "shell" indicates that the shell node should be returned. "topology" indicates that the instances node, representing the topology of the global HealthVault ecosystem, should be returned. "xml-over-http-methods" indicates that lists of XML methods and schemas should be returned. "meaningful-use" indicates that configuration values related to Meaningful Use should be returned.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|platform||
> enumeration|shell||
> enumeration|topology||
> enumeration|xml-over-http-methods||
> enumeration|meaningful-use||
>
>

## Response Overview

Gets information about Microsoft HealthVault and its related features.

## Response Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
platform|[Platform](#Platform)|0|1|Information about Microsoft HealthVault.|
shell|[Shell](#Shell)|0|1|Information about the Microsoft HealthVault Shell.|
xml-method|[XmlMethod](#XmlMethod)|0|unbounded|Information about the Microsoft HealthVault web methods.|
common-schema|string|0|unbounded|URLs of schemas referenced by the Microsoft HealthVault web service methods.|
instances|[InstanceList](#InstanceList)|0|1|Information about each of the HealthVault instances in the global HealthVault ecosystem.|An instance is a single deployment of HealthVault services and health record storage primarily for users from a particular region or constituent population.
meaningful-use|[MeaningfulUse](#MeaningfulUse)|0|1|Configuration information for Meaningful Use features.|
updated-date|dateTime|0|1|The last time the response was updated.|Callers can use this return value to cache the results of the response and poll for service definition updates periodically, passing in the timestamp returned from the last call that returned a nonempty response. The server will determine if any updates have occurred since that timestamp and only return a nonempty response if there were any updates. Note, there may be slight variations between servers depending on when each server was updated with the new data. This variation may differ in a number of minutes but under normal conditions will be less than an hour.

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ConfigurationEntry'></a>
>
> ### ConfigurationEntry
>
> A configuration value that is important for developers to know about Microsoft HealthVault.
>
> Microsoft HealthVault has some configuration that dictates the behavior of certain methods and data. For instance, GetThings will return only a certain number of full things in the response and give only thing keys for anything beyond that limit. The number of full things returned is defined by configuration and can be changed at any time to optimize the services ability to respond to applications. These configuration values are surfaced here so that application developers can make programmatic decisions based on these values if necessary.
>
> ### Extension
>
> Base type: string
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> key|string|required|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Platform'></a>
>
> ### Platform
>
> Information about Microsoft HealthVault.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> url|string|1|1|The URL to use to access the Microsoft HealthVault web service methods.|Microsoft HealthVault method requests must go through this URL.
> version|string|1|1|The Microsoft HealthVault version number.|This version number will follow the general .NET guidlines for versioning of assemblies: major.minor.build.revision. Changes to the major version number signify breaking changes. Changes to other parts of the version signify added or updates to functionality.
> configuration|[ConfigurationEntry](#ConfigurationEntry)|0|unbounded|Configuration values that are important for developers to know about Microsoft HealthVault.|Microsoft HealthVault has some configuration that dictates the behavior of certain methods and data. For instance, GetThings will return only a certain number of full things in the response and give only thing keys for anything beyond that limit. The number of full things returned is defined by configuration and can be changed at any time to optimize the services ability to respond to applications. These configuration values are surfaced here so that application developers can make programmatic decisions based on these values if necessary.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ShellRedirectToken'></a>
>
> ### ShellRedirectToken
>
> A representation of the redirect information that can be supplied along with the Shell redirect url to access specific functionalities in the Shell.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> token|string|1|1|A string token used to redirect to specific parts within the Shell, accessing specific functions.|
> description|string|1|1|A localized text description of the Shell functionality accessible by using the token.|
> querystring-parameters|string|1|1|A comma seperated list of parameters that must be supplied in the query string in addition to the redirect token.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Shell'></a>
>
> ### Shell
>
> Information about the Microsoft HealthVault Shell.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> url|string|1|1|The URL used to access the Microsoft HealthVault Shell.|
> redirect-url|string|1|1|The URL used to redirect to specific functions within the Microsoft HealthVault Shell.|
> redirect-token|[ShellRedirectToken](#ShellRedirectToken)|0|unbounded|The possible redirect tokens that can be supplied in addition to the redirect url to route to specific functionalities within the Shell.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='XmlMethodVersion'></a>
>
> ### XmlMethodVersion
>
> Information about a particular version of one of the Microsoft HealthVault XML web-methods.
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> number|string|required|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> request-schema-url|string|0|1|The URL of the method request schema.|The URL points to an .xsd file defining the schema for a request to this method.
> response-schema-url|string|0|1|The URL of the method response schema.|The URL points to an .xsd file defining the schema for a response from this method.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='XmlMethod'></a>
>
> ### XmlMethod
>
> Information about a Microsoft HealthVault web-method.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|string|1|1|The name of the Microsoft HealthVault method.|The name is used in the XML request to define the method the request is calling.
> version|[XmlMethodVersion](#XmlMethodVersion)|0|unbounded|The set of available versions of the method.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='InstanceList'></a>
>
> ### InstanceList
>
> Information about each of the HealthVault instances in the global HealthVault ecosystem.
>
> An instance is a single deployment of HealthVault services and health record storage primarily for users from a particular region or constituent population.
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> current-instance-id|[string255nw](xref:HV_File_types#string255nw)||||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> instance|[Instance](xref:HV_File_types#Instance)|1|unbounded|Information about one HealthVault instance in the global HealthVault ecosystem.|An instance is a single deployment of HealthVault services and health record storage primarily for users from a particular region or constituent population.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='MeaningfulUse'></a>
>
> ### MeaningfulUse
>
> Configuration information for the Meaningful Use feature.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> enabled|boolean|1|1|Indicates whether Meaningful Use feature is enabled for this instance.|
> configuration|[ConfigurationEntry](#ConfigurationEntry)|0|unbounded|Configuration values that are important for developers to know about Microsoft HealthVault's Meaningful Use feature.|Microsoft HealthVault has some configuration that dictates the behavior of certain Meaningful Use operations. For instance, GetMeaningfulUseVDTReport will return only a certain number of items in the response if result set is large and paging is required. The number of items returned per page is defined by MaxMeaningfulUseReportItemsPerRetrieval configuration and can be changed at any time to optimize the service's ability to respond to applications. These configuration values are surfaced here so that application developers can make programmatic decisions based on these values if necessary.
>
>

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-getservicedefinition2.xsd)
[!code-xml[XSD schema](../xsd/method-getservicedefinition2.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getservicedefinition2.xsd)
[!code-xml[XSD schema](../xsd/response-getservicedefinition2.xsd)]
