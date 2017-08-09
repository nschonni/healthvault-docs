---
uid: HV_File_location
title: location
---

# location

## Overview

Property|Value
---|---
id|File_location
name|location
immutable|
singleton|
allow-readonly|
effective date XPath|

## Details
Location is specified by a country and a state or province. A supported location can be for all locations or a subset of locations for storing user's health data.

<a name=''></a>

### Root element:
 Type:

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SupportedLocationList'></a>
>
> ### SupportedLocationList
>
> A list of supported locations.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> location|[location](xref:HV_File_location)|0|unbounded|A location supported by a device, application, or record.|
> all-locations|boolean|0|1|Support all locations for the HealthVault instance.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AppSupportedRecordLocation'></a>
>
> ### AppSupportedRecordLocation
>
> Information about a specific record location supported for the application.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> app-id|[guid](xref:HV_File_types#guid)|1|1|The unique identifier for the application within the HealthVault ecosystem.|
> warning-msg|[CultureSpecificString](xref:HV_File_types#CultureSpecificString)|0|unbounded|Warning message for using the application for records stored in the specified location.|
> migration-source-instance|[string255nw](xref:HV_File_types#string255nw)|0|1|If the application was migrated from an instance to HVSS which also contained the same application migrated from another instance, this value differentiates between the two configurations.|This element should only be present for the APIs that are used to manage application configuration like AddAppSupportedLocations and RemoveAppSupportedLocations.
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
> location|[location](xref:HV_File_location)|1|1|A location supported by a device, application, or record.|
> all-locations|boolean|1|1|Support all locations for the HealthVault instance.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AppSupportedRecordLocations'></a>
>
> ### AppSupportedRecordLocations
>
> The list of application supported record locations.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> app-supported-record-location|[AppSupportedRecordLocation](#AppSupportedRecordLocation)|0|unbounded|The list of application supported record locations.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SupportedInstanceList'></a>
>
> ### SupportedInstanceList
>
> A list of supported HealthVault instances.
>
> Either the support-all-instances attribute must be true or at least one instance ID must be specified. If the support-all-instances attribute is true, then instance IDs are ignored because the app automatically supports all available instances.
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> support-all-instances|boolean|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> instance-id|[string255nw](xref:HV_File_types#string255nw)|0|unbounded|A supported HealthVault instance ID.|If support-all-instances is false or unspecified, then at least one instance ID must be specified.
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/location.xsd)
[!code-xml[XSD schema](../xsd/location.xsd)]
