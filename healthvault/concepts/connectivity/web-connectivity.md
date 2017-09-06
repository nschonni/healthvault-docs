---
title: Web connectivity
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Overview of HealthVault's web connectivity method
---


HealthVault web connectivity
============================

When you connect with HealthVault from a user-facing web-based application, you use the HealthVault Shell redirect interface to send users to HealthVault to sign in and authorize your application to access their records.

The HealthVault Shell redirect interface is a single redirector web page that accepts various query string parameters.

The following targets allow users to establish authorization; each one is optimized for a particular workflow but can transparently handle sign in, account creation, record creation, and authorization for record access:

-   **AUTH** to authenticate user to HealthVault.

-   **APPAUTH** to authorize records to application.

-   **CREATEACCOUNT** to allow user to create a new account and authorize its records to application.

-   **CREATERECORD** to allow user to create a new record and authorize it to application.

When the Shell redirect task has completed, the user is redirected back to the application's actionURL (or to <span class="parameter">ShellURL</span>/application/complete, a page indicating that they have completed the task, if an actionURL is not configured).

This article explains how to use each of these targets to manage workflow with your web-based application.

Authenticating the user to HealthVault
--------------------------------------

For authentication, an application should use <span class="literalValue">AUTH</span> as the value of the **target** parameter and ensure that it sets the <span class="parameter">appid</span> in the **targetqs** parameter to the appropriate application ID.

For example, an application registered with the fictitious application ID <span class="literalValue">11111111-1111-1111-1111-111111111111</span> could initiate the authentication process by redirecting a user to the following URL:

<span class="command">https:// <span class="parameter">shellhostname</span>/redirect.aspx?target=AUTH&targetqs=appid%3D11111111-1111-1111-1111-111111111111</span>

When a user visits the above URL, they are prompted to sign up or sign in to HealthVault. Then, if no record has been authorized for the application, the user is prompted to authorize the application to access a HealthVault record. Upon success (or failure) the user is redirected back to the application with the **APPAUTHSUCCESS** (or **APPAUTHREJECT**) target.

An example response URL:

<span class="command">https:// <span class="parameter">applicationActionURL</span>?target=AppAuthSuccess&wctoken= <span class="parameter">auth\_token</span>&instanceId=1</span>

You can choose either Get or Post for receiving the auth token, using the optional **trm** parameter of the AUTH target (default is Get). Once you have the auth token, call the HealthVault [WebApplicationUtilities.GetPersonInfo](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.web.webapplicationutilities.getpersoninfo) method and pass back the auth token to get the [PersonInfo](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.personinfo) object, which will contain the PersonID and their RecordIDs that are authorized to the application.

The following diagram depicts the auth process.

<img src="https://i-msdn.sec.s-msft.com/dynimg/IC630936.png" title="Web User Authentication Process" alt="Web User Authentication Process" id="IC630936" />

### Mapping your user IDs to HealthVault IDs

When you initiate authentication of HealthVault for your existing users, the redirect interface allows your application to pass the user's unique identifier (in your app) to HealthVault, which is then passed back to the application in the response.

The process works like this:

1.  The application redirects the user to HealthVault.

2.  In the redirect URL, the application passes a value that uniquely identifies the user in the application (a patient identifier, a medical record number, insurance plan number, etc).

    This parameter is passed in the actionqs parameter. For example:

    <span class="command">https:// <span class="parameter">shellhostname</span>/redirect.aspx?target=AUTH&targetqs=appid%3D11111111-1111-1111-1111-111111111111%26actionqs=AppUserId</span>

3.  The user will create an account if necessary and then select a record and authorize it to the application.

4.  The user is redirected back to the application and the identifier is passed back to the application along with an identifier for the HealthVault instance in which the action took place.

    For example:

    <span class="command">https:// <span class="parameter">applicationActionURL</span>?actionqs= <span class="parameter">AppUserId</span>&instanceID=1</span>

    For more information about instance IDs see [HealthVault global architecture](/healthvault/concepts/advanced/global-architecture).

Authorizing application access to the user's records
----------------------------------------------------

Before your application can read or write to a user's HealthVault record, the user must explicitly authorize the access. Application authorization doesn't expire but can be revoked by the user or the application.

You use [Application Configuration Center (ACC)](https://config.healthvault-ppe.com) to set up the rules that govern your application's access to the user's record. On the application authentication page in the HealthVault Shell, the user can see the rules and choose whether to authorize your request to access their record.

When you use the AUTH target, if the user has not authorized at least one record, they will be asked to authorize a record before being returned to your application (as shown in figure 1 above).

Use the APPAUTH target to direct a user to HealthVault Shell to:

-   authorize additional records

-   change option selections if your application has one or more optional authorization rules

For more information, see the APPAUTH redirect target of the <a href="shell-redirect-interface.md" id="PageContent_14079_4">Shell Redirect Interface</a>.

Application-initiated account and record creation
-------------------------------------------------

HealthVault supports application-initiated account and record creation.

Using the redirect interface with a CREATEACCOUNT or CREATERECORD target, applications can direct users to create an account or record.

If the application <span class="nolink">collects record data before redirecting to HealthVault</span>, it can send the data to Shell, which will either match it to an existing record or pre-populate the data into the account creation or record creation page.

After record creation, the user is then immediately presented with a workflow to authorize the application for use with their new HealthVault record. Then, the user is redirected back to the application.

The following diagram depicts this process.

<img src="https://i-msdn.sec.s-msft.com/dynimg/IC630937.png" title="Application-initiated account or record creation" alt="Application-initiated account or record creation" id="IC630937" /> 
