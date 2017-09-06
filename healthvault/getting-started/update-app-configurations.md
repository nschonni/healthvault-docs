---
title: Update app configuration
author: jhutchings1
ms.author: justhu
ms.date: 04/17/2017
ms.topic: article
ms.prod: healthvault
description: Learn how to apply a configuration to your HealthVault app
---

# Update the configuration of a HealthVault app
You should have already configured an app using the [Application Configuration Center](https://go.microsoft.com/fwlink/?linkid=838954). If you haven't please read [configuring a new app in ACC](configuring-new-app-acc.md) for more information. 

## Samples
If you're starting from one of the HealthVault samples published to GitHub, each of these is configured with a PowerShell script which allows you to easily configure the ApplicationID and environments (as needed). Open a PowerShell console, navigate to the folder you chose for your local repository, then navigate to the project root folder and run the following command, specifying your ApplicationID below.

```powershell
.\\Update-WebConfig.ps1 -ApplicationId "00000000-0000-0000-0000-000000000000"
```

> [!NOTE]
> You may need to enable execution of PowerShell scripts in order to run this script. To do so, open an administrative PowerShell and run
> ```powershell
> Set-ExecutionPolicy -RemoteSigned
> ```

## Specifying ApplicationId manually
Most HealthVault apps leverage a Web.config or app.config to specify the ApplicationId. To specify the ApplicationId manually, find the `<configuration><appSettings>` element, and add `<add key="ApplicationId" value="00000000-0000-0000-0000-000000000000" />', inserting your ApplicationId instead of 00000000-0000-0000-0000-000000000000. If you've completed this properly, the config file should look something like this, where other elements may be specified instead of the elipses. 

```xml
<configuration>
  <appSettings>
    ...
    <add key="ApplicationId" value="00000000-0000-0000-0000-000000000000" />
    ...
  </appSettings>
</configuration>
...
```

## Specifying the HealthVault instance
During development, your apps should be targeting the PPE environment for HealthVault. Our samples are pre-configured to target the PPE environment in the US instance, but we offer a PowerShell script to switch to the EU instance. 

```xml
.\\Update-WebConfig.ps1 -Environment EU
```

For more information on HealthVault instance configurations, please see [Instance configuration](/healthvault/concepts/advanced/configurations).

> [!NOTICE] 
> Do not store personal information on the HealthVault PPE environment. These sites are for application development and testing only. You may not distribute or sell connectivity to this site, or any of its content. You are responsible for all activity under your account. Make sure you understand the developer [privacy statement](https://config.healthvault-ppe.com/PrivacyStatement.aspx) and [terms of use](https://config.healthvault-ppe.com/ServiceAgreement.aspx). For a HealthVault account, go to the public [HealthVault](https://www.healthvault.com/) site.

