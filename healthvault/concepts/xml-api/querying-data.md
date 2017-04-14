Querying data
=============

Retrieving data from HealthVault is done through the **GetThings** request. The **GetThings** request performs operations very similar to an SQL select statement:

-   It has formats which allow you to choose what part of the thing data to retrieve, similar to the <span class="code">select</span> statement in SQL.

-   It has filters which allow you to specify the criteria for the things to return, similar to the <span class="code">where</span> clause in SQL.

-   It takes a record ID, which is similar to the <span class="code">from</span> clause in SQL.

In addition, it allows you to specify multiple query groups in one request, which results in a dataset for each group. It also allows datasets to be paged from the server so as not to overwhelm the caller when the dataset is large.

To make a **GetThings** request, specify the record ID of the health record from which you want to retrieve data. Only one record can be specified in each call, and the user must have already authorized the application with read access to the record. For more inforamtion about the **GetThings** request, see the [Method browser](http://go.microsoft.com/?linkid=9810881).

The info section of the method request is then defined using a group containing filters and a format section.

The response is a collection of datasets, each containing the results for the groups specified in the request. Each group contains the things that matched the filters for that group. The results within each group are ordered by the thing’s effective date.

The following example request-response XML illustrates how a named group in the request matches a named group in the response:

###Request
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
###Response
```xml
<response>
  <!-- ... -->
  <info>
    <group name="height things">
      <thing>
        <!-- ... -->
      </thing>
    </group>
  </info>
</response>
```
Groups
------

In a **GetThings** request, multiple queries can be specified using groups.

Each group consists of a set of filters and formats that tell HealthVault what data should be returned for that particular group. A group can be named so that it is easy to differentiate the datasets that are returned in the results. The maximum number of things to be returned and the maximum number of full things can also be set on the group. All query results are sorted by effective date, so you get the most recent thing when you specify a maximum of <span class="literalValue">1</span>.

To query for the most recent instance of height and weight data, with each in a different data set, create two groups. For example, Let's say you call one group <span class="literalValue">height</span> and the other group <span class="literalValue">weight</span>. The group for height will contain a filter specifying only the height thing type, while the weight group will specify only the weight thing type. On each group, you would set the maximum number of returned things to be <span class="literalValue">1</span>. The result will contain two groups with the names specified in the request. The <span class="literalValue">height</span> group will contain only the most recent instance of height data, and the <span class="literalValue">weight</span> group only the most recent instance of weight data.

```xml
<info>
  <group name="height" max="1">
    <filter>
      <type-id>40750a6a-89b2-455c-bd8d-b420a4cb500b</type-id>
    </filter>
    <format>
      <section>core</section>
      <xml/>
    </format>
  </group>
  <group name="weight" max="1">
    <filter>
      <type-id>3d34d87e-7fc1-4153-800f-f56592cb0d17</type-id>
    </filter>
    <format>
      <section>core</section>
      <xml/>
    </format>
  </group>
</info>
```
Query format
------------

The <span class="code">format</span> part of the request parameters determines which parts of the thing get returned in each group. The formats you can request include:

-   specified header sections of the thing

-   the type-specific XML

-   the version of the type

-   how to treat binary data attached to the thing

### Header sections

You can reduce the amount of data (by a small amount) by requesting only those sections you need for processing in your application.

The header always includes the thing ID, version stamp, and type identifier.

Optional header sections are:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Section</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Core</p></td>
<td><p>The metadata associated with the thing, including: effective date, state, and flags.</p></td>
</tr>
<tr class="even">
<td><p>Audits</p></td>
<td><p>Information about who created and last updated the thing, and when.</p></td>
</tr>
<tr class="odd">
<td><p>Effective permissions</p></td>
<td><p>Information about what access rights the calling application has on the thing instance (Create, Read, Update, or Delete). This information is useful when you want to enable or disable controls for editing or deleting things, based on your application's permissions.</p></td>
</tr>
<tr class="even">
<td><p>Digital signatures</p></td>
<td><p>Digital signature information including the key and cryptographic hash, which can be used to verify that the contents of the thing haven't been changed since the data was signed. Retrieve this section only if you want to validate the cryptographic hash or the signature. For more information, see [digital signatures](/healthvault/concepts/data/digital-signatures.md).</p></td>
</tr>
<tr class="odd">
<td><p>Tags</p></td>
<td><p>A set of comma-separated strings defined by the user to tag or categorize things. Not generally useful for applications.</p></td>
</tr>
<tr class="even">
<td><p>Blobpayload</p></td>
<td><p>Metadata about the binary data attached to the thing, sufficient for retrieving the binary data.</p></td>
</tr>
</tbody>
</table>

### Type-specific XML

The type-specific XML is the XML data associated with the thing.

The schema for this data is different for each thing type. This is the personal health data that most applications are interested in. For more information on thing type schemas, see the [Thing types and sample data explorer](http://go.microsoft.com/?linkid=9810881).

### Type version

The type version can be specified for types that have been versioned.

Regardless of the type identifier used in the filter or how the data is stored for that particular type, this requests that query results return the data in the specified type version.

### Binary filter and format specification

The binary filter and format specification can be used to fetch specific binary instances by name and indicate how the data is to be returned.

Each thing instance can have many sets of binary data (blobs) associated with it. Each blob can be named. One instance can remain unnamed and is considered the default instance. The binary filter allows you to specify the names of the blobs to retrieve. If not specified, then all blobs will be returned.

The blob format determines how those blobs are returned. Options include:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Option</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Information</p></td>
<td><p>Only metadata about the blob is returned: name, content type, and digital signature hash information.</p></td>
</tr>
<tr class="even">
<td><p>Inline</p></td>
<td><p>All binary data for the blob is returned in the XML response using a base64-encoded string.</p>
<p>Response size is limited and can be as low as 4MB, so not all blobs can be returned this way. The size limitation is for the entire response, so multiple blobs that combine to be more than the response limit will cause an error.</p></td>
</tr>
<tr class="odd">
<td><p>Streamed</p></td>
<td><p>This is the preferred method for retrieving blobs. The streaming mechanism doesn’t have the same size limitations that retrieving blobs inline does.</p>
<p>Metadata sufficient for retrieving the blob via an <span class="code">HTTP GET</span> is returned. The metadata includes a URL directly to the blob, as well as the content encoding of that blob (if any).</p>
<p>For more information on retrieving blobs through streaming, see the [blobs section](/healthvault/concepts/data/thing-types.md) section of the thing type page.</p></td>
</tr>
</tbody>
</table>

Filters
-------

The filter part of the request determines which things are returned in the response.

Each group can consist of any numbers of filters. Filters are logically ANDed together with the other filters in the group. For example, if you specify two filters in one group, with the first filter having the type identifier for weight things and the other filter having the type identifier for height, you would get no results because there are no things that are of both types. However, if you specified one of the filters having the type identifier for weight and the other with a created date minimum, then you’d get all weight things that were created after the specified date.

Within each filter there are a number of options. Each option is logically ANDed with the other options in the filter. However, some of the options are actually sets. Within these sets the value is logically ORed. For example, filters allow multiple type identifiers to be specified, such as weight and exercise. This request will return both weight and exercise items when specified in the same filter. The type identifiers are still ANDed with the other filter criteria. So if you add a minimum created date to the same filter, you’d get weight and exercise items that were created after the date specified. Other filter parameters that are treated as sets are: thing identifier, version stamp, client thing identifier, and thing state.

Filter fields include:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Filter field</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Created application identifier</p></td>
<td><p>Only things that were created by the specified application are returned.</p>
<p>Note: In the case of master/child and SODA applications, applications created based on the same master are not considered equivalent for this query. The child application identifier must be specified.</p></td>
</tr>
<tr class="even">
<td><p>Created date maximum</p></td>
<td><p>Only things that were created before the specified date are returned.</p></td>
</tr>
<tr class="odd">
<td><p>Created date minimum</p></td>
<td><p>Only things that were created after the specified date are returned.</p></td>
</tr>
<tr class="even">
<td><p>Created person identifier</p></td>
<td><p>Only things that were created by the specified person are returned.</p></td>
</tr>
<tr class="odd">
<td><p>Effective date maximum</p></td>
<td><p>Only things with an effective date before the one specified are returned.</p></td>
</tr>
<tr class="even">
<td><p>Effective date minimum</p></td>
<td><p>Only things with an effective date after the one specified are returned.</p>
<p>The <strong>eff-date</strong> element contains the effective date.</p></td>
</tr>
<tr class="odd">
<td><p>Thing state</p></td>
<td><p>Although available as a filter field, the only allowed state for applications to specify is <span class="literalValue">Active</span>, which is also the default.</p></td>
</tr>
<tr class="even">
<td><p>Type identifier</p></td>
<td><p>Only things of the specified types are returned.</p></td>
</tr>
<tr class="odd">
<td><p>Updated application identifier</p></td>
<td><p>Only things that were last updated by the specified application are returned.</p>
<p>Note: In the case of master-child and SODA applications, applications created based on the same master are not considered equivalent for this query. The child application identifier must be specified.</p></td>
</tr>
<tr class="even">
<td><p>Updated date maximum</p></td>
<td><p>Only things that were last updated before the specified date are returned.</p></td>
</tr>
<tr class="odd">
<td><p>Updated date minimum</p></td>
<td><p>Only things that were last updated after the specified date are returned.</p></td>
</tr>
<tr class="even">
<td><p>Updated end date maximum</p></td>
<td><p>Only things with an updated end date before the one specified are returned.</p></td>
</tr>
<tr class="odd">
<td><p>Updated end date minimum</p></td>
<td><p>Only things with an updated end date after the one specified are returned.</p></td>
</tr>
<tr class="even">
<td><p>Updated person identifier</p></td>
<td><p>Only things that were last updated by the specified person are returned.</p></td>
</tr>
<tr class="odd">
<td><p>XPath</p></td>
<td><p>A Boolean condition expressed in XPath into the data XML portion of the thing. Only items matching that expression are returned.</p>
<p>This filter field is discussed in more detail below.</p></td>
</tr>
</tbody>
</table>

### XPath

HealthVault supports querying for things based on XPath predicates. The predicates define search criteria into the thing data.

All XPaths must start with <span class="literalValue">/thing/data-xml</span>. HealthVault supports querying on any child element or attribute under data-xml.

Single predicate queries are optimized in HealthVault. Optimized queries include:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Predicate type</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>String</p></td>
<td><p>String predicates encode the search value in quotes.</p></td>
</tr>
<tr class="even">
<td><p>Numeric</p></td>
<td><p>Numeric predicates do not encode the search value in quotes.</p></td>
</tr>
</tbody>
</table>

Compound queries and predicates other than those described above are not optimized. Non-optimized queries are served by loading the entire set of thing data and searching with brute force. A non-optimized query executed against a record with a large number of things risks taking a long time. The predicates described above are a good way to search for data quickly.

Example - string predicates

```xpath
 /thing/data-xml/medication/name/text[. = "Aspirin"]/thing/data-xml/medication/name/text[@myattribute = "value"] 
```

Example - numeric predicates

```xpath
/thing/data-xml/weight/value/kg[. = 150]/thing/data-xml/weight/value/kg[. > 150]/thing/data-xml/weight/value/kg[. < 150] 
```

Full and partial things
-----------------------

In order to conserve network bandwidth and HealthVault server resources, queries that return large datasets don’t return all the data in the first response. The first response includes a configured number (defined by the **maxFullThingResultsPerGroup** configuration item) of full things and the rest of the results as partial things. Full things consist of all the data requested in the format section. The partial things contain only the thing identifier, type identifier, and effective date of the thing.

After the first set of full things and partial things are returned, you can create another request asking for the next set of partial things, using the thing identifier. This set should not exceed the number of full things returned in the first request. Now you have two "pages" of data. You can continue this process until all data has been retrieved.

The HealthVault configuration values related to full and partial things are:

-   **maxGetThingsQueryGroups** – The maximum number of filter groups that can be provided for the query.

-   **maxFullThingResultsPerGroup** – The maximum number of full things returned per filter group.

-   **maxPartialThingResultsPerGroup** – The maximum number of partial things returned per filter group.

The **GetServiceDefinition** request returns information about Microsoft HealthVault and its related features, including values for various configuration items. For more information, see the Service definition detail section on the [Method browser](http://go.microsoft.com/?linkid=9810881) page.

.NET SDK
--------

The HealthVault .Net SDK provides classes for reading and writing data. For querying and writing data, use the [HealthRecordAccessor](/healthvault/sdks/dotnet/microsoft.health.healthrecordaccessor.yml) class. For advanced querying, use the [HealthRecordSearcher](/healthvault/sdks/dotnet/microsoft.health.healthrecordsearcher.yml) class.
