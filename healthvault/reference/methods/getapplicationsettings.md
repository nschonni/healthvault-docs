---
uid: HV_File_getapplicationsettings
title: GetApplicationSettings
---

# GetApplicationSettings

## Response Overview

Gets the application specific settings for the person.

## Response Details

<a name='info'></a>

### Root element: info

The element of the response that contains the method specific return value(s).

All response schemas contain the info element which contain the return value of the method. If the method does not define an info element, the method has no return value.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
app-settings|[AppSettings](#AppSettings)|0|1|The application specific settings for the person.|An application can store person preferences and other settings for the person in the Microsoft Health Service. These settings are automatically returned when GetPersonInfo is called but can also be retrieved through the use of GetApplicationSettings.<br /><br /> If you are familiar with Windows development, this would be analogus to HKEY_CURRENT_USER settings in the Windows Registry.<br /><br /> Microsoft HealthVault does not interpret this data at all and only acts as storage for it on behalf of the application.
selected-record-id|[guid](xref:HV_File_types#guid)|0|1|The unique identifier for the health record that the person chose to use for this application.|Most Microsoft HealthVault applications will work with single health record at a time.<br /><br /> The first time a person uses an application, they are required to select a health record to use with the application. The HealthVault platform remembers the selection and authorizes the application to use that record.<br /><br /> A person may choose to have multiple records authorized for one application but the application should use the selected record by default.

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
> Any||0|unbounded|The application settings.|An application can put any data in this portion of settings. Microsoft HealthVault does not interpret this data in any way and will return it to the application exactly as it was stored. HealthVault does verify that the outer node containing the data is valid XML so some characters may need to be escaped or encoded.
>
>

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getapplicationsettings.xsd)
[!code-xml[XSD schema](../xsd/response-getapplicationsettings.xsd)]
