---
uid: HV_a5033c9d-08cf-4204-9bd3-cb412ce39fc0
title: App-specific information
---

# App-specific information

## Overview

Property|Value
---|---
id|a5033c9d-08cf-4204-9bd3-cb412ce39fc0
name|App-specific information
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.ApplicationSpecific](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.applicationspecific)
- [Microsoft.HealthVault.ItemTypes.ApplicationSpecific](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.applicationspecific)

## Details
Applications are responsible for using the format-appid and format-tag to guarantee uniques of the data format.

<a name='app-specific'></a>

### Root element: app-specific

Defines a thing type to store arbitrary application data.

Applications are responsible for using the format-appid and format-tag to guarantee uniques of the data format.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
format-appid|string|1|1|The unique application identifier issued to the application that "owns" this format by Microsoft HealthVault.|The application id gives each application a namespace in which to create unique format-tags. This does not limit which apps can use the type. If an application format becomes popular it can become a de facto standard.
format-tag|string|1|1|A unique tag that identifies the 'subtype' of the thing.|Applications are responsible for the uniqueness of this element.
when|[date-time](xref:HV_File_dates#date-time)|0|1|The date and time of the thing.|If not specified, the effective date will be the date the thing was created.
summary|string|1|1|A descriptive display text for this thing.|
Any||0|unbounded|Application specific data in XML form.|An application can define any arbitrary XML as it's data. It may or may not adhere to a published schema.

## Example
[!code-xml[Example](../sample-xml/a5033c9d-08cf-4204-9bd3-cb412ce39fc0.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/application.xsd)
[!code-xml[XSD schema](../xsd/application.xsd)]
