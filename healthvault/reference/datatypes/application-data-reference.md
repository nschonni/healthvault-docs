---
uid: HV_9ad2a94f-c6a4-4d78-8b50-75b65be0e250
title: Application data reference
---

# Application data reference

## Overview

Property|Value
---|---
id|9ad2a94f-c6a4-4d78-8b50-75b65be0e250
name|Application data reference
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.ApplicationDataReference](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.applicationdatareference)
- [Microsoft.HealthVault.ItemTypes.ApplicationDataReference](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.applicationdatareference)

## Details
Information that can be used by an application to render content from another application.

<a name='application-data-reference'></a>

### Root element: application-data-reference

Information that can be used by an application to render content from another application.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
name|[stringnz](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnz)|1|1|Consumer-friendly name.|
render-filename|[stringnz](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnz)|0|1|The fully qualified name of the SilverLight application.|In current implementations, the xap files themselves must be hosted by Microsoft. This name will be used to look-up the src location of the widget for the purpose of display.
public-url|[stringnz](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnz)|0|1|The url that renders the application, suitable for IFrame embedding.|
configuration-url|[stringnz](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnz)|0|1|The url to the application's configuration page.|This page is where the user can enable/disable the application.
open-query-id|[guid](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#guid)|0|1|Identifier to pass to open query.|The open query is executed by referencing {platform url}/OpenQuery.ashx?id={open-query-id} This is used when HealthVault serves data to the application directly.
application-data-url|[stringnz](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnz)|0|1|Url to obtain data from the application.|If there is application specific data, or data that needs to be served from the application rather than directly from HealthVault, then this field should contain the fully qualified https url.

## Example
[!code-xml[Example](../sample-xml/9ad2a94f-c6a4-4d78-8b50-75b65be0e250.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/application-data-reference.xsd)
[!code-xml[XSD schema](../xsd/application-data-reference.xsd)]
