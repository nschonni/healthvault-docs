---
title: Overview | connectivity 
author: jhutchings1
ms.author: justhu
ms.date: 11/10/2018
ms.topic: article
ms.prod: healthvault
description: Get a quick overview of how apps and services can connect to HealthVault. 
---

Technical overview: connectivity
================================

An application can access a health record in several ways.

Web authorization
-----------------

This model is designed for user-facing websites. The website can redirect a person to HealthVault to create an account or sign into an account. The user then authorizes the web application and is redirected back to the website. The website is passed sufficient information to subsequently access the health record of the person.

1.  The web application redirects the user to HealthVault
2.  The user authorizes the application
3.  HealthVault redirects the user back to the application
4.  The application stores the information sent back
5.  The application connects to the health record

See  <a href="/healthvault/concepts/connectivity/web-connectivity" id="PageContent_13983_3">web connectivity</a>.

Patient Connect
---------------

This model provides a way to perform offline authorizations. The application creates a "connection request" with an arbitrary secret question/answer. The patient goes to HealthVault to respond to the connection request with the correct secret answer. In the meantime the application polls the HealthVault service at regular intervals to check for new authorizations. 

1.  The provider collects an answer to a secret question.
2.  The provider creates a connection request and gives the user a pickup code.
3.  The user visits the HealthVault website.
4.  The user enters the pickup code and authorizes the application.
5.  The application learns about the authorization through polling.

See  <a href="/healthvault/concepts/connectivity/patient-connect" id="PageContent_13983_7">Patient Connect</a>.

Drop-Off Pick-Up (DOPU)
-----------------------

This model allows an application to send data without establishing a long-term authorization to a record.  For example, a clinic can use DOPU to send discharge information to the patient.  DOPU is very similar to Patient Connect (see above) except that the data is imported without establishing any authorization or relationship with the provider.

1.  The provider asks the user for an answer to a secret question.
2.  The application creates a DOPU package and generates a pickup code.
3.  The user visits the HealthVault website.
4.  The user enters the secret answer and pickup code.

See  <a href="/healthvault/concepts/connectivity/drop-off-pick-up" id="PageContent_13983_8">Drop-Off and pick-Up (DOPU)</a>

Mobile
------

This model is designed for native software running on tablets, phones and other mobile devices.  The client application communicates with HealthVault directly.

1.  The user installs a mobile application.
2.  The application detects the lack of authorization.
3.  The application opens an embedded browser and redirects to the authorization page.
4.  The user authorizes the application.
5.  The application detects and saves the authorization information.

See  <a href="/healthvault/concepts/connectivity/mobile-devices" id="PageContent_13983_5">Mobile development</a>

Putting it together
-------------------

HealthVault supports multiple connection methods for different types of application scenarios.

Next, learn about <a href="technical-overview-exchanging-data.md" id="Introduction_14106_22">reading and writing data</a>.

<span id="singleColInThreeColLayout"></span>

#### Technical overview

-   <a href="technical-overview.md" id="RightRailLinkListSection_14106_8">1. Terminology</a>
-   <a href="technical-overview-applications.md" id="RightRailLinkListSection_14106_23">2. Applications</a>
-   <a href="technical-overview-permissions.md" id="RightRailLinkListSection_14106_12">3. Permissions</a>
-   <a href="technical-overview-connectivity.md" id="RightRailLinkListSection_14106_9">4. Connectivity</a>
-   <a href="technical-overview-exchanging-data.md" id="RightRailLinkListSection_14106_13">5. Exchanging data</a>
