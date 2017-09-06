---
title: Overview | Permissions and authentication
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Get a quick overview of how HealthVault handles permissions and authentication. 
---

Technical overview: permissions
===============================

This page assumes you understand <a href="technical-overview.md" id="PageContent_14105_2">core terminology</a> and HealthVault <a href="technical-overview-applications.md" id="Introduction_14105_19">applications</a>.

Overview
--------

A HealthVault application uses the [Application Configuration Center (ACC)](https://config.healthvault-ppe.com) to declare the types of data that it wishes to access (e.g., weight or blood pressure).  During installation or initialization of the application, the end-user can review the requested permissions and determine whether to grant the desired access.

Authorization rules
-------------------

An *authorization rule *is a collection of permissions for creating, reading, updating or deleting different data types. For example, a fitness application can define an authorization rule that specifies read-only access to demographic information but read/write access to exercise information. Most applications define one default authorization rule but multiple rules can be defined for management purposes.

<img src="https://i-msdn.sec.s-msft.com/dynimg/IC750083.png" title="Permissions screenshot" alt="Permissions screenshot" id="Permissions" />

Online and offline rules
------------------------

<span style="FONT-SIZE: 12px">An authorization rule can be defined as </span> *online * <span style="FONT-SIZE: 12px">or </span> *offline* <span style="FONT-SIZE: 12px">. An online rule specifies permissions when the user has actively signed into the application (e.g., signed into a website). An offline rule specifies permissions when the application accesses the health record at other times (e.g., during nightly processing).</span>

See <a href="/healthvault/concepts/authorization/offline-access" id="Introduction_14105_18">offline access</a> 

Putting it together
-------------------

An application declares the data types and operations that it will perform against a health record. The end-user will review the requested permissions and determine whether to grant the application access to the record.

Next, learn about <a href="technical-overview-connectivity.md" id="PageContent_14105_8">connection options</a> to the HealthVault service.

<span id="singleColInThreeColLayout"></span>

#### Technical overview

-   <a href="technical-overview.md" id="RightRailLinkListSection_14105_9">1. Terminology</a>
-   <a href="technical-overview-applications.md" id="RightRailLinkListSection_14105_20">2. Applications</a>
-   <a href="technical-overview-permissions.md" id="RightRailLinkListSection_14105_10">3. Permissions</a>
-   <a href="technical-overview-connectivity.md" id="RightRailLinkListSection_14105_11">4. Connectivity</a>
-   <a href="technical-overview-exchanging-data.md" id="RightRailLinkListSection_14105_12">5. Exchanging data</a>
