---
uid: HV_File_newapplicationcreationinfo
title: NewApplicationCreationInfo
---

# NewApplicationCreationInfo

## Response Overview

Gets information needed to authorize a new SODA application instance.

## Response Details

<a name='info'></a>

### Root element: info

Contains the response to the NewApplicationCreationInfo method call.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
app-id|[guid](xref:HV_File_types#guid)|1|1|The unique identifier of the application.|This identifier identifies a single instance of the application. Different soda instances will have different identifiers.
shared-secret|[string64](xref:HV_File_types#string64)|1|1|The unique shared-secret for the application.|The shared secret will be used to sign an authentication request with platform in the CreatAuthenticatedSessionToken call.
app-token|[string1024](xref:HV_File_types#string1024)|1|1|An opaque token used to create a new application.|This token should be passsed to HealthVault Shell where the user can create a new instance of the application and authorize it for one or more records. The token may only be used once to create a single instance of the application.

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-newapplicationcreationinfo.xsd)
[!code-xml[XSD schema](../xsd/response-newapplicationcreationinfo.xsd)]
