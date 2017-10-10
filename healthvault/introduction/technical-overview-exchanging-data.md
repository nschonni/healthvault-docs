---
title: Overview | Data exchange
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Get a brief overview of how HealthVault's data protocols work. 
---

Technical overview: exchanging data
===================================

Reading and writing data
------------------------

HealthVault provides an XML-based web service API with two methods for reading and writing data: GetThings and PutThings. The GetThings method is used to execute queries and return stored data. The PutThings method is used to create and update data.  For more information, see <a href="/healthvault/concepts/xml-api/querying-data" id="PageContent_13983_9">querying data</a> and <a href="/healthvault/concepts/xml-api/writing-data" id="PageContent_13983_10">writing data</a>.

In the .NET SDK this functionality can be found in the following classes:

-   [Microsoft.Health.HealthRecordAccessor](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.healthrecordaccessor) class for reading and writing data.
-   [Microsoft.Health.HealthRecordSearcher](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.healthrecordsearcher) class for more advanced data querying capabilities.

HealthVault also offers a REST API for certain scenarios. More information about the HealthVault REST API is available here: 
- [HealthVault REST API](https://docs.microsoft.com/en-us/rest/healthvault/)

Polling for changes
-------------------

The service API provides a method called GetUpdatedRecordsForApplication. This method returns a list of records that have changed since a specified date. The application can then query each record to determine the changes. In the .NET SDK:

-   [Microsoft.Health.HealthVaultPlatform.GetUpdatedRecordsForApplication](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.healthvaultplatform.getupdatedrecordsforapplication)
-   [Microsoft.Health.ApplicationConnection.GetUpdatedRecordsForApplication](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.applicationconnection.getupdatedrecordsforapplication)

Eventing
--------

Alternately, an application can use receive notifications of changes through the eventing API. See <a href="/healthvault/concepts/connectivity/subscribing-to-events" id="PageContent_13983_11">eventing</a> for more information about an event-driven approach to detecting changes.

<span id="singleColInThreeColLayout"></span>

#### Technical overview

-   <a href="technical-overview.md" id="RightRailLinkListSection_14123_7">1. Terminology</a>
-   <a href="technical-overview-applications.md" id="RightRailLinkListSection_14123_18">2. Applications</a>
-   <a href="technical-overview-permissions.md" id="RightRailLinkListSection_14123_8">3. Permissions</a>
-   <a href="technical-overview-connectivity.md" id="RightRailLinkListSection_14123_9">4. Connectivity</a>
-   <a href="technical-overview-exchanging-data.md" id="RightRailLinkListSection_14123_10">5. Exchanging data</a>
