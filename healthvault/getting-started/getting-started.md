---
title: Getting started 
author: rouellam
ms.author: roumen
ms.date: 04/17/2017
ms.topic: article
ms.prod: healthvault
description: Learn how to get started with remote monitoring
---

Getting started
===============

If you’re new to the HealthVault platform, please first review the [technical overview](https://go.microsoft.com/fwlink/?linkid=839408). The core HealthVault platform leverages an XML web-service API, so we offer [SDKs](https://go.microsoft.com/fwlink/?linkid=839410) for most languages and platforms.

The easiest way to get started with remote monitoring is to clone the HealthVaultProviderManagementPortal sample from [GitHub](https://go.microsoft.com/fwlink/?linkid=839405). This sample automatically acquires the HealthVault .NET SDK via Nuget to interface with HealthVault for authentication, and then illustrates 1) how a provider can onboard a patient, and 2) how an app can create and send an Action Plan to that user 3) how a provider can set goals for a patient. Action Plans and goals leverage a new RESTful API, which is detailed in the [HealthVault reference](https://go.microsoft.com/fwlink/?linkid=839407).

> [!NOTE]
> Users must register their account in the HealthVault Insights app in order to receive remote monitoring scenarios. HealthVault Insights is currently only available to users in the United States and the United Kingdom.

### Environments

HealthVault’s <a href="https://go.microsoft.com/fwlink/?linkid=839407" id="PageContent_18332_2">ActionPlans API</a> is available in a pre-production environment to allow you to validate your service’s functionality before real users can use it. You will need to access the following utilities/tools to get started:

1.  HealthVault SDK – <https://www.nuget.org/packages/HealthVault.NET>
2.  Application Configuration Center (ACC) – <https://config.healthvault-ppe.com/>
3.  REST API Base URL
    1.  United States: <https://data.ppe.microsofthealth.net>
    2.  UK: <https://data.ppe.microsoft.health.co.uk>
4.  Platform Base URL – <a href="https://platform.healthvault-ppe.com/platform/" class="uri" id="PageContent_18332_4">https://platform.healthvault-ppe.com/platform/</a> 

**Warning:** Do not store personal information on the HealthVault pre-production environment. These sites are for application development and testing only. You may not distribute or sell connectivity to this site, or any of its content. You are responsible for all activity under your account. Make sure you understand the developer [privacy statement](https://config.healthvault-ppe.com/PrivacyStatement.aspx) and [terms of use](https://config.healthvault-ppe.com/ServiceAgreement.aspx). For a HealthVault account, go to the public [HealthVault](https://www.healthvault.com/) site.

Once you are done with the above, you can proceed to [configuring your app using ACC](https://msdn.microsoft.com/en-us/healthvault/mt778893.aspx)

For more information
--------------------

-   [HealthVault Overview](https://www.healthvault.com/us/en)
-   [HealthVault technical overview](https://go.microsoft.com/fwlink/?linkid=839408)
-   [HealthVault REST API Reference](https://go.microsoft.com/fwlink/?linkid=839407)
-   [HealthVault SDKs](https://go.microsoft.com/fwlink/?linkid=839410)

