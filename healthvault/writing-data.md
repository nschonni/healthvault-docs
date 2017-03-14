Writing data
============

To write data to HealthVault, use the **PutThings** request. The call must specify a single record identifier in the request header and all operations are performed against that record. There is no mechanism for performing write operations on multiple records in the same request.

Data in the request takes the form of thing XML, as discussed in <a href="thing-type-schema.md" id="PageContent_14101_2">Thing Type Schema</a>. The size of the XML request is limited by the configuration value **maxUncompressedSizeBytes**. However, streamed blobs are not considered part of the XML request size. 

When data is written to the record, valid writes will fail if the size of the data being added to the record makes the record size exceed the user’s quota. Even deletes may cause the quota to be exceeded due to the audits that are added to track changes to the record.

Adding data
-----------

Adding data to a HealthVault record requires the Create permission for the data types being added. The application’s authorization for online or offline connections must contain the types in the request XML. If the request contains any types for which the application doesn't have Create access, then an **ACCESS\_DENIED** response code is returned and the whole request is rolled back.

The following request XML illustrates a **PutThings** call that creates a new weight thing.

`<info>  <thing>    <type-id>3d34d87e-7fc1-4153-800f-f56592cb0d17</type-id>    <data-xml>      <weight>        <when>          <date>            <y>2012</y>            <m>5</m>            <d>23</d>          </date>        </when>        <value>          <kg>90.718474</kg>          <display units="lbs" units-code="lb" text="200 lbs">200</display>        </value>      </weight>    </data-xml>  </thing></info>`
### The request

In the **PutThings** request, the info section must contain one or more thing instances. When creating new instances, the thing-id element must not be present in the XML. The type-id field must indicate the type of data that exists in the data-xml section. The thing-state, flags, eff-date, created, and updated sections are all ignored. If you have streamed data associated with the thing, then the blob-payload section must be present. If the thing needs a digital signature, then the signature-info section must be present. For more information, see <a href="thing-type-schema.md" id="PageContent_14101_3">Thing Type Schema</a>.

### The response

The response from a successful **PutThings** call is the thing-ids for all new or updated things. The .NET SDK automatically updates the [HealthRecordItem](https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditem.aspx) instance with the thing-id that is returned. Any apps that want direct access to the thing that was just created should store this identifier for future use.

### Errors

The most common errors that applications get when trying to create new things are: **ACCESS\_DENIED**, **RECORD\_QUOTA\_EXCEEDED**, and **INVALID\_XML**.

-   **ACCESS\_DENIED** is usually returned because the user hasn’t authorized the application to create things in the record, the user has not authorized the application to create the thing type specified, or the application is trying to perform the operation offline when the application is only authorized for online access.

-   **RECORD\_QUOTA\_EXCEEDED** is returned when the size of the incoming data would cause the record to exceed its quota. In this case the user must contact HealthVault support to increase their quota.

-   **INVALID\_XML** is returned in response to the thing-specific XML being malformed XML or not adhering to the schema for the type specified by the type-id element.

Updating data
-------------

Updating a thing in a HealthVault record is similar to creating a new thing, with a few differences.

-   You must specify the thing-id, including the version-stamp.

-   Instead of requiring Create permission for the type, the application must have Update permission.

-   The application must be updating the most recent version of the thing.

Each thing-id (often referred to as the thing key) is represented by two parts.

-   The thing-id, which is a GUID that uniquely identifies the thing

-   The version-stamp, which is a GUID that uniquely identifies the version of a thing

When a thing is updated, the old version is kept and a new version with a new version-stamp but the same thing-id is added to the record. The new version is marked as the current instance.

When updating a thing, the application must get the current version of a thing using the **GetThings** request, update whatever fields are necessary, and then call **PutThings** with the updated XML. HealthVault will assign the version-stamp, which will be returned in the response from the **PutThings** call. Future calls to modify the thing should use this new version-stamp. The .NET SDK automatically updates the [HealthRecordItem](https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditem.aspx) object with the new version stamp after the **PutThings** call succeeds. 

If **PutThings** is called to update a thing with a version-stamp that is not the latest, the response contains a **VERSION\_STAMP\_MISMATCH** error code. This may happen if the thing instance was updated between the time the instance was retrieved through the **GetThings** request and the **PutThings** request to update it. This could happen if another application or thread is updating the instance.

Only record custodians using the HealthVault Shell can access older versions of a thing.

Updating data has the same common errors as adding data, with the difference that the **ACCESS\_DENIED** error code occurs when the user has not authorized the application for updates.

The following request XML illustrates a **PutThings** call that updates an existing weight thing. Note, the difference between this request XML and the one to create a new instance is that the thing-id and version-stamp are specified and a time has been added to the **when** element.

`<info>  <thing>    <thing-id version-stamp="cd5fe8ef-fb1e-4b35-a927-182f016b649e">cd5fe8ef-fb1e-4b35-a927-182f016b649e</thing-id>    <type-id>3d34d87e-7fc1-4153-800f-f56592cb0d17</type-id>    <data-xml>      <weight>        <when>          <date>            <y>2012</y>            <m>5</m>            <d>23</d>          </date>          <time>            <h>7</h>            <m>30</m>          </time>        </when>        <value>          <kg>90.718474</kg>          <display units="lbs" units-code="lb" text="200 lbs">200”"/display>        </value>      </weight>    </data-xml>  </thing></info>`
Deleting data
-------------

Deleting data from a HealthVault record is similar to updating a thing, with a few differences.

-   The **RemoveThings** request is used instead of the **PutThings** request.

-   The applications must have Delete permissions for the thing type instead Update.

The application must still specify the latest version-stamp of the thing when attempting to remove it.

Just like updating a thing, deleting a thing from a record creates a new version of the thing with its status marked as deleted instead of active. This gives the user access to audits of each change the thing has gone through. Because of these semantics, the application may get a **RECORD\_QUOTA\_EXCEEDED** result code when deleting data. If that occurs, a record custodian must use the HealthVault Shell to permanently delete things from the record or contact support to get the record quota increased.

Once an application has deleted data, the data can no longer be accessed by the application. The only way to get the data back is for a record custodian to use the HealthVault Shell to undelete it.

In addition to the **RECORD\_QUOTA\_EXCEEDED** error code, an application can receive an **ACCESS\_DENIED** error if it does not have access to delete the thing from the record.

Transaction semantics
---------------------

All write operations (create, update, and delete) are performed in a single transaction. If any of the writes fail, all the writes fail. The response code indicates the reason for the failure. At this time there is no way for applications to perform multiple **PutThings** calls in a single transaction.

When streamed blobs are associated with the things in the write request, they are still available for that association without resubmitting them as long as the **PutThings** call completes successfully in the allotted time before orphaned blobs get cleaned up. This allotted time is on the order of a day or two but may vary in length and should never be less than a day.

.NET SDK
--------

The HealthVault .Net SDK provides classes for reading and writing data. For querying and writing data, use the [HealthRecordAccessor](https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordaccessor.aspx) class.

### Integrating with HealthVault

Reading and writing data

-   <a href="querying-data.md" id="RightRailLinkListSection_14101_9">Querying data</a>
-   <a href="writing-data.md" id="RightRailLinkListSection_14101_10">Writing data</a>
-   <a href="paging-data.md" id="RightRailLinkListSection_14101_11">Paging data</a>
-   <a href="batching-queries.md" id="RightRailLinkListSection_14101_12">Batching queries for performance</a>
-   <a href="subscribing-to-events.md" id="RightRailLinkListSection_14101_13">Subscribing to events</a>
-   <a href="tracking-data-items.md" id="RightRailLinkListSection_14101_14">Tracking data items</a>
-   <a href="version-stamps.md" id="RightRailLinkListSection_14101_15">Version stamps on data items</a>
-   <a href="read-only-data.md" id="RightRailLinkListSection_14101_16">Using read-only data</a>

See also

-   <a href="status-codes.md" id="RightRailLinkListSection_14101_18">Status codes</a>

