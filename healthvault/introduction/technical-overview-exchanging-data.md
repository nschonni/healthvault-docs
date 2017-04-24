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

-   [Microsoft.Health.HealthRecordAccessor](/healthvault/sdks/dotnet/microsoft.health.healthrecordaccessor.yml) class for reading and writing data.
-   [Microsoft.Health.HealthRecordSearcher](/healthvault/sdks/dotnet/microsoft.health.healthrecordsearcher.yml) class for more advanced data querying capabilities.

HealthVault also offers a REST API for certain scenarios. More information about the HealthVault REST API is available here: 
- [HealthVault REST API](/healthvault/apis/v1.0-preview)

Polling for changes
-------------------

The service API provides a method called GetUpdatedRecordsForApplication. This method returns a list of records that have changed since a specified date. The application can then query each record to determine the changes. In the .NET SDK:

-   [Microsoft.Health.HealthVaultPlatform.GetUpdatedRecordsForApplication](/healthvault/sdks/dotnet/microsoft.health.healthvaultplatform.getupdatedrecordsforapplication.yml)
-   [Microsoft.Health.ApplicationConnection.GetUpdatedRecordsForApplication](/healthvault/sdks/dotnet/microsoft.health.applicationconnection.getupdatedrecordsforapplication.yml)

Eventing
--------

Alternately, an application can use receive notifications of changes through the eventing API. See <a href="/healthvault/concepts/connectivity/subscribing-to-events" id="PageContent_13983_11">eventing</a> for more information about an event-driven approach to detecting changes.

<span id="singleColInThreeColLayout"></span>

#### Technical overview

-   <a href="technical-overview" id="RightRailLinkListSection_14123_7">1. Terminology</a>
-   <a href="technical-overview-applications" id="RightRailLinkListSection_14123_18">2. Applications</a>
-   <a href="technical-overview-permissions" id="RightRailLinkListSection_14123_8">3. Permissions</a>
-   <a href="technical-overview-connectivity" id="RightRailLinkListSection_14123_9">4. Connectivity</a>
-   <a href="technical-overview-exchanging-data" id="RightRailLinkListSection_14123_10">5. Exchanging data</a>
