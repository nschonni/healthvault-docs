---
title: Overview
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Get a quick overview of key terminology for HealthVault. 
---

Technical overview: terminology
===============================

Record
------

A health record is a container for all of the medical and fitness information for a single person.

Person
------

A person is a individual with a health record. By default a person has full control over his or her own health record - but a person can also have access to other health records.  For example, a parent can maintain health records for his or her children.

Thing
-----

A thing is a distinct chunk of data that is stored in a record. A record contains many things such as weight measurements, blood pressure measurements, clinical documents, x-ray images, and so on.

<img src="https://i-msdn.sec.s-msft.com/dynimg/IC749786.png" title="Health Record and Things Illustration" alt="Health Record and Things Illustration" id="Health Record" />

Thing type
----------

A thing type describes a type of data such as blood pressure or weight. Each thing type has its own schema and properties. For example, the Weight Measurement type defines the date, time, and measurement of body weight.  The Blood Pressure type defines the systolic and diastolic values of a blood pressure measurement. Each thing in a health record is an instance of some thing type.

Next, read about <a href="technical-overview-applications.md" id="Introduction_14104_18">HealthVault-integrated applications</a> that can access this data.

<span id="singleColInThreeColLayout"></span>

#### Technical overview

-   <a href="/healthvault/introduction/technical-overview" id="RightRailLinkListSection_14104_13"><strong>1. Terminology</strong></a>
-   <a href="/healthvault/introduction/technical-overview-applications" id="RightRailLinkListSection_14104_19">2. Applications</a>
-   <a href="/healthvault/introduction/technical-overview-permissions" id="RightRailLinkListSection_14104_14">3. Permissions</a>
-   <a href="/healthvault/introduction/technical-overview-connectivity" id="RightRailLinkListSection_14104_15">4. Connectivity</a>
-   <a href="/healthvault/introduction/technical-overview-exchanging-data" id="RightRailLinkListSection_14104_16">5. Exchanging data</a>


