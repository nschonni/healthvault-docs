---
title: Thing type schema
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn about how HealthVault's thing types are defined
---

Thing Type Schema
=================

All health data in a person's HealthVault record is represented by a <span class="parameter">thing</span>. A thing is an XML fragment that contains metadata, data specific to the type of the thing, and possibly one or more associated binary blobs.

The thing types are defined by HealthVault as an XML schema represented as one or more XSDs. For example, the blood pressure type consists of diastolic, systolic, and pulse measurements represented by an XML schema.

Example thing XML
-----------------

The following blood pressure thing XML is used as an example in the other sections in this article.

```xml
<thing>
  <thing-id version-stamp="4d5fb486-0459-45a4-ba97-8b4c75c30f3f">31713110-026c-4d24-8549-cec9effe9b0d</thing-id>
  <type-id>ca3c57f4-f4c1-4e15-be67-0a3caf5414ed</type-id>
  <eff-date>2008-12-10 03:47:35.550</eff-date>
  <created>
    <timestamp>2008-12-2 10:31:16.345</timestamp>
    <app-id>4d5fb486-0459-45a4-ba97-8b4c75c30f3f</app-id>
    <person-id>b6f890a1-8755-4c87-98ce-3e8678bd4bae</person-id>
  </created>
  <updated>
    <timestamp>2008-12-10 03:47:35.550</timestamp>
    <app-id>4d5fb486-0459-45a4-ba97-8b4c75c30f3f</app-id>
    <person-id>b6f890a1-8755-4c87-98ce-3e8678bd4bae</person-id>
  </updated>
  <data-xml>
    <blood-pressure>
      <when>
        <date>
          <y>2006</y>
          <m>12</m>
          <d>22</d>
        </date>
      </when>
      <systolic>123</systolic>
      <diastolic>68</diastolic>
    </blood-pressure>
    <common>
      <source>MicroLife BP</source>
      <note>Reading was taken while seated</note>
      <client-thing-id>19823452</client-thing-id>
    </common>
  </data-xml>
</thing>
```

Thing identifiers
-----------------

Each thing instance is identified using two GUIDs and an optional string identifier. The set of these three identifiers is referred to as the <span class="parameter">thing key</span>.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Identifier</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>thing-id</strong> element</p></td>

<td><p>A GUID that identifies all versions of the thing instance. It is provisioned by HealthVault at the time the thing instance is created by a <strong>PutThings</strong> request. For more information about the <strong>PutThings</strong> request, see <a href="/healthvault/concepts/xml-api/writing-data" id="PageContent_14093_2">writing data</a>.</p>

<p>The thing ID can be used when querying for specific thing instances or when updating the thing.</p></td>
</tr>
<tr class="even">
<td><p><strong>version-stamp</strong> attribute</p></td>
<td><p>A GUID that identifies a specific version of the thing. If an update operation is performed on the thing, a new version of the thing will be created with the same <strong>thing-id</strong> value and a new <strong>version-stamp</strong> value. The previous versions of the thing are kept, which allows record custodians to audit changes of the thing.</p></td>
</tr>
<tr class="odd">
<td><p><strong>client-thing-id</strong> element</p></td>
<td><p>An optional, application-defined identifier for the thing instance. It can be used to relate the thing to data in the application's own data store, or to predefine an identifier for the thing before it is created, to simplify relating things together.</p>
<p>There can be only one <strong>client-thing-id</strong> element per thing instance. When updating a thing, an application that is not the application that created the thing should not change the <strong>client-thing-id</strong> value.</p></td>
</tr>
</tbody>
</table>

Type identifiers
----------------

Each thing contains a specific type of information. The value of the **type-id** is a GUID that uniquely identifies the type of the thing instance. For a list of the thing types and their type IDs currently defined in Microsoft HealthVault, see the [Thing types and sample data browser](http://go.microsoft.com/?linkid=9810880), or use the **GetThingType** platform method.

Thing state
-----------

A thing may be in one of two states: <span class="literalValue">Active</span> or <span class="literalValue">Deleted</span>. Applications that get data from HealthVault see only active things, but record custodians may view deleted things in the HealthVault Shell.

Flags
-----

The **flags** element contains a bit field. The bits represent characteristics of the thing. Applications can read all flags. Applications can set the **ReadOnly** flag, and the other flags can be set by the record custodian through the HealthVault Shell or automatically applied by HealthVault.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Flag</p></th>
<th><p>Bit Value</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Personal</p></td>
<td><p>0x1</p></td>
<td><p>Indicates that the record custodian deemed the thing to be personal in nature. Personal things are not shared with applications. Only the HealthVault Shell can access a things that has this flag set.</p></td>
</tr>
<tr class="even">
<td><p>Downversioned</p></td>
<td><p>0x2</p></td>
<td><p>When a type has been versioned, and the requesting application supports only an older version, HealthVault automatically transforms the data to the version supported by the application before returning it. When this happens the <span class="parameter">down-versioned</span> flag is set, to let the application know that some alteration to the data occurred and that the application might not be able to update the instance. For more information, see <a href="thing-type-versioning.md" id="PageContent_14093_3">Thing Type Versioning</a>.</p></td>
</tr>
<tr class="odd">
<td><p>Upversioned</p></td>
<td><p>0x4</p></td>
<td><p>When a type has been versioned and the requesting application supports only the newer version, HealthVault automatically transforms the data to the version supported by the application before returning it. When this happens, the <span class="parameter">up-versioned</span> flag is set, to let the application know that some alteration to the data occurred and that the application might not be able to update the instance. <span style="TEXT-ALIGN: center">For more information, see </span><a href="thing-type-versioning.md" id="PageContent_14093_4">Thing Type Versioning</a><span style="TEXT-ALIGN: center">.</span></p></td>
</tr>
<tr class="even">
<td><p>HiddenFromEPrep</p></td>
<td><p>0x8</p></td>
<td><p>Indicates that the thing is excluded from the user's emergency profile.</p></td>
</tr>
<tr class="odd">
<td><p>ReadOnly</p></td>
<td><p>0x10</p></td>
<td><p>Indicates that the thing instance is read-only.</p></td>
</tr>
</tbody>
</table>

Effective date
--------------

The effective date of the thing is the date that best represents when the data measurement or activity happened. For example, if a blood pressure reading occurs at 9am on May 7th, 2012, and is uploaded to HealthVault at 2pm on May 8th, then the effective date would be 9am, May 7th, 2012, and the created date would be 2pm, May 8th, 2012.

HealthVault sets the effective date when the thing is created or updated. Thing types may define an XPath to an element in the type-specific schema that represents this date, or HealthVault uses the created date, if no XPath is defined for the type.

Updated end date
----------------

The updated end date of the thing represents the date at which the thing is no longer considered active. This field is intended to be set by users. Applications should consider things with an updated end date in the past to be inactive.

Audits
------

Two types of audit information are available to applications: information about the creation of the thing and information about the last update.

The following table describes the elements that contain information about the creation of a health record item.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Element</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>timestamp</p></td>
<td><p>The time the thing instance was created.</p></td>
</tr>
<tr class="even">
<td><p>app-id</p></td>
<td><p>The unique identifier of the application that created the thing instance. In the case of a master-child or SODA application, this is the unique child application identifier.</p>
<p>This element contains an attribute for the name of the application.</p></td>
</tr>
<tr class="odd">
<td><p>person-id</p></td>
<td><p>The unique identifier of the person (account) that created the thing instance.</p></td>
</tr>
<tr class="even">
<td><p>impersonator-id</p></td>
<td><p>Currently, the same as the <strong>person-id</strong>.</p></td>
</tr>
<tr class="odd">
<td><p>access-avenue</p></td>
<td><p>Indicates whether the thing was created online (the person was logged in) or offline (the application performed the operation on behalf of a person that was not logged in).</p></td>
</tr>
<tr class="even">
<td><p>audit-action</p></td>
<td><p>Should be <span class="literalValue">Created</span> to indicate that the audit was for a creation event.</p></td>
</tr>
<tr class="odd">
<td><p>master-app-id</p></td>
<td><p>For master-child or SODA applications, the unique identifier of the master application that created the thing instance. For other applications this should match the value of the <strong>app-id</strong>.</p>
<p>This element contains an attribute for the name of the application.</p></td>
</tr>
</tbody>
</table>

The following table describes the elements that contain information about an update to a health record item.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Element</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>timestamp</p></td>
<td><p>The time the thing instance was updated.</p></td>
</tr>
<tr class="even">
<td><p>app-id</p></td>
<td><p>The unique identifier of the application that updated the thing instance. In the case of a master-child or SODA application, this is the unique child application identifier.</p>
<p>This element contains an attribute for the name of the application.</p></td>
</tr>
<tr class="odd">
<td><p>person-id</p></td>
<td><p>The unique identifier of the person (account) that updated the thing instance.</p></td>
</tr>
<tr class="even">
<td><p>impersonator-id</p></td>
<td><p>Currently, the same as the <strong>person-id</strong>.</p></td>
</tr>
<tr class="odd">
<td><p>access-avenue</p></td>
<td><p>Indicates whether the thing was updated online (the person was logged in) or offline (the application performed the operation on behalf of a person that was not logged in).</p></td>
</tr>
<tr class="even">
<td><p>audit-action</p></td>
<td><p>Should be <span class="literalValue">Updated</span> to indicate that the audit was for an update event.</p></td>
</tr>
<tr class="odd">
<td><p>master-app-id</p></td>
<td><p>For master-child or SODA applications, the unique identifier of the master application that updated the thing instance. For other applications this should match the value of the <strong>app-id</strong>.</p>
<p>This element contains an attribute for the name of the application.</p></td>
</tr>
</tbody>
</table>

Data XML
--------

The **data-xml** element contains the personal health information (PHI) for the thing and consists of two parts: the type-specific XML and the common section.

### Type-specific XML

The first element under the **data-xml** element is the type-specific data representing the thing type. This XML must adhere to the schema defined by the XSD for the thing type. It has a single root element, normally similar in name to the type name. For example, **blood-pressure** for the blood pressure type and **allergy** for the allergy type.

For more information about thing type schemas, see [Thing types and sample data browser](http://go.microsoft.com/?linkid=9810880)

### Common

The **common** element is the next sibling of the type-specific XML. The common section consists of elements that applications can use to extend the information stored with the thing.

#### Source

This is a free-text field used to specify how the data was captured. This could be the model of device used, the name of an institution or entity, and so on.

#### Note

This is a free-text field that allows the application to add annotations to the type-specific thing data.

#### Tags

This field allows a user or application to categorize and add other metadata to things. Tags could be used to indicate that a set of things are part of a common incident. For example, medications, medical images, and lab results related to a car accident could be grouped together using a tag.

Applications should parse and store the tags as comma-separated values. Apps should not use tags as a mechanism to store health information. Instead, apps should use thing extensions for this purpose.

#### Extension

This is a free-form XML section. If the thing type that most closely matches your needs is missing a data field that you require, you can add that data in the extension.

For example, the HealthVault blood pressure type contains systolic, diastolic, and pulse fields but it does not contain a field to indicate whether the person was sitting, lying down, or standing. An extension could be created to hold this data. Wherever possible an application should use HealthVault-defined subtypes such as codable-value, general-measurement, date-time, and so on. For more information about subtypes, see <a href="common-data-types.md" id="PageContent_14093_5">common thing data</a>.

Multiple extensions can be provided for each instance, and extensions are available to all applications that have access to the instance. Each extension is identified by a source field and optionally a version as well. The source should be a URI that uniquely identifies the extension, similar to how .xsd files uniquely identify XML schemas using URIs.

#### Related Thing

The **RelatedThing** element is a collection of elements that allows applications to make a link between one thing instance and another. For example, when HealthVault reconciles a continuity of care record (CCR) document into its constituent HealthVault thing types, it relates all the new instances back to the CCR document instance.

Things can be related to each other by the **thing-id**, **version-stamp**, or **client-thing-id** identifier. The **relationship-type** is an optional child element, which contains free-text that describes why the relationship is important. For example, a medical annotation that is related to a procedure may have a relationship type of <span class="input">annotation</span>. This allows applications to look for certain types of relationships when searching a record.

Related things are loosely coupled. HealthVault does not maintain the referential integrity of the relationship. This means that there may be relationships to deleted things or things that were never created.

Blobs
-----

Binary data (blobs) may be attached to a thing type. Blobs should be used and interpreted within the context of each thing type. For example, with the file thing type, the file's structured XML contains metadata about the file contents, and the file contents are contained in a blob attached to the file thing.

The **blob-payload** element can contain one or more blobs. Each blob has a unique name within the thing with which it is associated. In addition to named blobs, a thing may have a <span class="parameter">default</span> blob, which is the blob with no name. For the file thing type, the file’s contents are stored as the default blob.

Immediately following the **data-xml** section is the **blob-payload** section:

```xml
<blob-payload>
  <blob>
    <blob-info>
      <name>MyBlob</name>
      <content-type>application/octet-stream</content-type>
    </blob-info>
    …  </blob>
</blob-payload>
```

Blobs that are uploaded or downloaded entirely within the thing XML are considered inline blobs. Alternatively, blobs can be uploaded or downloaded using the HealthVault streaming mechanism.

### Inline blobs

Inline blobs have their entire binary content base64-encoded within the thing data. Inbound requests to HealthVault have a maximum size, and the total bytes of the request, including the base64-encoded data, cannot exceed this maximum size. The current maximum allowed request size can be obtained through the public configuration item **maxRequestUncompressedSizeBytes**. Public configuration items are available in the Service definition details section of the [Method browser](http://go.microsoft.com/?linkid=9810881).

```xml
<blob-payload>
  <blob>
    <blob-info>
      <name>MyBlob</name>
      <content-type>application/octet-stream</content-type>
    </blob-info>
    <base64data>CgoKCgoKCgoKCg==</base64data>
  </blob>
</blob-payload>
```

When accessing HealthVault data, if you want to access a small blob, you can obtain an inline blob directly from the **GetThings** response. Using an inline blob can avoid an extra request to download the blob through the HealthVault streaming service. An example is obtaining the record's personal image, which is a small format image.

### Streamed blobs

Streamed blobs are uploaded independent of the thing in the **PutThings** request. Streamed blob size is restricted only by the total record size. The record size can be inspected by the record's **max-size-bytes** attribute that is returned from any method that returns a record structure, such as the **GetPersonInfo**, **GetAuthorizedRecords**, and **GetUpdatedRecordsForApplication** requests.

Blobs are written to a URL obtained from the **BeginPutBlob** request. The same URL serves as a blob reference in the blob-payload section during a **PutThings** request. When retrieving things from **GetThings** response, the blob reference is a URL from which you can download the blob.

-   The blob URL associated with a **GetThings** request expires after a number of minutes. If the URL expires for a blob that you have not yet retrieved, use a new **GetThings** request to get fresh URIs for the blobs to retrieve. The **BlobStreamTokenTtlMs** configuration item provides the timeout interval in milliseconds.

-   The blob URL associated with a **PutThings** request expires after a significantly longer time. If the blob is not committed within the timeout period, you will need to initiate a new **BeginPutBlob** request. If the write token times out, you must stream the entire blob again from the beginning, in addition to initiating a new **BeginPutBlob** request. The **blobStreamWriteTokenTtlMs** configuration item provides the timeout interval in milliseconds.

-   For the current values of configuration items, see the Service definition details in the [Method browser](http://go.microsoft.com/?linkid=9810881), or query the service definition directly.

```xml
<blob-payload>
  <blob>
    <blob-info>
      <name>MyBlob</name>
      <content-type>application/octet-stream</content-type>
    </blob-info>
    <blob-ref-url>https://platform.healthvault.com/streaming/wildcatblob.ashx?blob-ref-token=ASAAANQgT2YQJwRHpC...</blob-ref-url>
  </blob>
</blob-payload>
```

Digital signatures
------------------

HealthVault provides message and signer authentication for thing data in the request and response envelopes. Digital signatures provide a public-key infrastructure (PKI) mechanism to sign data allowing applications to utilize another verification mechanism. Using standard [XML Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/) (<http://www.w3.org/TR/xmldsig-core/>), the signature authenticates the data as of the last **PutThings** request. If any of the signed data has been tampered with, the signature verification fails.

<span style="TEXT-ALIGN: center">HealthVault provides an external authentication mechanism. When receiving data, decide whether you trust the certificate that was used to sign the thing data.</span>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Note</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><br />
</p></td>
</tr>
</tbody>
</table>

The digital signature applies to the data-xml element and to all blobs attached to the thing—streamed and inline.

```xml
<signature-info>
   <sig-data>
      <hv-signature-method>HVSignatureMethod2</hv-signature-method>
       <blob-signature-info>
          <item>
             <blob-info>
                <name>A</name>
                 <content-type>application/octet-stream</content-type>
                  <hash-info>
                    <algorithm>SHA256Block</algorithm>
                    <params>
                      <block-size>2097152</block-size>
                    </params>
                    <hash>7iY6hyYpcAM1cs23dxsUT0Dhvm9f3GUKWarxhdMGXAc=</hash>
                  </hash-info>
                </blob-info>
            </item>
        </blob-signature-info>
        <algorithm-tag>rsa-sha1</algorithm-tag>
      </sig-data>
      <Signature xmlns="http://www.w3.org/2000/09/xmldsig#">
        <SignedInfo>
            <CanonicalizationMethod Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315" />
             <SignatureMethod Algorithm="http://www.w3.org/2000/09/xmldsig#rsa-sha1" />
              <Reference URI="">
                 <Transforms>
                    <Transform Algorithm="http://www.w3.org/TR/1999/REC-xslt-19991116">
                       <xs:stylesheet xmlns:xs="http://www.w3.org/1999/XSL/Transform" version="1.0">
                         <xs:template match="thing">
                           <hv:signed-thing-data xmlns:hv="urn:com.microsoft.wc.thing.signing.2.xsl">
                             <xs:copy-of select="data-xml" />
                             <xs:copy-of select="signature-info/sig-data" />
                           </hv:signed-thing-data>
                         </xs:template>
                       </xs:stylesheet>
                    </Transform>
                    <Transform Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315" />
                  </Transforms>
                  <DigestMethod Algorithm="http://www.w3.org/2000/09/xmldsig#sha1" />
                  <DigestValue>ssSRETq36vU7ZDCHw92HyK9BckI=</DigestValue>
              </Reference>
         </SignedInfo>
        <SignatureValue>BPgZoIu7l3G4r...</SignatureValue>
          <KeyInfo>
            <X509Data>
              <X509Certificate>MIIEyDCCA7CgAwIBA...</X509Certificate>
            </X509Data>
          </KeyInfo>
      </Signature>
</signature-info>
```

### Signed blobs

Blobs can be very large and time consuming to verify. To overcome this, HealthVault signs a hash of each blob. Each blob can then be verified by ensuring the blob's hash matches the one in the **blob-signature-info** element. HealthVault uses names to uniquely identify blobs.

HealthVault uses the standard SHA256 hashing algorithm to create the blob hashes. Because blobs can be very large, the blob is broken into blocks, each of which is hashed independently. The block-size element denotes the size of each block. HealthVault expects the 2MB value. A 5MB blob would then have 3 hashes in a list: one for the 0-2MB byte range, one for the 2-4MB byte range, and one for the 4-5MB range.

### Verification

During the **PutThings** call, HealthVault will validate any signatures, including obtaining any blobs and validating their hashes. Because HealthVault validates the signatures, it needs to be able to verify the public key in the signature. Currently, HealthVault accepts signatures from the following root Certificate Authorities (CA):
-   Comodo
-   Entrust
-   Geotrust
-   Verisign
