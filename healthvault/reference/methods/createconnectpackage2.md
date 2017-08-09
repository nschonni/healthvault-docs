---
uid: HV_File_createconnectpackage2
title: CreateConnectPackage2
---

# CreateConnectPackage2

## Request Overview

Creates a package containing a data that the user can claim using the identity code returned by this method

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
identity-code|string|0|1||
friendly-name|[stringnz](xref:HV_File_types#stringnz)|1|1|A friendly name that will be presented to the user after the user successfully answers the challenge question.|The friendly name should be something that is recognizable and distinguishes one package from another so that the user may choose the expected record during validation. For example, a mother of 2 children may want her packages named after each child so she can distinguish one child's package from the others.
question|[stringnz](xref:HV_File_types#stringnz)|1|1|A challenge question posed to the user once the identity code has been successfully entered.|The challenge question should be personal and easy to answer for the user. An empty question will result in an InvalidVerificationQuestion error.
external-id|[stringnz](xref:HV_File_types#stringnz)|1|1|An identifier supplied by the external application for the connect package.|This value will tie the external application to the HealthVault record being shared. For instance, this could be the patient identifier used to store information in the calling application's database.
package|[Thing2](xref:HV_File_thing#Thing2)|1|1|The package to create.|This package must be a Password Protected Package Thing. It's data-other must be Base64 encoded, and must contain the encrypted data which the user will be able to decrypt by answering the verification question. The decoded and decrypted data must be a sequence of thing elements as defined by the following schema: <sequence><element name="thing" type="wc-thing:Thing2" minOccurs="1" maxOccurs="unbounded" /></sequence> For example: <thing><type-id>3d34d87e-7fc1-4153-800f-f56592cb0d17</type-id><data-xml> ... </data-xml></thing><thing><type-id>40750a6a-89b2-455c-bd8d-b420a4cb500b</type-id><data-xml> ... </data-xml></thing>
streamed-package-blobs|[StreamedPackageBlobs](#StreamedPackageBlobs)|0|1||

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StreamedPackageBlobs'></a>
>
> ### StreamedPackageBlobs
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> blob-in-package-ref-url|anyURI|1|unbounded|Is a reference url to the blob, created via streaming and a part of the encrypted thing within the package.|The blobs are streamed in by allocating urls through the BeginConnectPackageBlob call. This is followed by streaming the bytes in via the Binary channel API.
>
>

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-createconnectpackage2.xsd)
[!code-xml[XSD schema](../xsd/method-createconnectpackage2.xsd)]

