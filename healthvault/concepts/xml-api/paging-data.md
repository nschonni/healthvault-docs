---
title: Paging data
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn how to use the HealthVault XML API to page through large data sets
---

How to use GetThings to page data
===========

Paging data allows your application to manage performance by requesting a set number of full **GetThings** results per query and retrieving item identifiers for the rest of the results in order to show that data on successive pages.

Retrieving full and partial results from GetThings
--------------------------------------------------

If the result dataset of a **GetThings** request is large, the response may contain some partial things. The response could contain full (complete) data for a subset of the matched things and contain partial data for the rest of the matched things. Partial data includes the item identifier, which can be used to retreive full data for the corresponding thing. Additional **GetThings** requests can then be made to retrieve full data for any remaining partial things.

For more information about **GetThings** requests, see <a href="querying-data.md" id="PageContent_14099_2">querying data</a>.

The default number of full items returned in a response is the value of the **MaxFullThingResultsPerGroup** configuration setting, which can be retrieved using the **GetServiceDefinition** request. For the service definition, see the [Method browser](http://go.microsoft.com/?linkid=9810881).

You can limit the number of full items returned by specifying the **max-full** attribute in the **ThingRequestGroup** element in the [GetThings](https://platform.healthvault-ppe.com/platform/XSD/method-getthings.xsd) request. Lowering the maximum number of full things returned per request can improve performance. For example, if the queried data is to be displayed in a grid view that shows only 10 items per page, you can request 10 full items per request. Then, if the user navigates to the second page, you can make a **GetThings** request to retrieve data for the next 10 items by specifying the next set of identifiers. Note that regardless of the value of the **max-full** attribute, the service never returns more than the **MaxFullThingResultsPerGroup** number of full things in a response.

The following series of **GetThings** requests and responses demonstrates how to page through data. To make the example shorter, the example requests weight measurement data, requests only three full things per **GetThings** request, and some of the XML has been removed and replaced with comments.

```xml
<request xmlns:wc-request="urn:com.microsoft.wc.request">
	<auth>
		<!-- ... -->
	</auth>	
	<header>
		<!-- ... -->
	</header>
	<info>
		<group name="Weight" max-full="3">	
			<filter>
				<type-id>
					3d34d87e-7fc1-4153-800f-f56592cb0d17
				</type-id>
				<thing-state>
					Active
				</thing-state>
			</filter>
			<format>
				<section>
					core
				</section>
				<xml />
				<type-version-format>
					3d34d87e-7fc1-4153-800f-f56592cb0d17
				</type-version-format>
			</format>
		</group>
	</info>
</request>
<response>
	<status>
		<code>
			0
		</code>
	</status>
	<info xmlns:wc="urn:com.microsoft.wc.methods.response.GetThings3">
		<group name="Weight">
			<thing>
				<thing-id version-stamp="72161432-13aa-4a34-b969-92a83527ffb3">
					26a4598d-7db2-4d96-85bc-3e3dca5dce4b
				</thing-id>
				<type-id name="Weight Measurement">
					3d34d87e-7fc1-4153-800f-f56592cb0d17
				</type-id>
				<thing-state>
					Active
				</thing-state>
				<flags>
					0
				</flags>
				<eff-date>
					2012-08-30T00:00:00
				</eff-date>
				<data-xml>
					<!-- ... -->
				</data-xml>
			</thing>
			<thing>
				<!-- ... -->
			</thing>
			<thing>
				<!-- ... -->
			</thing>
			<unprocessed-thing-key-info>
				<thing-id version-stamp="212eaf83-0396-4f4f-b8e1-1099f8c091ef">
					829adb77-22de-48e8-8017-e6e5acf0dd3e
				</thing-id>
				<type-id name="Weight Measurement">
					3d34d87e-7fc1-4153-800f-f56592cb0d17
				</type-id>
				<eff-date>
					2012-08-27T00:00:00
				</eff-date>
			</unprocessed-thing-key-info>
			<unprocessed-thing-key-info>
				<thing-id version-stamp="7c345b6b-5072-4aca-a454-5aa7148982cf">
					373c0743-2a7c-4d0c-967c-f6bdccb6a75d
				</thing-id>
				<!-- ... -->
			</unprocessed-thing-key-info>
			<unprocessed-thing-key-info>
				<thing-id version-stamp="6672961b-3715-4b52-8426-6671841cc430">
					a73685c8-9e08-499b-99c5-abed52aea730
				</thing-id>
				<!-- ... -->
			</unprocessed-thing-key-info>
			<!-- ... -->
		</group>
	</info>
</response>
<request xmlns:wc-request="urn:com.microsoft.wc.request">
	<!-- ... -->
	<info>
		<group>	
			<key version-stamp="212eaf83-0396-4f4f-b8e1-1099f8c091ef">
				829adb77-22de-48e8-8017-e6e5acf0dd3e
			</key>
			<key version-stamp="7c345b6b-5072-4aca-a454-5aa7148982cf">
				373c0743-2a7c-4d0c-967c-f6bdccb6a75d
			</key>
			<key version-stamp="6672961b-3715-4b52-8426-6671841cc430">
				a73685c8-9e08-499b-99c5-abed52aea730
			</key>
			<format>
				<!-- ... -->
			</format>
			<current-version-only>
				true
			</current-version-only>
		</group>
	</info>
</request>
<response>
	<status>
		<code>
			0
		</code>
	</status>
	<info xmlns:wc="urn:com.microsoft.wc.methods.response.GetThings3">
		<group>
			<thing>
				<thing-id version-stamp="212eaf83-0396-4f4f-b8e1-1099f8c091ef">
					829adb77-22de-48e8-8017-e6e5acf0dd3e
				</thing-id>
				<type-id name="Weight Measurement">
					3d34d87e-7fc1-4153-800f-f56592cb0d17
				</type-id>
				<thing-state>
					Active
				</thing-state>
				<flags>
					0
				</flags>
				<eff-date>
					2012-08-27T00:00:00
				</eff-date>
				<data-xml>
					<!-- ... -->
				</data-xml>
			</thing>
			<thing>
				<thing-id version-stamp="7c345b6b-5072-4aca-a454-5aa7148982cf">
					373c0743-2a7c-4d0c-967c-f6bdccb6a75d
				</thing-id>
				<!-- ... -->
			</thing>
			<thing>
				<thing-id version-stamp="6672961b-3715-4b52-8426-6671841cc430">
					a73685c8-9e08-499b-99c5-abed52aea730
				</thing-id>
				<!-- ... -->
			</thing>
		</group>
	</info>
</response>

```
Performance considerations
--------------------------

Each request represents a certain amount of overhead. When deciding how many full things to retreive per request, consider the benefits of retreiving less data against the additional cost of making repeated **GetThings** requests.

For some thing types, the full thing is much larger that the partial thing. In this case, limiting the number of full things returned per request might be desireable. For other thing types, the full thing is only slightly larger than the partial thing. In this case, you might choose to not limit the number of full things returned.

.NET SDK
--------

If you are using the HealthVault .Net SDK, the paging logic is handled for you. The [GetMatchingItems](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.healthrecordsearcher.getmatchingitems) method of the [HealthRecordSearcher](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.healthrecordsearcher) class returns a collection of [HealthRecordItemCollection](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.healthrecorditemcollection) objects, one for each filter in the searcher object's [Filters](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.healthrecordsearcher.filters) collection. The **HealthRecordItemCollection** automatically makes **GetThings** requests for partial items as you iterate through the collection. Thus, when you are finished processing all the items, the entire result set will be in memory. The value of the [MaxFullItemsReturnedPerRequest](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.healthrecordfilter.maxfullitemsreturnedperrequest) property of the associated filter limits the number of full things per **GetThings** request by the **HealthRecordItemCollection** object.

To specify the maximum number of full things in a response in the HealthVault .Net SDK, modify the corresponding filter in the **HealthRecordSearcher** object. Set the **MaxFullItemsReturnedPerRequest** property of the [HealthRecordFilter](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.healthrecordfilter) object to the desired page size.

The following example contains a method that returns a **HealthRecordItemCollection** that retreives a page of items per **GetThings** request.

```cs
private  static HealthRecordItemCollection GetItemCollection(
        HealthRecordAccessor accessor,
        Guid typeId,
        int maxFullItems)
{    
    // Create a filter to retrieve the thing type.    
    string groupName = ItemTypeManager.GetRegisteredTypeForTypeId(typeId).Name;
    HealthRecordFilter filter = new HealthRecordFilter(typeId);    
    filter.Name = groupName;    
    filter.MaxFullItemsReturnedPerRequest = maxFullItems;
    
    // Search the health record for the specified type.
    HealthRecordSearcher searcher = accessor.CreateSearcher();    
    searcher.Filters.Add(filter);    
    // Since the searcher has only one filter, the search results
    // contain only one item group.    
    return searcher.GetMatchingItems()[0];
}
```

The HealthVault .Net SDK also provides an ASP.NET server control for viewing health record items that implements paging, the [HealthRecordItemDataGrid](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.web.healthrecorditemdatagrid) class. The source code is a great place to see how to incorporate paging with a grid view.
