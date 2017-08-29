---
uid: HV_File_beginputconnectpackageblob
title: BeginPutConnectPackageBlob
---

# BeginPutConnectPackageBlob

## Response Details

<a name='info'></a>

### Root element: info

The response for the request to indicate that the streaming put of a blob in to the Healthvault system is about to begin.

When a token is requested, if the request is a success then there will be a token. Otherwise, there will be an absence reason.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
blob-ref-url|anyURI|1|1|The authentication token to be supplied with a streaming put blob request.|The token has a limited time-to-live. When the token expires, requests will fail with access denied.
package-blob-chunk-encryption-algorithm|[PackageBlobChunkEncryptionAlgorithm](#PackageBlobChunkEncryptionAlgorithm)|1|1|Algorithm used for the encryption.|
blob-pre-encryption-chunk-size|positiveInteger|1|1|The chunk size in bytes, before the chunks were encrypted with the package encryption, to use with the streaming PUT API.|
blob-post-encryption-chunk-size|positiveInteger|1|1|The chunk size in bytes, after the chunks were encrypted with the package encryption, to use with the streaming PUT API.|
max-blob-size|positiveInteger|1|1|The maximum size in bytes that the blob can grow to.|
blob-hash-algorithm|[stringz255](xref:HV_File_types#stringz255)|1|1||
blob-hash-parameters|[BlobHashAlgorithmParameters](xref:HV_File_types#BlobHashAlgorithmParameters)|1|1||

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PackageBlobChunkEncryptionAlgorithm'></a>
>
> ### PackageBlobChunkEncryptionAlgorithm
>
> Algorithm used for the encryption.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|aes256|Encrypted using the AES256 encryption function.|
>
>

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-beginputconnectpackageblob.xsd)
[!code-xml[XSD schema](../xsd/response-beginputconnectpackageblob.xsd)]
