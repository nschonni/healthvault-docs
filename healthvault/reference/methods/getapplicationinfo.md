---
uid: HV_File_getapplicationinfo
title: GetApplicationInfo
---

# GetApplicationInfo

## Request Overview

Gets the settings for the current application.

## Request Details

<a name='info'></a>

### Root element: info

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
all-languages|boolean|0|1|The all-languages parameter determines how many of instances of culture specific values are returned.|If true, all values are returned. If false, the value with the best matching language is returned. For example, the name property of the application info may be localized into multiple languages.
child-app-id|[guid](xref:HV_File_types#guid)|0|1|Gets the application configuration information for the specified child application ID if the calling application is the master application for that child.|

## Response Overview

GetApplicationInfo returns information about the calling application.

## Response Details

<a name='info'></a>

### Root element: info

GetApplicationInfo returns information about the calling application.

Configuration and installation values are returned for the calling application.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
application|[AppWithLogos](xref:HV_File_application-configuration#AppWithLogos)|1|1|Configuration and installation values for the application.|This element contains information about the installation and configuration of the application including logos, authorization rules, and descriptions.

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-getapplicationinfo.xsd)
[!code-xml[XSD schema](../xsd/method-getapplicationinfo.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-getapplicationinfo.xsd)
[!code-xml[XSD schema](../xsd/response-getapplicationinfo.xsd)]
