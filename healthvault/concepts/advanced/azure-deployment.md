---
title: Azure deployment
author: jhutchings1
ms.author: justhu
ms.date: 08/29/2017
ms.topic: article
ms.prod: healthvault
description: How to configure a HealthVault app to deploy into Azure
---

Deploying to Azure
==========================
When you create a web application, one of the most important steps is [creating key pairs](/healthvault/concepts/connectivity/creating-key-pairs); this process creates a new certificate and places it into the LocalMachine store. This is great for most users and for when you will deploy the app to a dedicated server, however, if your app is going to live in Azure, then the default configuration of the HealthVault .NET Standard SDK isn't going to work properly. Instead, you'll have to deploy the private key into the CurrentUser's store and update the configuration of your app so that the SDK reads from the proper place. 

You can configure the following property in your web.config file in order to update the SDK settings.  

```xml
<add key="HV_AppCertStore" value="1" />

``` 

> [!NOTE] 
> Valid values for HV_AppCertStore are:
> 1 = Current User's certificate store
> 2 = Local Machine certificate store (default)
> 