---
uid: HV_File_beginputblob
title: BeginPutBlob
---

# BeginPutBlob

## Response Overview

The authentication token to be supplied with a streaming put blob request.

## Response Details

<a name='info'></a>

### Root element: info

The response for the request to indicate that the streaming put of a blob in to the Healthvault system is about to begin.

When a token is requested, if the request is a success then there will be a token. Otherwise, there will be an absence reason.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
blob-ref-url|anyURI|1|1|The authentication token to be supplied with a streaming put blob request.|The token has a limited time-to-live. When the token expires, requests will fail with access denied.
blob-chunk-size|[int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)|1|1|The chunk size in bytes to use with the streaming PUT API.|
max-blob-size|positiveInteger|1|1|The maximum size in bytes that the blob can grow to.|
blob-hash-algorithm|[stringz255](xref:HV_File_types#stringz255)|1|1||
blob-hash-parameters|[BlobHashAlgorithmParameters](xref:HV_File_types#BlobHashAlgorithmParameters)|1|1||

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-beginputblob.xsd)
[!code-xml[XSD schema](../xsd/response-beginputblob.xsd)]
