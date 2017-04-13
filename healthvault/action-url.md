---
title: Action URL
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
---

Interacting with ActionUrl
==========================

For security reasons, the production version of the HealthVault Web site redirects only to URLs that have been submitted to Microsoft in advance. Each application must register an **ActionUrl** on the HealthVault server. The page at this **ActionUrl** should be capable of understanding the targets that can be passed to the application by the HealthVault Web site.

In non-production environments, a developer can override this submitted URL by specifying a **NonProductionActionUrlRedirectOverride** in their web.config file.

The SDK contains a class that implements the **ActionUrl**/redirect behavior based on web.config settings.

Overriding the ActionUrl in dev/test environments
-------------------------------------------------

When you are developing and testing your application in non-production environments, you may want the HealthVault Web site to redirect to a URL other than the registered one. This is especially true if you have not yet registered an **ActionUrl** with Microsoft HealthVault.

For non-production environments, you can override the registered URL by specifying a **NonProductionActionUrlRedirectOverride** parameter in your web.config file. Its value should be a relative path from your application root without a leading slash. This format allows Visual Studio developers to utilize its built-in Web server, where the port number can change after each compilation. For example, instead of **http://mydevbox/subdir/actionUrlHandler.aspx**, the config value would be **subdir/actionUrlHandler**.aspx—note that there is no leading slash.

The **HealthRecordPage** functions **SignOut** and **RedirectToLogOn** use the web.config value (see below for name) if it is present and non-empty. If this value has not been specified in your web.config file, then redirects—including **LogOn**—do not behave correctly in non-production environments. The server will try to redirect to the **ActionUrl** that is registered on the server, which is not a place in your development environment. If you are using a sample application’s **ApplicationId**, the registered **ActionUrl** takes you to an error page.

This override parameter is ignored in the Production environment.

Building your action handler page
---------------------------------

The SDK contains a class that you can use to quickly and easily build an **ActionUrl** handler: **Microsoft.Health.Web.HealthServiceActionPage**. This page can process the **target** parameter for you and can look up the appropriate **RedirectUrl** in your web.config file.

Create an **action.aspx** file at the URL that you specify for the **ActionUrl** when your application is registered. That **action.aspx** file should point to this class for its implementation or point to a class that extends this class. In your web.config file, add entries for each of the targets that your application supports, using **WCPage\_Action** as the prefix for the key. For example, for the Home target, create a setting in the web.config with key **WCPage\_ActionEULA** and the value containing the URL of your application EULA.

Registering an ActionUrl with Microsoft HealthVault
---------------------------------------------------

Registering an **ActionUrl** is one of the steps on the Go-Live checklist that every application must go through before it can access the production environment. A copy of this checklist is available on the MSDN HealthVault site. You can also find instructions for changing this value on MSDN.

ActionUrl targets
-----------------

For production environments you must implement handling of redirection from the shell back to your application for the Application Targets listed on the <a href="shell-redirect-interface.md" id="PageContent_14027_2">Shell Redirect Interface</a>. In the production environment, the action URL must use SSL (e.g., https).

### Integrating with HealthVault

Web development

-   <a href="web-connectivity.md" id="RightRailLinkListSection_14027_9">Web connections</a>
-   <a href="shell-redirect-interface.md" id="RightRailLinkListSection_14027_10">Shell redirect interface</a>
-   <a href="action-url.md" id="RightRailLinkListSection_14027_11">Interacting with ActionUrl</a>
-   <a href="action-url-custom-redirection.md" id="RightRailLinkListSection_14027_12">Customizing redirection</a>
-   <a href="code-security-requirements.md" id="RightRailLinkListSection_14027_13">Code access security permissions</a>

