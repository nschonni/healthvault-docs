---
uid: HV_File_setapplicationsettings
title: SetApplicationSettings
---

# SetApplicationSettings

## Request Overview

Sets the application specific settings for the person.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
app-settings|[AppSettings](#AppSettings)|0|1|The application specific settings for the person.|An application can store person preferences and other settings for the person in the Microsoft Health Service. These settings are automatically returned when GetPersonInfo is called but can also be retrieved through the use of GetApplicationSettings.<br /><br /> If you are familiar with Windows development, this would be analogus to HKEY_CURRENT_USER settings in the Windows Registry.<br /><br /> Microsoft HealthVault does not interpret this data at all and only acts as storage for it on behalf of the application. It does verify that this element is valid XML so it may be necessary to escape or encode any text that is placed in this node if it is not intended to be XML.

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AppSettings'></a>
>
> ### AppSettings
>
> The application specific settings for the person.
>
> An application can store person preferences and other settings for the person in the Microsoft Health Service. These settings are automatically returned when GetPersonInfo is called but can also be retrieved through the use of GetApplicationSettings.<br /><br /> If you are familiar with Windows development, this would be analogus to HKEY_CURRENT_USER settings in the Windows Registry.<br /><br /> Microsoft HealthVault does not interpret this data at all and only acts as storage for it on behalf of the application.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Any||0|unbounded|The application settings in XML form.|An application can put any data in this portion of settings. Microsoft HealthVault does not interpret this data in any way and will return it to the application exactly as it was stored. HealthVault does validate that the containing node is valid XML so some characters may need to be escaped or encoded.
>
>

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-setapplicationsettings.xsd)
[!code-xml[XSD schema](../xsd/method-setapplicationsettings.xsd)]

