---
title: Read only data
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn about how HealthVault deals with read only data
---

Read-only data
==============

The HealthVault data model allows applications to create data that is read-only. Read-only things cannot be edited by users or applications. Data can be deleted, provided the user or application has the necessary permissions. Read-only data is appropriate for use by any application adding data to a HealthVault record that should never be edited, for example, clinical applications that store clinical test results and measurements.

This article provides an overview of the HealthVault read-only data feature and the APIs used to store and interact with read-only data. This article assumes the reader is familiar with the basics of querying and writing data to HealthVault.

Read-only vs. immutable data types
----------------------------------

HealthVault has long supported immutable data types like CCDs and CCRs. Read-only data is different because it can be applied to instances of any data type.

Creating read-only data
-----------------------

Creating data in HealthVault is done via a **PutThings** request. To specify that an item should be read-only, set the read-only flag. A flag is a numeric value on a thing that describes its attributes. The read-only flag has a decimal value of 16. For more information about flags, see the Flags section of the [thing type schema](/healthvault/concepts/data/thing-types).

```xml
<info>
  <thing>
    <type-id>7ea7a1f9-880b-4bd4-b593-f5660f20eda8</type-id>
    <flags>16</flags>
    <data-xml>
      <condition>
         <name>
           <text>Pneumonia</text>
           <code>
             <value>233604007</value>
             <type>snomed-ct</type>
           </code>
         </name>
         <onset-date>
           <structured>
             <date>
               <y>1999</y>
               <m>3</m>
               <d>1</d>
             </date>
           </structured>
         </onset-date>
       </condition>
     </data-xml>
   </thing>
 </info>
 ```
A thing can be marked read-only when it is created in HealthVault for the first time. An existing item that is not read-only cannot be updated to be read-only. Attempting to do this will result in a **CannotSetReadOnlyFlag** (161) error. For more information about error codes, see [status codes](/healthvault/concepts/xml-api/status-codes).

Updating read-only data
-----------------------

Once an item has been stored in HealthVault as read-only, it cannot be updated and the read-only restriction cannot be removed. The read-only restriction applies to the **data-xml** element, which holds the type specific structured information, and the **blobs** element, which holds the type specific unstructured information. Some fields outside of these sections can be updated for read-only things. These are:

-   Tags

-   The **updated-end-date** field

Attempts to update any other fields on a read-only thing will result in one of the following errors. For more information about error codes, see [status codes](/healthvault/concepts/xml-api/status-codes).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Error code</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>CannotUpdateReadOnlyThing (154)</p></td>
<td><p>It is not possible to update a thing instance that has been specified as read-only.</p></td>
</tr>
<tr class="even">
<td><p>CannotChangeReadOnlyFlag (156)</p></td>
<td><p>It is not possible to remove the read-only restriction from a thing instance.</p></td>
</tr>
</tbody>
</table>

Deleting read-only data
-----------------------

Any application or user with delete permissions can delete read-only items. Deleting data can be done via a **RemoveThings** request.

Querying read-only data
-----------------------

Querying data from HealthVault is done via a **GetThings** request. To query for the read-only status of an item, your request must include the **Core** or **Effective Permissions** sections.

The following example shows a **GetThings** request that includes the **Core** section.

```xml
<request>
  <!-- ... -->
  <info>
    <group name="height things">
      <filter>
        <type-id>40750a6a-89b2-455c-bd8d-b420a4cb500b</type-id>
      </filter>
      <format>
        <section>core</section>
        <xml/>
      </format>
    </group>
  </info>
</request> 
```
It is not possible to use a filter to query for things that are read-only.

Data types that support read-only instances
-------------------------------------------

Most HealthVault data types support read-only instances, though there are a few that do not. The **AllowReadOnly** property of the data type indicates if the type supports read-only instances. The data type definition can be viewed at the [Thing types and sample data browser](http://go.microsoft.com/?linkid=9810880) or through a **GetThingType** request. At this time, the following types do not allow read-only instances:

-   Basic Demographic Information

-   Personal Contact Information

-   Personal Demographic Information

-   Personal Image

An attempt to specify the read-only flag for a type that does not support it will result in a **CannotCreateReadOnlyThing** (155) error. For more information about error codes, see [status codes](/healthvault/concepts/xml-api/status-codes).

Updated end date handling
-------------------------

When data is read-only, applications may still want to provide a way for a user to update the end date status of an item. To support this, all HealthVault data types now include an **updated-end-date** field that is always writable, even if the item is read-only. This is useful for example for a **Medication** thing instance when the user wants to indicate they are no longer taking the medication, or for a **Condition** thing instance when the user wants to indicate they no longer have the condition. The **updated-end-date** field is the recommended place to store end date information on all data types. For more information, see  <a href="active-and-inactive-status.md" id="PageContent_14096_6">HealthVault item status</a><span style="FONT-SIZE: 0.75em; LINE-HEIGHT: 1.5">.</span>

Related items
-------------

The HealthVault data model supports relating items to one another via <span class="parameter">Related Items</span>. Related items are stored within the **common** element within the **data-xml** element, so they cannot be edited for a read-only item.

There are two approaches that can be used for relating items where some of the items are read-only.

1.  Use a Client ID to define your own IDs for each item, and store the Client IDs via the Related Items mechanism when creating the items in HealthVault. The relationships need to be defined at the time the read-only things are created in HealthVault.

2.  Related Items can be used to specify relationships FROM a non-read-only thing TO a read-only thing. The reverse is not allowed. The following table describes the possible relationships between things.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th><p>Relationship</p></th>
    <th><p>Description</p></th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>From thing A (read-only) to thing B</p></td>
    <td><p>This is not allowed, as the Related Items section of thing A cannot be edited.</p></td>
    </tr>
    <tr class="even">
    <td><p>From thing B to thing A (read only))</p></td>
    <td><p>This is allowed, as the Related Items section of thing B can be updated with the thing-id or client thing id of thing A.</p></td>
    </tr>
    <tr class="odd">
    <td><p>From thing A (read-only) to thing B (read-only))</p></td>
    <td><p>This is not allowed. Once a thing is stored as read-only, the Related Items section cannot be updated.</p></td>
    </tr>
    </tbody>
    </table>

Reconciliation
--------------

Reconciliation is the process by which clinical documents such as Continuity of Care Record (CCR) and Continuity of Care Document (CCD) documents in HealthVault can be used to create HealthVault items based on the data they contain. For more information, see [Using CCR Data in HealthVault](ccr-data.md).

By default, the individual items reconciled from a clinical document are not read-only. To specify that the reconciled items should be read-only, set the read-only flag on the clinical document thing when creating it in HealthVault. All items reconciled from the document will be read-only.

.NET SDK
--------

When using the HealthVault .NET SDK for querying and writing data, use the [HealthRecordAccessor](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.healthrecordaccessor) class.

To specify that a thing instance should be read-only when creating data, set the [HealthRecordItem.IsReadOnly](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.healthrecorditem.isreadonly) property to **true**.

To determine if a thing instance is read-only when reading data, check the value of the **IsReadOnly** property. Note that you must query for the **Core** or **Effective Permissions** section to retrieve the value of the **IsReadOnly** property.

.NET SDK code samples
---------------------

The following example stores a read-only thing instance.

```c#
// Create a read-only Medication thing 
Medication med = new Medication(new CodableValue("My read-only medication"));
med.IsReadOnly = true;PersonInfo.SelectedRecord.NewItem(med); 
```

The following example edits the **Updated End Date** field on a read-only thing.

```c#
// Edit updated end date on a read-only thing to the current time. This 
// indicates the user considers the medication inactive as of the current time. 
void EditUpdatedEndDate(){    
    // In this example, "9b3ef8ad-dd4a-484c-aa05-66f967470e0f" is the thing id
    // for an existing Medication instance that is read-only.
    HealthRecordItem med =
        PersonInfo.SelectedRecord.GetItem(new Guid("9b3ef8ad-dd4a-484c-aa05-66f967470e0f"));
    med.UpdatedEndDate = DateTime.Now;
    PersonInfo.SelectedRecord.UpdateItem(med);
} 
```

The following example specifies that items from a CCD should be reconciled as read-only.

```c#
// Specifies that a CCD document's items should be reconciled as read-only 
void CreateCCDWithReadOnlyItems(){
    XmlDocument ccdDocument = new XmlDocument();

    ccdDocument.Load(MapPath("ExampleCCD.xml"));
    HealthRecordItem ccd = new HealthRecordItem(CCD.TypeId, ccdDocument);
    ccd.IsReadOnly = true;
    PersonInfo.SelectedRecord.NewItem(ccd);
} 
```
