---
title: Medical Imaging
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn how to store or retrieve medical images like DICOM images from HealthVault
---

Medical imaging on HealthVault
==============================

Introduction
------------

Microsoft HealthVault is an online consumer health platform that enables the exchange of health information among different healthcare solutions and users, giving users access to and control over their health information. The HealthVault platform API is a web service interface that enables applications and systems to exchange information with HealthVault, subject to explicit authorization by users. The platform API is a web service that utilizes XML, XSD, HTTP, SSL, X509 certificates and standard cryptographic algorithms. Any programming language that supports these technologies can be used to implement a HealthVault enabled application. The Microsoft HealthVault SDK is a .NET client library that provides a standard set of interfaces for implementing HealthVault enabled applications using the .NET framework.

The HealthVault data model defines the format for exchanging information with HealthVault. At the core of the data model are data types (aka thing types) that define data entities (e.g. Immunization) and their associated properties (e.g. Date Administered and Vaccine). These data types are defined by XSD schemas and are exchanged as XML through the platform API. The SDK provides wrapper classes that enable working with data types as .NET objects.

To support the exchange of medical imaging data, the platform API and client SDK include methods and functionality specifically designed for the transfer of large data sets, as is the case with imaging studies. And the HealthVault data model includes the medical image study data type which defines the format for exchanging imaging studies with HealthVault.

This document describes the support for medical imaging data within HealthVault and provides a guide to developers for implementing solutions that exchange medical imaging data with HealthVault. It assumes the reader is familiar with the HealthVault platform and HealthVault application development.

HealthVault medical image study (MIS) data type
-----------------------------------------------

The medical image study (MIS) data type defines the format for exchanging imaging studies with HealthVault. The MIS data type is not a substitute for industry standards such as DICOM—rather, it defines the properties necessary for the exchange, storage and querying of imaging data within HealthVault, while preserving full fidelity DICOM (or other standard) files. Some of the MIS properties map to DICOM properties, but the complete set of DICOM properties is retained in the native DICOM file. This enables applications to access key properties of a study without having to fully parse the DICOM header.

The MIS type has the following high level structure:

-   **Medical Image Study**

    This is the root entity. It defines properties of the study such as when the study was conducted, a description of and reason for the study and patient name. It is also a container for one or more medical image study series instances and, optionally any key images.

-   **Medical image study series**

    This sub-entity (it is not a first class HealthVault data type) defines properties of an imaging series, such as when the series was acquired, a description of the series, the modality utilized and the body part that was imaged. It is also a container for one or more medical image study series image instances (e.g. multiple MRI slices) and, optionally, a single preview image that is representative of the full series of images.

-   **Medical image study series image**

    This sub-entity provides a pointer to an image and, optionally, a low resolution version of the image. The lower resolution images can be used as thumbnails or for faster web previewing.

HealthVault base thing type and streamed blobs

As described above, the medical image study type includes one or more images, each of which could be several or hundreds of megabytes in size. To facilitate the exchange and storage of multiple large data items such as images, the HealthVault base thing type was extended to support entities known as streamed blobs. Streamed blobs (or simply blobs) are stored in HealthVault independently and associated with thing instances. For example, each image and preview image in a series would be stored as a separate blob and an MIS thing instance would store references to these blobs.

Prior to the introduction of streamed blobs, the base type allowed for unstructured data to be associated with an item in HealthVault, but only one such "inline blob" could be associated with an item and there was a restrictive limit on the size. The introduction of multiple streamed blobs necessitated a new version of the base thing type. The following XML fragments highlight the key differences between the old and new versions.

#### Thing (old version):

```xml
<thing>
  <thing-id />
  <type-id/>
  <data-xml>
    <!-- Contains XML that adheres to the schema for a
         specific data type, as indicated by type-id. -->
  </data-xml>
  <data-other>
    <!-- Contains unstructured string data, possibly encoded
         This is informally referred to as an "inline blob". -->
  </data-other>
  <Signature>
    <!-- Digital dignature of the Thing instance
         References http://www.w3.org/2000/09/xmldsig#namespace. -->
  </Signature>
</thing>
```
#### Thing (new version)

```xml
<thing>
  <thing-id />
  <type-id/>
  <data-xml>
    <!-- Contains XML that adheres to the schema for a
         specific data type, as indicated by type-id. -->
  </data-xml>
  <blob-payload>
    <!-- The blob payload contains references to one or more
         named blobs that were previously and independently
         streamed into HealthVault. -->
    <blob>
      <blob-info>
        <name/>
        <content-type/>
        <hash-info>
          <!-- Hash info for the blob used for digital signatures (optional). -->
        </hash-info>
      </blob-info>
      <content-length />
      <!-- Blob is either "inline" or streamed" -->
      <base64data>
        <!-- The base64 encoded bytes of an inline blob -->
      </base64data>
      <blob-ref-url>
        <!-- The URL referencing a streamed blob -->
      </blob-ref-url>
    </blob>
  </blob-payload>
  <signature-info>
    <sig-data>
      <hv-signature-method />
      <blob-signature-info>
        <!-- One item per blob -->
        <item>
          <blob-info>
            <!-- Matches the blob-info element for one of the blobs above. -->
          </blob-info>
        </item>
      </blob-signature-info>
    </sig-data>
    <Signature>
      <!-- Digital dignature of the Thing instance, including blobs.
           References the http://www.w3.org/2000/09/xmldsig#namespace. -->
    </Signature>
  </signature-info>
</thing>
```

The HealthVault SDK: streamed blobs and imaging data
----------------------------------------------------

The HealthVault SDK is a .NET client library that provides a standard set of interfaces for implementing HealthVault enabled applications using .NET. The SDK includes several classes for working with streamed blobs and, as with all other data types, wrapper classes for working with the medical imaging study data type. Streamed blobs were introduced to support the requirements of working with imaging data, but as is evident from the new version of the base thing type, streamed blobs can be used with any HealthVault data type.

The following sections describe key classes and methods in the HealthVault SDK for working with imaging data and streamed blobs. These sections assume the reader is familiar with the basics of developing HealthVault applications—in particular, application authorization and authentication and working with HealthVault records.

### Adding imaging data to a HealthVault record

Adding imaging data to a HealthVault record entails two steps. Images are first streamed as blobs to the HealthVault record. The blobs are then associated with a medical image study thing instance that is added to the record in the same way all thing instances are added. The following code sample illustrates how this is accomplished using the HealthVault SDK. This code assumes the application has been authenticated and has a [HealthRecordAccessor](https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordaccessor.aspx) instance referencing the desired HealthVault record as well as [System.IO](http://msdn2.microsoft.com/en-us/library/29kt2zfk) streams representing a DICOM file and a low resolution preview image. Note that streaming the images to HealthVault as blobs (refer to the method <span class="code">StreamBlobToRecord</span>) is independent of the medical image study data type.

```c#
private  void CreateMedicalImageSudyAndAddToRecord(HealthRecordAccessor record, string studyInstanceUID, Stream dicomStream, Stream previewStream)
{    
    // Image blob name based on SOP Instance UID.    
    String imageBlobName = studyInstanceUID;    
    
    // Preview blob name based on imaage blob name.    
    String previewBlobName = imageBlobName + "_preview";    

    // Create a MedicalImageStudySeriesImage.    
    // Multiple instances would be created if the series contains multiple images.    
    MedicalImageStudySeriesImage image = new MedicalImageStudySeriesImage();    
    image.ImageBlobName = imageBlobName;    
    image.ImagePreviewBlobName = previewBlobName;    

    // Add the image (or images) to a Collection.    
    Collection<MedicalImageStudySeriesImage> imageCollection = new Collection<MedicalImageStudySeriesImage>();    
    imageCollection.Add(image);    
    
    // Create a MedicalImageStudy and add the collection of images.    
    // Multiple instances would be created if the study contained multiple series.    
    MedicalImageStudySeries series = new MedicalImageStudySeries(        
        new HealthServiceDateTime(DateTime.Now),        // DICOM tags (0008,0022), (0008,0032)        
        imageCollection);    
    series.PreviewBlobName = previewBlobName;    // DICOM tag (0008,0060)    
    series.Modality = new CodableValue("X-Ray Angiography");    // DICOM tag (0008,103E)    
    series.Description = "Series Description";    
    // Add the series (singular or plural) to a Collection.    
    Collection<MedicalImageStudySeries> seriesCollection =        
        new Collection<MedicalImageStudySeries>();    
    seriesCollection.Add(series);    

    // Create a MedicalImageStudy and add the collection of series.    
    MedicalImageStudy study = new MedicalImageStudy(
        new HealthServiceDateTime(DateTime.Now),        // DICOM tags (0008,0020), (0008,0030)        
        seriesCollection);   
    study.PreviewBlobName = previewBlobName;    // DICOM tag (0010,0010)    
    study.PatientName = "John Doe";    // DICOM tag (0008, 1030)    
    study.Description = "Study Description";    
    
    // At this stage, all information is in either in memory on the client application    
    // or a locally accessible repository referenced by the Streams.    
    // No data has been added to the HealthVault record.    
    // The next step is to stream the image blobs and then add the study to the record.    
    // Stream the DICOM blob to HealthVault record    
    StreamBlobToRecord(        
        record,        
        study,        
        imageBlobName,        
        dicomStream,        
        "application/dicom");   
    
    // Stream the preview image blob to HealthVault record.    
    StreamBlobToRecord(        
        record,        
        study,        
        previewBlobName,        
        previewStream,        
        "image/jpeg");     
    // Add the study to the HealthVault record.    
    record.NewItem(study);
}

///<summary>Streams a blob to specified HealthVault record and associates blob
/// information with the specified thing.</summary>
///<remarks>Streaming is independent of any particular thing type.</remarks>
public static void StreamBlobToRecord(        
    HealthRecordAccessor record,       
    HealthRecordItem thing,        
    string blobName,        
    Stream sourceStream,        
    string contentType){    
    BlobStore blobStore = thing.GetBlobStore(record);    
    Blob blob = blobStore.NewBlob(blobName, contentType);    
    sourceStream.Position = 0;    
    using (BlobStream blobStream = blob.GetWriterStream())    
    {        
        byte[] buffer = newbyte[1024];        
        Int32 bytesRead;        
        while ((bytesRead = sourceStream.Read(buffer, 0, buffer.Length)) > 0)        
        {
            blobStream.Write(buffer, 0, bytesRead);
        }        
    
    blobStream.Flush();        
    blobStream.Close();    
    }
}
```

### Reading imaging data in a HealthVault record

Things of type medical image study are retrieved from a HealthVault record in the same manner as other thing types using the SDK. The [HealthRecordSearcher](https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordsearcher.aspx) class can be used to filter based on thing type or additional properties of the things, such as status, or based on an x-path query of the XML representing the thing in HealthVault.

When retrieving MIS things, the **BlobPayload** section should be specified as part of the filter to ensure that information about the blobs is returned. The blobs themselves will not be returned as part of the retrieval of the MIS things. Each blob is then accessed as needed through the [BlobStore](https://msdn.microsoft.com/en-us/library/microsoft.health.blobstore.aspx).

The following method illustrates how to retrieve a collection of MIS things from a HealthVault record. It includes an optional x-path query to retrieve a specific study based on study instance UID.

```c#
/// <summary> Retrieve all or a specific medical image study from a HealthVault 
/// record.</summary> 
HealthRecordItemCollection GetMedicalImageStudies(        
    HealthRecordAccessor record,        
    string studyInstanceUID)
{    
    HealthRecordSearcher searcher = record.CreateSearcher();    
    HealthRecordFilter filter =new HealthRecordFilter(MedicalImageStudy.TypeId);    
    filter.View.Sections =        
        HealthRecordItemSections.Xml |        
        HealthRecordItemSections.BlobPayload |        
        HealthRecordItemSections.Signature;   
    if (!String.IsNullOrEmpty(studyInstanceUID))    
    {        
        filter.XPath =            
            "/thing/data-xml/medical-image-study/study-instance-uid[.=\"" +        
        studyInstanceUID + "\"]";    
    }    
    
    searcher.Filters.Add(filter);    
    HealthRecordItemCollection result = searcher.GetMatchingItems()[0];    
    return result;
} 
```

The following illustrates how to retrieve and save a specific blob using the [BlobStore](https://msdn.microsoft.com/en-us/library/microsoft.health.blobstore.aspx).

```c#
MedicalImageStudy medicalImageStudy = (MedicalImageStudy)GetMedicalImageStudies(record, studyInstanceUID)[0]; 
BlobStore blobStore = medicalImageStudy.GetBlobStore(record); 
Blob blob = blobStore[medicalImageStudy.PreviewBlobName]; 
blob.SaveToFile(medicalImageStudy.PreviewBlobName + ".jpg");
```

Instead of downloading a blob directly, the blob URL can be passed to a client application for retrieval and rendering, even if the client application is not itself a HealthVault application. The application only needs to be able to make HTTP requests. For example, the blob URL can be used as the source in an HTML image tag and sent to a browser for rendering.

```c#
Blob blob = blobStore[medicalImageStudy.PreviewBlobName]; 
if (blob != null) 
{    
    string imageTag = String.Format("<img src=\"{0}\" />", blob.Url.OriginalString); 
}
```

For increased security and performance optimization, the blob URL is only valid for a limited period of time and should not be used as a static resource.

### Updating imaging data in a HealthVault record

The follow samples illustrate the various ways in which existing imaging data can be updated.

**Updating medical image study properties**

The properties of medical image study things are updated in the same manner as any other data types. A reference to the thing is obtained, changes are made and the thing is saved back to the HealthVault record. Updates to the properties of the contained series would be similar.

```c#
MedicalImageStudy medicalImageStudy = (MedicalImageStudy)GetMedicalImageStudies(record, studyInstanceUID)[0];
medicalImageStudy.Description = "Updated description";record.UpdateItem(medicalImageStudy);
```

**Adding additional series or blobs**

When a medical image study is first added to a record, it may not include all the underlying series. They may not have all been available at the same time or as an optimization the application may upload each series separately.

```c#
MedicalImageStudy medicalImageStudy = (MedicalImageStudy)GetMedicalImageStudies(record, studyInstanceUID)[0];

// New image streams (need to be initialized).
Stream dicomStream;Stream previewStream;

// New image blob names.
string imageBlobName = "additional_image";
string previewBlobName = imageBlobName + "_preview";

// Create a new series and add to the study.
MedicalImageStudySeries series =    CreateMockMedicalImageStudySeries(previewBlobName, imageBlobName);
medicalImageStudy.Series.Add(series);

// Stream new DICOM 
blob.StreamBlobToRecord(
    record,    
    medicalImageStudy,    
    imageBlobName,    
    dicomStream,    
    "application/dicom");
    
// Stream new preview 
blob.StreamBlobToRecord(    
    record,    
    medicalImageStudy,    
    previewBlobName,    
    previewStream,    
    "image/jpeg");

// Commit changes.
record.UpdateItem(medicalImageStudy);
```

**Removing a series or blob**

The following sample illustrates removing a series and blob from a study (removing images is similar). When removing a blob, references to the blob in the study should be removed as well.

```c#
MedicalImageStudy medicalImageStudy =     
    (MedicalImageStudy)GetMedicalImageStudies(record, studyInstanceUID)[0];
    
    // Remove the preview blob.
    BlobStore blobStore = medicalImageStudy.GetBlobStore(record);
    blobStore.Remove(medicalImageStudy.PreviewBlobName);
    
    // Remove reference to preview blob.medicalImageStudy.
    PreviewBlobName = String.Empty;
    
    // Series index for the series to remove (needs to be initialized).
    int seriesIndex;
    medicalImageStudy.Series.RemoveAt(seriesIndex);
    
    // Commit changes to HealthVault.
    record.UpdateItem(medicalImageStudy);
```

**Updating a blob**

A blob can be replaced by streaming a new blob with the same name. The following sample replaces the study preview blob. Note that the existing blob is not overwritten. Instead, a new blob is written and associated with the medical image study using the same blob name. The old blob is later removed by the system.

```c#
MedicalImageStudy medicalImageStudy =    (MedicalImageStudy)GetMedicalImageStudies(record, studyInstanceUID)[0];
BlobStore blobStore = medicalImageStudy.GetBlobStore(record);blobStore.Clear();
// New image Stream (need to be initialized).
Stream previewStream;

// Blob name is same as existing current study preview blob.
string previewBlobName = medicalImageStudy.PreviewBlobName;

// Stream the new blob to HealthVault. The original blob is unchanged.
StreamBlobToRecord(    
    record,   
    medicalImageStudy.PreviewBlobName,    
    previewBlobName,    
    previewStream,    
    "image/jpeg");
    
    // Commit changes so that study now references the new blob.
    record.UpdateItem(medicalImageStudy);
```

### Deleting imaging data from a HealthVault record

A medical image study instance is deleted from a HealthVault record the same as all other data types. It is not necessary to also remove the blobs. Currently, deleted items and blobs remain in the HealthVault system but are not visible to users or accessible by applications. A future release of HealthVault will enable recovery and permanent deletion of items.

```c#
MedicalImageStudy medicalImageStudy =     
    (MedicalImageStudy)GetMedicalImageStudies(record, studyInstanceUID)[0];
    record.RemoveItem(medicalImageStudy);
```

The HealthVault platform API: streamed blobs and imaging data
-------------------------------------------------------------

The HealthVault platform API is based on HTTP and as such does not support continuous streaming—there is a limit on the size of any one HTTP request. The platform API defines methods and data structures for uploading large blobs using multiple correlated HTTP request payloads called chunks. When a blob is streamed via the HealthVault SDK, the SDK manages the details of breaking the blob into smaller chunks and sending the individual chunks to HealthVault where they are reconstituted into the original blob for storage.

The following is a high level description of how to use the platform API directly when working with blobs. It assumes the reader is familiar with the basics of working directly with the HealthVault API—in particular, the request and response formats, including header and authenticated session information.

### BeginPutBlob

This **BeginPutBlob** request will initialize storage for a blob and return a URL with an embedded security token. This URL is the target for subsequent requests containing the actual chunks of data. The response also includes information about the maximum blob size and the size of the chunks to use.

The request only requires the header information to be sent.

```xml
<wc-request:request xmlns:wc-request="urn:com.microsoft.wc.request">  
    <auth>    
        <!-- wc-types:HashFinalized (required)-->  
    </auth>  
    <header>    
        <method>BeginPutBlob</method>    
        <method-version>1</method-version>    
        <record-id>      
            <!-- wc-types:guid (required) -->    
        </record-id>    
        <auth-session>      
            <!-- wc-types:AuthenticatedSessionInfo (required)-->    
        </auth-session>      
        <!-- additional header field omitted -->  
    </header>  
    <info />
</wc-request:request>
```
Response

```xml
<response>
  <status>
    <code>0</code>
  </status>
  <wc:info xmlns:wc="urn:com.microsoft.wc.methods.response.BeginPutBlob">
    <blob-ref-url>
      <!-- The URL and embedded authentication token to be used when sending chunks. Example:           https://www.healthvault-ppe.com/streaming/wildcatblob.ashx?blob-ref-token={token} -->
    </blob-ref-url>
    <blob-chunk-size>
      <!-- The chunk size in bytes to send. -->
    </blob-chunk-size>
    <max-blob-size>
      <!-- The maximum size in bytes that the blob can grow to. -->
    </max-blob-size>
    <blob-hash-algorithm>SHA256Block</blob-hash-algorithm>
    <blob-hash-parameters>
      <block-size>
        <!-- hash block size; will match chunk size -->
      </block-size>
    </blob-hash-parameters>
  </wc:info>
</response>
```

### Streaming blobs to HealthVault

The methods for sending and retrieving blobs to and from HealthVault do not use the same XML request/response format as the other platform methods. Instead, standard HTTP POST and GET requests are used.

**Sending blobs**

Blobs are sent to HealthVault as a series of one or more chunks POSTED to the blob URL returned by **BeginPutBlob**. The chunk size to use is also returned by **BeginPutBlob**. HTTP headers are used to indicate the byte range of each chunk and to indicate when the last chunk has been sent.

```
POST [blob_ref_url] HTTP/1.1User-Agent: [application name]Content-Range: bytes [x]-[x + chunk-size – 1]/[total bytes][chunk bytes]
```
The end of blob header may be included in the final chunk POST or as a separate POST with an empty body.

```
POST [blob_ref_url] HTTP/1.1User-Agent: [application name]x-hv-blob-complete: 1
```

For example, to send a 600 byte blob using a chunk size of 256, three POSTs would be used (note that the chunk size is determined by the platform—256 is used for illustration only).

```
POST [blob_ref_url] HTTP/1.1User-Agent: Contoso ImagingContent-Range: bytes 0-255/600[chunk bytes]POST [blob_ref_url] HTTP/1.1User-Agent: Contoso Imaging Content-Range: bytes 256-511/600[chunk bytes]POST [blob_ref_url] HTTP/1.1User-Agent: Contoso ImagingContent-Range: bytes 512-600/600x-hv-blob-complete: 1[chunk bytes]
```

### PutThings

The **PutThings** request (V2) is used to put things into HealthVault records. When the item includes streamed blobs, the blob URLs are included in the thing XML per the schema for thing2.

The following is a request to put a thing of type medical image study (refer to the schema for MIS and for thing2 for details on the omitted elements).

```xml
<wc-request:request xmlns:wc-request="urn:com.microsoft.wc.request">
  <auth>
    <!-- wc-types:HashFinalized (required)-->
  </auth>
  <header>
    <method>PutThings</method>
    <method-version>2</method-version>
    <record-id>
      <!-- wc-types:guid (required) -->    
    </record-id>
    <auth-session>
      <!-- wc-types:AuthenticatedSessionInfo (required)-->
    </auth-session>
    <!-- additional header field omitted -->
  </header>
  <info>
    <thing>
      <type-id>c75651c8-548e-449f-8942-9e6379b0b88a</type-id>
      <thing-state>Active</thing-state>
      <data-xml>
        <medical-image-study>
          <!-- refer to the schema for Medical Image Study -->
        </medical-image-study>
        <common />      
      </data-xml>
      <blob-payload>        
        <!-- refer to the schema for thing2-->      
      </blob-payload>    
    </thing>  
  </info>
  </wc-request:request>
``` 
```xml
<response>  
  <status>    
    <code>0</code>  
  </status> 
  <wc:info xmlns:wc="urn:com.microsoft.wc.methods.response.PutThings">
    <thing-id version-stamp="[wc-types:guid]">      
      <!-- wc-types:guid -->    
    </thing-id>  
  </wc:info>
</response>
```
### Streaming blobs from HealthVault

The **GetThings** request (V3) is used to return things from a HealthVault record. If the thing includes streamed blobs, the returned XML (adhering to the thing2 schema) will include the URLs for each blob. The blobs can then be retrieved by making an HTTP GET request to these URLs.

```xml
<wc-request:request xmlns:wc-request="urn:com.microsoft.wc.request">
  <auth>
    <!-- wc-types:HashFinalized (required)-->
  </auth>
  <header>
    <method>GetThings</method>
    <method-version>3</method-version>
    <record-id>      
      <!-- wc-types:guid (required) -->
    </record-id>
    <auth-session>
      <!-- wc-types:AuthenticatedSessionInfo (required)-->
    </auth-session>
    <!-- additional header field omitted -->
  </header>
  <info>
    <group>
      <filter>
        <!-- active things of type Medical Image Study -->
        <type-id>c75651c8-548e-449f-8942-9e6379b0b88a</type-id>
        <thing-state>Active</thing-state>
      </filter>
      <format>
        <section>core</section>
        <section>blobpayload</section>
        <section>digitalsignatures</section>
        <xml />
      </format>
    </group>
  </info>
</wc-request:request>
```

For each thing returned, the blobs-payload will include URLs for any streamed blobs associated with the thing.

```xml
<response>
  <status>
    <code>0</code>
  </status>
  <wc:info xmlns:wc="urn:com.microsoft.wc.methods.response.GetThings3">
    <group>
      <!-- zero, one or more things will be returned -->
      <thing>
        <thing-id version-stamp="[wc-types:guid]">
          <!-- wc-types:guid -->
        </thing-id>
        <type-id name="Medical Image Study">c75651c8-548e-449f-8942-9e6379b0b88a</type-id>
        <thing-state>Active</thing-state>
        <eff-date>
          <!-- wc-types:date-time -->
        </eff-date>
        <data-xml>
          <medical-image-study>
            <!-- refer to the schema for Medical Image Study -->
          </medical-image-study>
          <common />
        </data-xml>
        <blob-payload>
          <!-- refer to the schema for thing2-->
        </blob-payload>
      </thing>
    </group>
  </wc:info>
</response>
```
**HTTP GET to retrieve a blob**

For each blob, an HTTP GET request is made to the associated URL returned by **GetThings**. The content range header can optionally be used to specify the byte range returned. For example, this would enable an application to download and access the header of a DICOM file without downloading the entire file. If the content-range header is not specified, then the entire blob will be returned in the response.

```
GET [blob_ref_url] HTTP/1.1User-Agent: Contoso ImagingContent-Range: bytes 0-255
```

Drop-off and pick-up (DOPU) and streamed blobs
----------------------------------------------

The drop-off and pick-up (DOPU) functionality allows an application or system to securely add information to a user's HealthVault record on a one-time basis without the need for explicit application authorization against the record. The application puts the information into an encrypted electronic package and sends this to HealthVault, but unassociated with a user record. The user is then given a package ID and a secret passphrase necessary for retrieving and unencrypting the package. After reviewing the contents of the package, the user then decides whether or not to add the information to their account.

To support imaging data (and other large data items) the DOPU functionality includes support for streamed blobs. The following sample code illustrates using DOPU with streamed blobs and medical imaging data. Note the similarity to directly adding information to a record—blobs are streamed independently and then referenced by the DOPU package.

```c#
// Study is created in same manner as before. 
// Initialization code omitted. MedicalImageStudy study;
// Add study to a List that will be added to the package.
List<HealthRecordItem> packageContent = new List<HealthRecordItem>();
packageContent.Add(study);

// Offline connection required to create a package.
OfflineWebApplicationConnection connection =new OfflineWebApplicationConnection(Guid.Empty);connection.Authenticate();

// Package information.
ConnectPackageCreationParameters connectPackageCreationParameters =new ConnectPackageCreationParameters(    
    connection,    
    friendlyName,          // Friendly name for the package    
    securityQuestion,      // Question that will be shown to user upon pickup    
    securityAnswer,        // Answer user must provide    
    applicationPatientId); // ID of the patient in sourece system (Optional)
    
// Stream the DICOM blob to package.
ImagingHelper.StreamBlobToConnectPackage(    
    connectPackageCreationParameters,    
    study,    
    dicomBlobName,    
    dicomStream,    
    "application/dicom");
// Stream the preview blob to package.
ImagingHelper.StreamBlobToConnectPackage(    
    connectPackageCreationParameters,    
    study,    
    previewBlobName,    
    previewStream,    
    "image/jpeg");

// Commit package to HealthVault.
// Package ID is provided to patient.
packageID = ConnectPackage.Create(    
    connectPackageCreationParameters,    
    packageContent);

///<summary>Streams a blob to a HealthVault Connect Package and associates blob
/// information with the specified thing.</summary>
///<remarks>Streaming is independent of any particular thing type.</remarks>
public static void StreamBlobToConnectPackage(
    ConnectPackageCreationParameters connectPackageCreationParameters,        
    HealthRecordItem thing,        
    String blobName,        
    Stream previewStream,        
    String contentType)
{    
    BlobStore blobStore = thing.GetBlobStore(connectPackageCreationParameters);    
    Blob blob = blobStore.NewBlob(blobName, contentType);    
    previewStream.Position = 0;   
    using (BlobStream blobStream = blob.GetWriterStream())   
    {        
        byte[] buffer = newbyte[1024];        
        Int32 bytesRead;        
        while ((bytesRead = previewStream.Read(buffer, 0, buffer.Length)) > 0)        
        {            
            blobStream.Write(buffer, 0, bytesRead);        
        }        
        blobStream.Flush();        
        blobStream.Close();    
    }
}
```

Digital signatures and medical imaging data
-------------------------------------------

Digital signatures help ensure the integrity and authenticity of information in HealthVault. The signing process involves computing a digest of the data XML, encrypting the digest with a private key (thus creating the signature) and then transmitting the signature to HealthVault along with the data being signed. HealthVault supports a subset of the [W3C Recommendation for XML signatures](http://go.microsoft.com/?linkid=9819142) and uses standard algorithms for hashing and encryption and for the signature envelope.

All HealthVault data types can be signed, including items with streamed blobs. When an item includes streamed blobs, the digest is computed using the data XML as well as a digest of the blob. This "blob hash" is computed by hashing each chunk and then hashing the concatenation of the individual chunk hashes. The blob hash is combined with the data XML and a final digest of the data is computed.

### The HealthVault SDK and digital signatures

The HealthVault SDK manages the details of computing the chunk and blob hashes, as well as the final digest of the data to be signed. Signing data, including data with streamed blobs, with the HealthVault SDK is accomplished in a few lines of code.

```c#
// Reference to HealthVault record is obtained. 
// Initialization code omitted. 
HealthRecordAccessor record;

// Study is created in same manner as above.
// Initialization code omitted.
MedicalImageStudy study;

// Stream blob(s) to the HealthVault record, associated with the study.
StreamBlobToRecord(record, study, ...);

// Instantiate certificate for signing.
// Can be from file system or Windows certificate store.
X509Certificate2 certificate = new X509Certificate2(upDigSigCert.FileBytes);

// Sign the study.
// The SDK computes the blob hash and includes in final signature.
study.Sign(certificate);

// Commit the study to the HealthVault record.
record.NewItem(study);
```

### The HealthVault platform API and digital signatures

Digital signatures can also be used when developing a HealthVault enabled application using the Platform API directly. Computation of the blob hash and final data digest require using a programming language that supports standard hashing and encryption algorithms.

Viewing medical image studies in HealthVault
--------------------------------------------

The HealthVault web UI displays information about medical image study instances in a HealthVault record. It does not currently have the ability to render DICOM images, but it will display preview images that are in a format recognized by browsers (e.g. JPEG, PNG).

HealthVault imaging sample application
--------------------------------------

This sample uses the HealthVault .NET SDK to illustrate working with the medical image study (MIS) data type and the HealthVault streaming interface.

The application can be used to upload imaging studies into a HealthVault record and to list all studies associated with the record. It also includes the ability to create a DOPU package containing medical image studies.

[Medical Image Sample Application on CodePlex](http://healthvaultimaging.codeplex.com/)

The HealthVault imaging sample application demonstrates using the .NET SDK to implement streaming and the new medical imaging study data type. The sample is configured to use the HealthVault PPE environment ([https://account.healthvault-ppe.com](https://account.healthvault-ppe.com/)).

1.  Download and install the [HealthVault .NET SDK](https://www.microsoft.com/downloads/details.aspx?familyid=95E14343-FB98-4549-BD29-225A59423CC9 "Optional alternate text").

2.  Download the [HealthVault imaging sample](http://go.microsoft.com/?linkid=9819143) from CodePlex. The sample is distributed as compressed file and can be extracted to any location.

The sample includes a Read Me file with more information on configuring and running the sample.
