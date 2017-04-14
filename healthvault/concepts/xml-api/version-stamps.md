Version stamps on data items
============================

If you look closely at the [Key](https://msdn.microsoft.com/en-US/library/microsoft.health.healthrecorditem.key.aspx) property of the [HealthRecordItem](https://msdn.microsoft.com/en-US/library/microsoft.health.healthrecorditem.aspx) class, you find that the key it returns is a [HealthRecordItemKey](https://msdn.microsoft.com/en-US/library/microsoft.health.healthrecorditemkey.aspx) object. That key has two properties:

-   The [Id](https://msdn.microsoft.com/en-US/library/microsoft.health.healthrecorditemkey.id.aspx) property is a unique identifier for this particular piece of data.
-   The [VersionStamp](https://msdn.microsoft.com/en-US/library/microsoft.health.healthrecorditemkey.versionstamp.aspx) property is used to differentiate between different versions of this piece of data.

This stamp is used to deal both with auditing and with multiple versions, and also to make sure that any update operations are modifying the most recent version of a data item.

For example, if I have something like this:

`Height height = FetchOneHeightItem();`

... and then I do some processing, including updating the value in the height...

`PersonInfo.SelectedRecord.UpdateItem(height);`

...there is a small chance that somebody else has modified that height item between the time I fetched it and the time I updated it. The system looks at the version stamp on the most recent item it knows about and the one I'm asking to update, and if there is a mismatch, it throws an exception.

So, if you have code that does updates, it needs to check for and handle a [HealthServiceException](https://msdn.microsoft.com/en-US/library/microsoft.health.healthserviceexception.aspx) exception.

### Integrating with HealthVault

Reading and writing data

-   <a href="querying-data.md" id="RightRailLinkListSection_14060_7">Querying data</a>
-   <a href="writing-data.md" id="RightRailLinkListSection_14060_8">Writing data</a>
-   <a href="paging-data.md" id="RightRailLinkListSection_14060_9">Paging data</a>
-   <a href="batching-queries.md" id="RightRailLinkListSection_14060_10">Batching queries for performance</a>
-   <a href="subscribing-to-events.md" id="RightRailLinkListSection_14060_11">Subscribing to events</a>
-   <a href="tracking-data-items.md" id="RightRailLinkListSection_14060_12">Tracking data items</a>
-   <a href="version-stamps.md" id="RightRailLinkListSection_14060_13">Version stamps on data items</a>
-   <a href="read-only-data.md" id="RightRailLinkListSection_14060_14">Using read-only data</a>

