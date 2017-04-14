---
title: Authentication and authorization
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: HealthVault uses a standard web authentication flow
---

# Authentication and authorization model

HealthVault uses a standard web based authentication flow regardless of what type of application this is. Authorization is controlled by the permissions you have configured for your app in the [Application Configuration Center](http://config.healthvault-ppe.com).

If an application uses managed code interfaces to the HealthVault platform, it can create HealthVault authentication protected pages by inheriting from Microsoft.Health.Web.HealthServicePage. In its default state, a HealthServicePage requires authentication, but you can override this requirement by changing the LogOnRequired attribute of the derived class. By overriding LogOnRequired attribute to false, the page can be displayed withouth HealthVault authenticattion.

```c#
protected override bool LogOnRequired 
{ 
    get 
    { 
        return false; 
    } 
} 
```

If the application has set LogOnRequired to false, it can redirect to HealthVault’s authentication page using the HealthServicePage.RedirectToLogOn API.

Application can determine programmatically whether a user is signed in to a HealthServicePage by looking at HealthServicePage.IsLoggedIn. It is set to true when user is signed in. HealthServicePage.PersonInfo.SelectedRecord contains information about the record that the user is currently working with.

Application authorization
-------------------------

The first time a user accesses the protected part of an application, the application needs to request application authorization to Platform. Then, the user is redirected to platform Shell page. This page lets the user authorize the application to work with their data stored in HealthVault. The page describes the authorization that the application has requested through Applicatoin Configuration Center in plain language that the user can understand.

Data type access
----------------

Applications define their minimum required access to a health record that is stored on HealthVault servers through Application Configuration Center. The application configuration contains a section dealing with online access, it is when the user and the application are both authenticated to Microsoft HealthVault, and a section dealing with offline access, which is when the user is not authenticated but the application is. Because users are likely to be more comfortable granting online access than offline access, application developers are encouraged to restrict their more sensitive requests to the online portion of the configuration.

All of the HealthVault samples available on [GitHub](http://www.github.com/microsoft/healthvault-samples) are pre-configured for use with the HealthVault [PPE environment](https://account.healthvault-ppe.com/), however, you will need to create your own Application ID from the HealthVault Application Configuration Center.

An application’s authorization configuration must be approved by Microsoft before the application goes live, in production environment to ensure that applications are working only with data that is relevant. This step helps protect those users who do not carefully read or understand what they are agreeing to during application authorization.

Newly requested Applications in the partner development environment are configured with full rights for "Application Specific Data" type only for online access. Developers can modify it at Application Configuration Center at any time.

-   ONLINE: Read/Create/Update/Delete access to application specific data types
-   OFFLINE: No access

As part of the Go Live process, the set of types that your application can access will be reviewed and may be reduced, as well as the actions that can be performed on those types.

Simulating single sign-in
-------------------------

Microsoft HealthVault and Windows Live ID do not support federated single sign-in, as in a single authentication system being able to authenticate users to other systems. There are three recommendations:

-   **Single account:** Applications should use HealthVault to authenticate their users and not have any application-specific set of credentials.
-   **Offline access:** If historical or architectural constraints require an application to maintain its own credentials, the application can use offline access to a user’s health record to avoid requiring the user to sign in to both the application and the HealthVault. After this has happened, the user can sign in to the application and let the application interact with HealthVault without the user being authenticated by HealthVault. Note that your application need its own Application ID before it can use offline access. The sample applications in the SDK are not permitted to use offline access.
-   **Microsoft Account** If your application uses a Microsoft Account for authentication, users have to click a Microsoft Account sign in button for your app and another button for HealthVault, but do not have to enter their credentials multiple times.
