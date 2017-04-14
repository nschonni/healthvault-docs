Technical overview: exchanging data
===================================

Reading and writing data
------------------------

HealthVault provides an XML-based web service API with two methods for reading and writing data: GetThings and PutThings. The GetThings method is used to execute queries and return stored data. The PutThings method is used to create and update data.  For more information, see <a href="querying-data.md" id="PageContent_13983_9">querying data</a> and <a href="writing-data.md" id="PageContent_13983_10">writing data</a>.

In the .NET SDK this functionality can be found in the following classes:

-   [Microsoft.Health.HealthRecordAccessor](https://msdn.microsoft.com/en-us/library/dd726447.aspx) class for reading and writing data.
-   [Microsoft.Health.HealthRecordSearcher](https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordsearcher.aspx) class for more advanced data querying capabilities.

Polling for changes
-------------------

The service API provides a method called GetUpdatedRecordsForApplication. This method returns a list of records that have changed since a specified date. The application can then query each record to determine the changes. In the .NET SDK:

-   [Microsoft.Health.HealthVaultPlatform.GetUpdatedRecordsForApplication](https://msdn.microsoft.com/en-us/library/microsoft.health.healthvaultplatform.getupdatedrecordsforapplication.aspx)
-   [Microsoft.Health.ApplicationConnection.GetUpdatedRecordsForApplication](https://msdn.microsoft.com/en-us/library/microsoft.health.applicationconnection.getupdatedrecordsforapplication.aspx)

Eventing
--------

Alternately, an application can use receive notifications of changes through the eventing API. See <a href="subscribing-to-events.md" id="PageContent_13983_11">eventing</a> for more information about an event-driven approach to detecting changes.

Return to the <a href="get-started.md" id="Introduction_14123_19">getting started</a> section.

<span id="singleColInThreeColLayout"></span>

#### Technical overview

-   <a href="technical-overview.md" id="RightRailLinkListSection_14123_7">1. Terminology</a>
-   <a href="technical-overview---applications.md" id="RightRailLinkListSection_14123_18">2. Applications</a>
-   <a href="technical-overview---permissions.md" id="RightRailLinkListSection_14123_8">3. Permissions</a>
-   <a href="technical-overview---connectivity.md" id="RightRailLinkListSection_14123_9">4. Connectivity</a>
-   <a href="technical-overview---exchanging-data.md" id="RightRailLinkListSection_14123_10">5. Exchanging data</a>

See also

-   <a href="querying-data.md" id="RightRailLinkListSection_14123_14">Querying data</a>
-   <a href="writing-data.md" id="RightRailLinkListSection_14123_15">Writing data</a>
-   <a href="paging-data.md" id="RightRailLinkListSection_14123_16">Paging data</a>
-   <a href="subscribing-to-events.md" id="RightRailLinkListSection_14123_17">Subscribing to events</a>

