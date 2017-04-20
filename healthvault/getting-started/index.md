---
title: Getting started 
author: rouellam
ms.author: roumen
ms.date: 04/17/2017
ms.topic: article
ms.prod: healthvault
description: Learn how to build your first HealthVault app
---

Getting started with HealthVault
===============

If you’re new to the HealthVault platform, please first review the [technical overview](https://go.microsoft.com/fwlink/?linkid=839408). The core HealthVault platform leverages an XML web-service API, so we offer [SDKs](/healthvault/#pivot=sdkstools) for most languages and platforms.

Getting started with HealthVault is Easy. This guide will walk you through the process. 
1. Download our samples from [GitHub](https://go.microsoft.com/fwlink/?linkid=839405)
2. [Configure your app in the Application Configuration Center](/healthvault/getting-started/configuring-new-app-acc.md)
3. [Configure your app](/healthvault/getting-started/update-app-configurations.md)
4. Build and run the app using Visual Studio
5. (optional) [Invite patients to join your app](/healthvault/getting-started/invite-patients.md)

> [!NOTE]
> In order to use remote monitoring scenarios, users must register their account in the HealthVault Insights app in order to receive remote monitoring scenarios. HealthVault Insights is currently only available to users in the United States and the United Kingdom.

The easiest way to get started with remote monitoring is to clone the HealthVaultProviderManagementPortal sample from [GitHub](https://go.microsoft.com/fwlink/?linkid=839405). This sample automatically acquires the HealthVault .NET SDK via Nuget to interface with HealthVault for authentication, and then illustrates 1) how a provider can onboard a patient, and 2) how an app can create and send an Action Plan to that user 3) how a provider can set goals for a patient. Action Plans and goals leverage a new RESTful API, which is detailed in the [HealthVault reference](https://go.microsoft.com/fwlink/?linkid=839407).

Once you are done with the above, you can proceed to [configuring your app using ACC](/healthvault/getting-started/configuring-new-app-acc.md)

For more information
--------------------

-   [HealthVault Overview](https://www.healthvault.com/us/en)
-   [HealthVault technical overview](https://go.microsoft.com/fwlink/?linkid=839408)
-   [HealthVault REST API Reference](https://go.microsoft.com/fwlink/?linkid=839407)
-   [HealthVault SDKs](https://go.microsoft.com/fwlink/?linkid=839410)

