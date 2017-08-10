---
uid: HV_File_directory
title: directory
---

# directory

## Overview

Property|Value
---|---
id|File_directory
name|directory
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
> <a name='DirectoryCategories'></a>
>
> ### DirectoryCategories
>
> Categories of the application or device directory item.
>
> An application or device can have multiple categories.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> category|[coded-value](xref:HV_File_types#coded-value)|1|unbounded|Category of the device or application directory. This should be a codable-value and have a recommended vocabulary.|Categories for application such as Consumer or Industry. Categories for devices such as Blood Pressure Monitors, Blood Glucose Monitors, Weight Scales, ..etc
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DirectoryDataProviderCategories'></a>
>
> ### DirectoryDataProviderCategories
>
> Categories for which the application or device directory item provides data.
>
> An application or device can be a provider of data for multiple categories.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> data-provider-category|[coded-value](xref:HV_File_types#coded-value)|1|unbounded|Category for which the device or application directory item provides data. This should be a codable-value and have a recommended vocabulary.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CompanyInformation'></a>
>
> ### CompanyInformation
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> company-logo|[Logo](#Logo)|0|1|Logo of the company.|
> company-name|[CultureSpecificString255nw](xref:HV_File_types#CultureSpecificString255nw)|0|unbounded|The name of the company.|
> company-url|[CultureSpecificUrl](xref:HV_File_types#CultureSpecificUrl)|0|unbounded|Company url.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='MobilePlatformCollection'></a>
>
> ### MobilePlatformCollection
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> mobile-platform|[MobilePlatform](#MobilePlatform)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='MobilePlatform'></a>
>
> ### MobilePlatform
>
> Any extra data in string-value pair format.
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> os|string|required|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> app-url|[AppUrl](#AppUrl)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AppUrl'></a>
>
> ### AppUrl
>
> The Uri for a Mobile App.
>
> ### Extension
>
> Base type: anyURI
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DirectoryItemMetadata'></a>
>
> ### DirectoryItemMetadata
>
> Basic summary information for a directory item.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> id|[guid](xref:HV_File_types#guid)|1|1|Directory item id.|
> name|[string255nw](xref:HV_File_types#string255nw)|1|1|Name of the item for the default language.|
> migration-source-instance|[string255nw](xref:HV_File_types#string255nw)|0|1|If the directory item was migrated from an instance to HVSS which also contained the same directory item migrated from another instance, this value differentiates between the two configurations.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CultureSpecificScreenshotImage'></a>
>
> ### CultureSpecificScreenshotImage
>
> The CultureSpecific... classes are intended for use with data that can be localized for one or more languages and cultures.
>
> The CultureSpecific... classes should be upward compatible with the base types.
>
> ### Extension
>
> Base type: [ScreenshotImage](xref:HV_File_directory#ScreenshotImage)
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
> <a name='Screenshots'></a>
>
> ### Screenshots
>
> Collection of screenshots for the directory item.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> screenshot|[Screenshot](#Screenshot)|1|unbounded|Represents information for screenshot of the directory item.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Screenshot'></a>
>
> ### Screenshot
>
> Represents information for screenshot of the directory item. The recommended maximum dimensions are 150px by 150px or size of 150K.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> alt-text|[CultureSpecificString255nw](xref:HV_File_types#CultureSpecificString255nw)|1|unbounded|The alt-text associated with the screenshot. Recommended maximum-length of alt-text is 255 characters.|
> caption|[CultureSpecificString255nw](xref:HV_File_types#CultureSpecificString255nw)|0|unbounded|The caption associated with the screenshot. Recommended maximum-length of caption is 255 characters.|
> sequence|positiveInteger|1|1|The sequence associated with the screenshot.|
> image|[CultureSpecificScreenshotImage](#CultureSpecificScreenshotImage)|1|unbounded|Base 64 encoded image string. Recommended maximum-length of 150K or image size 150px by 150px.|
> image-content-type|[string255nw](xref:HV_File_types#string255nw)|1|1|Content type of the image such as jpeg...etc|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Logo'></a>
>
> ### Logo
>
> Represents information for logo of the directory item. The recommended maximum dimensions are 150px by 150px or size of 60K.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> alt-text|[CultureSpecificString255nw](xref:HV_File_types#CultureSpecificString255nw)|1|unbounded|The alt-text associated with the screenshot. Recommended maximum-length of alt-text is 255 characters.|
> image|[CultureSpecificScreenshotImage](#CultureSpecificScreenshotImage)|1|unbounded|Base 64 encoded image string. Recommended maximum-length of 150K or image size 150px by 150px.|
> image-content-type|[string255nw](xref:HV_File_types#string255nw)|1|1|Content type of the image such as image/jpeg, image/tiff, ...etc|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ApplicationDirectoryItem'></a>
>
> ### ApplicationDirectoryItem
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> application-logo|[AppLargeLogoInfo](xref:HV_File_application-configuration#AppLargeLogoInfo)|0|1|Large logo of the application.|
> privacy-statement-url|[CultureSpecificUrl](xref:HV_File_types#CultureSpecificUrl)|0|unbounded|Url to the privacy statement for the application.|
> terms-of-use-url|[CultureSpecificUrl](xref:HV_File_types#CultureSpecificUrl)|0|unbounded|Url to the terms of use statement for the application.|
> connection-description|[CultureSpecificString](xref:HV_File_types#CultureSpecificString)|0|unbounded|A description of an application and its connection process.|
> screenshots|[Screenshots](#Screenshots)|0|1||
> supported-record-locations|[SupportedLocationList](xref:HV_File_location#SupportedLocationList)|0|1|List of locations supported by the application.|
> supported-instances|[SupportedInstanceList](xref:HV_File_location#SupportedInstanceList)|0|1|List of instances supported by the application.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DeviceDirectoryItem'></a>
>
> ### DeviceDirectoryItem
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> models|[DeviceModels](#DeviceModels)|0|1|Model information for this device.|
> supported-record-locations|[SupportedLocationList](xref:HV_File_location#SupportedLocationList)|0|1|Collection of locations supported for the device.|
> supported-instances|[SupportedInstanceList](xref:HV_File_location#SupportedInstanceList)|0|1|List of instances supported by the device.|
> app-id|[guid](xref:HV_File_types#guid)|0|1|Unique Id of the application which is associated with this device to connect to HealthVault ecosystem.|Device will have the same list of supported locations and instances as the associated application. We will always use the application's supported location and instance lists.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='WindowsClientInformation'></a>
>
> ### WindowsClientInformation
>
> the information required for windows clients in order to detect the device and install the appropriate driver for it.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> device-class|[guid](xref:HV_File_types#guid)|0|1|The device class guid.|
> hardware-id|[stringnz](xref:HV_File_types#stringnz)|1|1|The hardware id. Recommended maximum-length of hardware-id is 32 characters.|
> installed-hardware-ids|[InstalledHardwareIds](#InstalledHardwareIds)|1|1|The list of installed hardware ids.|
> auto-detect-id|[stringnz](xref:HV_File_types#stringnz)|0|1|Identification for auto-detect. Recommended maximum-length of auto-detect-id is 32 characters.|
> driver-package-arguments|[stringnz](xref:HV_File_types#stringnz)|0|1|Arguments to pass to the driver install package. Recommended limit on driver-package-arguments is 2048 characters.|
> driver-packages|[DriverPackages](#DriverPackages)|1|1|Driver packages for this device.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='InstalledHardwareIds'></a>
>
> ### InstalledHardwareIds
>
> The list of installed hardware ids.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> installed-hardware-id|[string1024](xref:HV_File_types#string1024)|1|unbounded|The installed hardware ids.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DeviceModels'></a>
>
> ### DeviceModels
>
> The list of device models available.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> model|[DeviceModel](#DeviceModel)|1|unbounded|Model information.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DeviceModel'></a>
>
> ### DeviceModel
>
> The device model information.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> screenshots|[Screenshots](#Screenshots)|0|1||
> name|[stringz128](xref:HV_File_types#stringz128)|0|1||
> display-name|[CultureSpecificString255nw](xref:HV_File_types#CultureSpecificString255nw)|0|unbounded||
> purchase-url|[CultureSpecificUrl](xref:HV_File_types#CultureSpecificUrl)|0|unbounded|Driver package download url.|
> windows-client-information|[WindowsClientInformation](#WindowsClientInformation)|0|1|Information about device that is compatible with HealthVault windows client.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DriverPackages'></a>
>
> ### DriverPackages
>
> The list of driver packages available for the device.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> package|[DriverPackage](#DriverPackage)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DriverPackage'></a>
>
> ### DriverPackage
>
> Information on the driver package.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> platforms|[Platforms](#Platforms)|1|1||
> driver-package-url|[CultureSpecificUrl](xref:HV_File_types#CultureSpecificUrl)|1|unbounded|Driver package download url.|
> default-arguments|[stringnz](xref:HV_File_types#stringnz)|0|1|Default arguments to pass to the driver install package. Recommended maximum-length of default-arguments is 2048 characters.|
> instructions-url|[CultureSpecificUrl](xref:HV_File_types#CultureSpecificUrl)|0|unbounded|Special instructions url.|
> validation-code|[string255nw](xref:HV_File_types#string255nw)|0|1|Signer name of the package (digital signature signer name).|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Platforms'></a>
>
> ### Platforms
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> platform|[coded-value](xref:HV_File_types#coded-value)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DirectoryFilterSpec'></a>
>
> ### DirectoryFilterSpec
>
> Schema for specifying filters on retrieving directory information.
>
> The list of directory entries can be queried through by specified filters. If not specified, everything will be returned.
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
> directory-item-ids|[guids](xref:HV_File_types#guids)|1|1|Allows filtering based on a directory item id.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ScreenshotImage'></a>
>
> ### ScreenshotImage
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
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/directory.xsd)
[!code-xml[XSD schema](../xsd/directory.xsd)]
