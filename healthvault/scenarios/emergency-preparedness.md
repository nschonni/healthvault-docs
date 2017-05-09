---
title: Emergency preparedness
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn about how HealthVault can help you with emergency preparedness scenarios. 
---


Use HealthVault's emergency preparedness scenario
======================

HealthVault has a number of features centered around emergency preparedness scenarios.

Emergency prep signup flow
--------------------------

There is an alternate sign-up flow for HealthVault that walks users through entering the data required to complete an emergency profile. This sign-up flow can be accessed through a new **eprep=true** parameter on the Shell CREATEACCOUNT redirect target. See <a href="/healthvault/concepts/connectivity/shell-redirect-interface" id="PageContent_13990_8">shell redirect interface</a> .

Emergency profile
-----------------

There is a new 'Emergency Profile' section on the HealthVault website. The data in a user's emergency profile consists of the following data types:

-   Allergies
-   Conditions
-   Contacts
-   Medications (current, based on discontinued-date)
-   Medical Devices

A user’s emergency profile can be accessed be applications by requesting those data types through the standard platform and SDK methods.

### Integrating with HealthVault

See also

-   <a href="/healthvault/concepts/connectivity/shell-redirect-interface" id="RightRailLinkListSection_13990_7">Shell redirect interface</a>

