---
uid: HV_c9287326-bb43-4194-858c-8b60768f000f
title: Password-protected package
---

# Password-protected package

## Overview

Property|Value
---|---
id|c9287326-bb43-4194-858c-8b60768f000f
name|Password-protected package
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Password-protected package](https://go.microsoft.com/fwlink/?LinkID=136200)

## Details
A package that contains a pkcs5v2 encrypted blob.

<a name='password-protected-package'></a>

### Root element: password-protected-package

Defines the schema for a package that can contain a password encrypted blob.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
encrypt-algorithm|[PackageEncryptionType](#PackageEncryptionType)|1|1|Algorithm used in the encryption|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PbeParametersType'></a>
>
> ### PbeParametersType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> salt|string|1|1|Salt used when hashing the value.|The value for this element is application dependent, but to support consistency we suggest that the salt be a base64 encoded series of bytes matching the length requirement of the algorithm. For instance, 64 bytes for sha1 and sha256.
> iteration-count|[int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)|1|1|The number of iterations used when hashing the data.|
> key-length|[int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)|1|1|The key length in bits used.|The value depends on encryption algorithm. The default is 168 for 3DES and 256 for aes256.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PackageEncryptionType'></a>
>
> ### PackageEncryptionType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> algorithm-name|[algorithm-name](#algorithm-name)|1|1||
> parameters|[PbeParametersType](#PbeParametersType)|0|1|Parameters used by the algorithm for the encryption.|
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='algorithm-name'></a>
> >
> > ### algorithm-name
> >
> > Algorithm used for the encryption.
> >
> > ### Restriction
> >
> > Base type: string
> >
> > #### Restriction facets
> >
> > Restriction type|Value|Summary|Remarks
> > ---|---|---|---
> > enumeration|none|No encryption was used.|
> > enumeration|hmac-sha1-3des|Encrypted using the hmac-sha1 pseudorandom and the 3DES encryption function|
> > enumeration|hmac-sha256-aes256|Encrypted using the hmac-sha2 pseudorandom and the AES256 encryption function.|
> >
> >
>
>

## Example
[!code-xml[Example](sample-xml/c9287326-bb43-4194-858c-8b60768f000f.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/password-protected-package.xsd)
[!code-xml[XSD schema](xsd/password-protected-package.xsd)]
