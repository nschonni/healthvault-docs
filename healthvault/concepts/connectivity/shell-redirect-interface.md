---
title: Shell redirect interface
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn about how the HealthVault redirection interface works for authentication during user login. 
---

HealthVault authentication redirect flow
========================

This article focuses on what application developers need to know about the interfaces between Web applications and the Shell, which are core parts of the HealthVault API.

Redirecting to the Shell
------------------------

An application can access publicly available Shell functionality by using a single redirector page at http:// <span class="parameter">ShellURL</span>/redirect.aspx . For example, an application will redirect the user to the Shell login page for authentication.

To use Shell functionality, the application should construct the redirect URL with two query string parameters:

-   **target** indicates the desired Shell function (see below).

-   **targetqs** is a URL-encoded query string that is passed as-is to the Shell page that services the given target. This query string can include the following parameters:

    -   **redirect** is for non-production use only. For redirections where the Shell redirects to the calling application after performing some function, this value overrides the ActionURL application metadata.

    -   **actionqs** is a value that is returned as-is to the calling application. This value can be used for whatever the application wants.

    -   **extrecordid** is optional and used only for targets that act on a particular record (for example, SHARERECORD). If present, it should be the record identifier for the record that the application wants the Shell to work against.

    -   **lcid** or **culture** is used to specify the display language for the destination target. The lcid parameter must be a valid Locale ID (decimal, such as 1033, not hex). The culture parameter must be a valid ISO format (such as en-US). The language must be supported on that instance of HealthVault. For more information about supported languages, see [instance configurations](/healthvault/concepts/advanced/configurations).

    -   **target-specific parameters** may be required by some of the redirect targets. These parameters are documented with each redirect target below.

    -   **aib** (allow instance bounce) indicates whether the user can be redirected to another instance on this request. For more information, see [global architecture](/healthvault/concepts/advanced/global-architecture).

An application can use Shell functionality by creating a proper redirect URL. Construct the redirect URL with target query parameters: https:// <span class="parameter">ShellUrl</span>/redirect.aspx?target= <span class="parameter">TARGET</span>&targetqs= <span class="parameter">TARGETQS</span>.

You should URL-encode the targetqs. For example:

<span class="literalValue">https:// <span class="parameter">ShellUrl</span>/redirect.aspx?target=APPAUTH&targetqs=appid%3d <span class="parameter">guid</span>%26ismra%3dtrue</span>

### Using the .NET SDK

The .NET SDK has some helper methods that create the URL for you. Using the classes in the [Microsoft.Health.Web](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.web) namespace, a web application can extend the [HealthServicePage](https://docs.microsoft.com/en-us/dotnet/api//microsoft.health.web.healthservicepage) class and invoke the RedirectToShellUrl()) method or can use the [WebApplicationUtilities](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.web.webapplicationutilities) class to redirect to the Shell. For example, if the page extends from the **HealthServicePage** class:

```cs
this.RedirectToShellUrl("APPAUTH", "appid=" + this.ApplicationId.ToString() + "&ismra=true" + "&extrecordid=12854139-f27b-4ab4-ab68-c1757b9fad0w"); 
```

### Redirecting the Shell back to your app

After the target action, the Shell will redirect to the application using its ActionURL, which is specified in the application metadata set in the [Application Configuration Center (ACC)](https://config.healthvault-ppe.com).

These query string parameters are sent along with the request:

-   **target** indicates the purpose of the redirection. This parameter can be an indication of the status of a redirection sent to the Shell, or it can be a simple indicator of a special page to display.

-   **actionqs** is a value originally provided by the application that is sent back to the application on return. Use of this parameter is up to the application.

-   **targetDetails** includes additional information and is used only in special situations (explained later in this document).

-   **instanceID** uniquely identifies the instance in which the shell target was completed. For a list of existing instances, see <a href="/healthvault/concepts/advanced/configurations" id="PageContent_14089_4">instance configurations</a>. For more information, see  <a href="/healthvault/concepts/advanced/global-architecture" id="PageContent_14089_5">global architecture</a>.

When developers are working on an application, the ActionURL may not work because all the developers use a shared application metadata record in the HealthVault development environment (PPE) but need the Shell to redirect to their personal development machines. To deal with this situation, the Shell development environments accept a *redirect* parameter; if this parameter is present, the Shell uses it to return to the application instead of using the ActionURL.

Shell redirect targets API
--------------------------

Shell defines the following redirect targets.

-   [APPAUTH](#appauth)
-   [APPREDIRECT](#appredirect)
-   [APPSIGNOUT](#appsignout)
-   [AUTH](#auth)
-   [CONNECT](#connect)
-   [CREATEACCOUNT](#createaccount)
-   [CREATEAPPLICATION](#createapplication)
-   [CREATERECORD](#createrecord)
-   [EDITRECORD](#editrecord)
-   [HELP](#help)
-   [MANAGEACCOUNT](#manageaccount)
-   [PICKUP](#pickup)
-   [RECONCILE](#reconcile)
-   [RECORDLIST](#recordlist)
-   [SHAREDAPPDETAILS](#sharedappdetails)
-   [SHARERECORD](#sharerecord)
-   [VIEWITEMS](#viewitems)

### APPAUTH

Prompts the user to select a record or records and authorize the application access to them.

An example request URL:

<span class="literalValue">https:// <span class="parameter">ShellUrl</span>/redirect.aspx?target=APPAUTH&targetqs=appid%3D <span class="parameter">guid</span>%26ismra%3Dtrue</span>

An example request URL with redirected response:

<span class="literalValue">https:// <span class="parameter">ShellUrl</span>/redirect.aspx?target=APPAUTH&targetqs=appid%3d <span class="parameter">guid</span>%26ismra%3dtrue%26extrecordid%3d <span class="parameter">guid</span>&trm=post</span>

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>targetqs parameter</p></th>
<th><p>Value</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>appid</p></td>
<td><p>Application identifier</p></td>
<td><p>Comma-delimited list of appids. (Multiple appid is supported only for the APPAUTH target.)</p></td>
</tr>
<tr class="even">
<td><p>ismra (optional)</p></td>
<td><p>True or False</p></td>

<td><p>Default is False. If this value is True, it is an indication that this application wants to be treated as an <a href="/healthvault/concepts/authorization/multi-record-applications" id="PageContent_14089_6">MRA</a>. The user will be allowed to authorize multiple records at once.</p></td>

</tr>
<tr class="odd">
<td><p>extrecordid (optional)</p></td>
<td><p>Record identifier</p></td>
<td><p>Selects the record to be used with the application.</p></td>
</tr>
<tr class="even">
<td><p>onopt# (optional)</p></td>
<td><p>Sequence of online optional authorization rule names identifying which rules to present.</p></td>
<td><p>The sequence begins with 1.</p>
<p>Example: <span class="literalValue">onopt1= <span class="parameter">name1</span>&amp;onopt2= <span class="parameter">name2</span></span></p></td>
</tr>
<tr class="odd">
<td><p>offopt# (optional)</p></td>
<td><p>Sequence of offline optional authorization rule names identifying which rules to present.</p></td>
<td><p>The sequence begins with 1.</p>
<p>Example: <span class="literalValue">offopt1= <span class="parameter">name1</span>&amp;offopt2= <span class="parameter">name2</span></span></p></td>
</tr>
<tr class="even">
<td><p>trm (optional)</p></td>
<td><p>Get or Post</p></td>
<td><p>Determines the token redirection method. Default is Get.</p></td>
</tr>
</tbody>
</table>

After app auth, the browser will be redirected back to the application as per the ActionURL value with the SELECTEDRECORDCHANGED, APPAUTHSUCCESS or APPAUTHREJECT target. For more information, see [Return application targets](#returnApplicationTargets).

An example response from the Shell:

<span class="literalValue">http:// <span class="parameter">ActionURL</span>?target=AppAuthSuccess</span>

In case of an online web application, the application needs to store the auth token and should exchange it in any future calls to the HealthVault web service.

### APPREDIRECT

Redirects the user to another HealthVault application. This target enables one application to communicate with another HealthVault application via the Shell interface.

An example request URL:

<span class="literalValue">https:// <span class="parameter">ShellUrl</span>/redirect.aspx?target=APPREDIRECT&targetqs=appid%3d <span class="parameter">guid</span></span>

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>targetqs parameter</p></th>
<th><p>Value</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>appid</p></td>
<td><p>Destination application identifier</p></td>
<td><p>This is the only method where appid parameter is used for the target application.</p></td>
</tr>
<tr class="even">
<td><p>refappid</p></td>
<td><p>Referring application identifier</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>target</p></td>
<td><p>Parameter value</p></td>
<td><p>This is used as the value of the <em>target</em> parameter when the user's browser is redirected to the destination application's ActionURL.</p></td>
</tr>
<tr class="even">
<td><p>targetqs</p></td>
<td><p>Parameter value</p></td>
<td><p>This is used as the value of the <em>targetqs</em> parameter when the user's browser is redirected to the destination application's ActionURL.</p></td>
</tr>
</tbody>
</table>

### APPSIGNOUT

Signs the user out of HealthVault.

An example request URL:

<span class="literalValue">https:// <span class="parameter">ShellUrl</span>/redirect.aspx?target=APPSIGNOUT&targetqs=appid%3d <span class="parameter">guid</span></span>

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>targetqs parameter</p></th>
<th><p>Value</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>appid</p></td>
<td><p>Application identifier</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>credtoken (optional)</p></td>
<td><p>Authentication token</p></td>
<td><p>Optional but highly recommended. This is used to invalidate the HealthVault authentication token used by the application.</p></td>
</tr>
</tbody>
</table>

After the user signs out, the browser is redirected to the application with the SIGNOUT target. See [Return application targets](#returnApplicationTargets).

An example response URL:

<span class="literalValue">https:// <span class="parameter">ActionURL</span>?target=SignOut</span>

The .NET SDK wrapper for this target is the [HealthServicePage.SignOut](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.web.healthservicepage.signout.aspx) method. This method also discards the application auth cookie; discarding the cookie is required to sign the user out of the application. If the application does not use this method, it must manually delete the auth cookie when signing the user out.

### AUTH

Allows the user to log into HealthVault. If the user has not authorized any records for the application, or if the *foreceappauth* parameter is passed in, the user will also be asked to authorize one or more records.

A scenario where this target will be used is when the user is first signing in to HealthVault.

An example request URL:

<span class="literalValue">https:// <span class="parameter">ShellUrl</span>/redirect.aspx?target=AUTH&targetqs=appid%3d <span class="parameter">guid</span></span>

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>targetqs parameter</p></th>
<th><p>Value</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>appid</p></td>
<td><p>Application identifier</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>ismra (optional)</p></td>
<td><p>True or False</p></td>
<td><p>Default is False.</p>
<p>If this value is true, it is an indication that this application wants to be treated as an  <a href="/healthvault/concepts/authorization/multi-record-applications" id="PageContent_14089_8">MRA</a>. The user will be allowed to authorize multiple records at once.</p></td>
</tr>
<tr class="odd">
<td><p>trm (optional)</p></td>
<td><p>Get or Post</p></td>
<td><p>Determines the token redirection method. Default is Get.</p></td>
</tr>
</tbody>
</table>

After login and (if necessary) application authorization, the browser will be redirected back to the application with either the APPAUTHSUCCESS or APPAUTHREJECT or SELECTEDRECORDCHANGED target. See [Return application targets](#returnApplicationTargets).

Response URL example:

<span class="literalValue">http:// <span class="parameter">ActionURL</span>?target=SelectedRecordChanged</span>

The .NET SDK wrapper for this target is the [HealthServicePage.RedirectToLogOn](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.web.healthservicepage.redirecttologon.aspx) method, which additionally sets the *actionqs* parameter to the full relative path of the current page, including query string parameters, which is used to ensure that the user lands back on the page they started from. However, this use of actionqs is by convention only and other platforms need not follow it.

In case of an online web application, the application needs to store the auth token and should exchange it in any further calls to the HealthVault web service.

### CONNECT

Allows a user to view (and accept or reject) a Patient Connect request.

An example request URL:

<span class="literalValue">https:// <span class="parameter">ShellUrl</span>/redirect.aspx?target=CONNECT&targetqs=packageid%3d <span class="parameter">guid</span></span>

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>targetqs parameter</p></th>
<th><p>Value</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>packageid</p></td>
<td><p>Identity code for the connection request</p></td>
<td><p>The unique code generated by HealthVault that identifies the request.</p></td>
</tr>
</tbody>
</table>

For more information about Patient Connect, see <a href="patient-connect.md" id="PageContent_14089_9">Establishing a connection with a user using Patient Connect</a>.

### CREATEACCOUNT

Allows the user to create a new HealthVault account and authorize the application to access it.

An example request URL:

<span class="literalValue">https:// <span class="parameter">ShellUrl</span>/redirect.aspx?target=CREATEACCOUNT&targetqs=appid%3d <span class="parameter">guid</span></span>

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>targetqs parameter</p></th>
<th><p>Value</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>appid</p></td>
<td><p>Application identifier</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>ismra (optional)</p></td>
<td><p>True or False</p></td>
<td><p>Default is False.</p>
<p>If this value is True, it is an indication that this application wants to be treated as an <a href="/healthvault/concepts/authorization/multi-record-applications" id="PageContent_14089_10">MRA</a>. The user will be allowed to authorize multiple records at once.</p></td>
</tr>
<tr class="odd">
<td><p>onopt# (optional)</p></td>
<td><p>Sequence of online optional authorization rule names identifying which rules to present.</p></td>
<td><p>The sequence begins with 1.</p>
<p>Example: <span class="literalValue">onopt1= <span class="parameter">name1</span>&amp;onopt2= <span class="parameter">name2</span></span></p></td>
</tr>
<tr class="even">
<td><p>offopt# (optional)</p></td>
<td><p>Sequence of offline optional authorization rule names identifying which rules to present.</p></td>
<td><p>The sequence begins with 1.</p>
<p>Example: <span class="literalValue">offopt1= <span class="parameter">name1</span>&amp;offopt2= <span class="parameter">name2</span></span></p></td>
</tr>
<tr class="odd">
<td><p>flow (optional)</p></td>
<td><p><span class="literalValue">eprep</span> or <span class="literalValue">WMgmt</span></p></td>
<td><p>Currently there are 2 specialized sign-up workflows that are supported: <span class="literalValue">eprep</span> for the emergency preparedness workflow, and <span class="literalValue">WMgmt</span> for the weight management workflow.</p></td>
</tr>
<tr class="even">
<td><p>daddrec</p></td>
<td><p>True or False</p></td>
<td><p>True to disable the <span class="label">Add another family member</span> link; otherwise, False.</p></td>
</tr>
</tbody>
</table>

To pass in user data that was collected by your application in order to pre-populate the account and record creation pages, see the discussion in [Posting user data with application-initiated account and record creation](#postingUserData).

After the user has created the HealthVault account, they will be prompted to authorize it for the application. The browser will be redirected back to the application with the APPAUTHSUCCESS or APPAUTHREJECT target. See [Return application targets](#returnApplicationTargets).

An example response URL:

<span class="literalValue">http:// <span class="parameter">ActionURL</span>?target=AppAuthSuccess&targetDetails=CreateAccountSuccess</span>

Using the CreateAccount target doesn't guarantee that the user will create a new account. Users will be redirected to the account sign up page. But the user can then sign in to an existing account and authorize it. The application can check if the user canceled creating a new account by parsing the targetDetails after the user returns to the application. See [Return application targets](#returnApplicationTargets).

### CREATEAPPLICATION

Allows a SODA application to create a new client instance.

An example request URL:

<span class="literalValue">https:// <span class="parameter">ShellUrl</span>/redirect.aspx?target=CREATEAPPLICATION&targetqs=%3Fappid%3D <span class="parameter">guid</span>%26appCreationToken%3D <span class="parameter">token</span>%26instanceName%3D <span class="parameter">instance</span>%26ismra%3Dtrue</span>

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>targetqs parameter</p></th>
<th><p>Value</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>appid</p></td>
<td><p>Unique ID of the master application</p></td>
<td><p>The new client application will be an instance of this master application.</p></td>
</tr>
<tr class="even">
<td><p>appCreationToken</p></td>
<td><p>Token obtained from HealthVault containing the shared secret and information needed to provision the application instance</p></td>
<td><p>The token is obtained by calling the <strong>NewApplicationCreationInfo</strong> method in the HealthVault web services XML API. For more information, see the <a href="http://go.microsoft.com/?linkid=9810881">Method browser</a>.</p></td>
</tr>
<tr class="odd">
<td><p>instancename</p></td>
<td><p>Name of the client application</p></td>
<td><p>A string, such as a mobile device name, that identifies the device that the new client application instance will run on.</p></td>
</tr>
</tbody>
</table>

Once the child application is created, the Shell will automatically redirect the user to the sign-in page. Upon successful user login, the Shell will redirect to the record selection page. After the user selects records and gives the application access to them, the browser will be redirected back to the application with the APPAUTHSUCCESS target. The application should then invoke the **GetAuthorizedRecords** HealthVault web services XML method to get the authorized records for the application instance.

### CREATERECORD

Allows the user to create a new HealthVault record and authorize it for access by the application.

An example request URL:

<span class="literalValue">https:// <span class="parameter">ShellUrl</span>/redirect.aspx?target=CREATERECORD&targetqs=appid%3d <span class="parameter">guid</span></span>

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>targetqs parameter</p></th>
<th><p>Value</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>appid</p></td>
<td><p>Application identifier</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>ismra (optional)</p></td>
<td><p>True or False</p></td>
<td><p>Default is False.</p>
<p>True to have the Shell treat the application as an <a href="/healthvault/concepts/authorization/multi-record-applications" id="PageContent_14089_11">MRA</a>. The user will be allowed to authorize multiple records at once.</p></td>
</tr>
<tr class="odd">
<td><p>onopt# (optional)</p></td>
<td><p>Sequence of online optional authorization rule names identifying which rules to present.</p></td>
<td><p>The sequence begins with 1.</p>
<p>Example: <span class="literalValue">onopt1= <span class="parameter">name1</span>&amp;onopt2= <span class="parameter">name2</span></span></p></td>
</tr>
<tr class="even">
<td><p>offopt# (optional)</p></td>
<td><p>Sequence of offline optional authorization rule names identifying which rules to present.</p></td>
<td><p>The sequence begins with 1.</p>
<p>Example: <span class="literalValue">offopt1= <span class="parameter">name1</span>&amp;offopt2= <span class="parameter">name2</span></span></p></td>
</tr>
</tbody>
</table>

To pass in user data that was collected by your application in order to pre-populate the record creation pages, see the discussion in [Posting user data with application-initiated account and record creation](#postingUserData).

After the user has created the record, they will be prompted to authorize it for the application. The browser will be redirected back to the application with the APPAUTHSUCCESS or APPAUTHREJECT target. For more information, see [Return application targets](#returnApplicationTargets).

An example response URL:

<span class="literalValue">http:// <span class="parameter">ActionURL</span>?target=AppAuthSuccess</span>

### EDITRECORD

Prompts the user to edit the profile information of the specified record.

An example request URL:

<span class="literalValue">https:// <span class="parameter">ShellUrl</span>/redirect.aspx?target=EDITRECORD&targetqs=appid%3d <span class="parameter">guid</span>%26extrecordid%3d <span class="parameter">guid</span></span>

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>targetqs parameter</p></th>
<th><p>Value</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>appid</p></td>
<td><p>Application identifier</p></td>
</tr>
<tr class="even">
<td><p>extrecordid</p></td>
<td><p>Record identifier</p></td>
</tr>
</tbody>
</table>

After the user has either saved or canceled, the browser will be redirected back to the application with EDITRECORDCOMPLETE or EDITRECORDCANCEL. See [Return application targets](#returnApplicationTargets).

An example response URL:

<span class="literalValue">http:// <span class="parameter">ActionURL</span>?target=EditRecordComplete</span>

### HELP

This target can be used to open the pages displayed at help.aspx, such as HealthVault Help, the privacy policy, the service agreement, and the code of conduct.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>targetqs parameter</p></th>
<th><p>Value</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>topicid (optional)</p></td>
<td><p>String value identifying the topic to display</p></td>
<td><p>If no topicID is present, the help page is shown.</p>
<p>Topic IDs can be found by looking at the <em>topicid</em> parameters in the HealthVault Shell; however, most of these topics are not guaranteed to be <span class="parameter">durable</span> and we do not recommend linking to them under normal circumstances.</p>
<p>Two exceptions to this recommendation are the <strong>PrivacyPolicy</strong> and <strong>ServiceAgreement</strong> topics, which can be used to direct a browser to these important topics.</p></td>
</tr>
</tbody>
</table>

The Shell does not provide a mechanism to return back to the application. We recommend that you open this target in a new browser window.

### MANAGEACCOUNT

Takes the user to a page where they can manage their account profile.

An example request URL:

<span class="literalValue">https:// <span class="parameter">ShellUrl</span>/redirect.aspx?target=MANAGEACCOUNT&targetqs=appid%3d <span class="parameter">guid</span></span>

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>targetqs parameter</p></th>
<th><p>Value</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>appid</p></td>
<td><p>Application identifier</p></td>
</tr>
</tbody>
</table>

The Shell does not provide a mechanism to return back to the application. We recommend that you open this target in a new browser window.

### PICKUP

Allows a user to pick up a DOPU package.

An example request URL:

<span class="literalValue">https:// <span class="parameter">ShellUrl</span>/target=PICKUP&targetqs=packageid%3d <span class="parameter">guid</span></span>

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>targetqs parameter</p></th>
<th><p>Value</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>packageid</p></td>
<td><p>Identity code for the package</p></td>
<td><p>The unique code generated by HealthVault that identifies the package.</p></td>
</tr>
</tbody>
</table>

More information about DOPU packages can be found in the article <a href="/healthvault/concepts/connectivity/drop-off-pick-up" id="PageContent_14089_12">HealthVault drop-off and pick-up (DOPU)</a>.

### RECONCILE

Prompts the user to review the individual data elements within a CCR or CCD file and decide how they want to integrate them as individual HealthVault items into their record. For each item in the file, the user can choose to add it to their record, replace an existing item with it, or ignore (not add) it. If the document was automatically reconciled, then the user will be taken instead to an interface to review the data that was added.

The application must use the extrecordid parameter to indicate the record that contains the CCR/CCD file.

An example request URL:

<span class="literalValue">https:// <span class="parameter">ShellUrl</span>/redirect.aspx?target=RECONCILE&targetqs=appid%3d <span class="parameter">guid</span>%26extrecordid%3d <span class="parameter">guid</span>%26thingid%3d <span class="parameter">guid</span></span>

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>targetqs parameter</p></th>
<th><p>Value</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>appid</p></td>
<td><p>Application identifier</p></td>
</tr>
<tr class="even">
<td><p>extrecordid (optional)</p></td>
<td><p>Record identifier</p></td>
</tr>
<tr class="odd">
<td><p>thingid</p></td>
<td><p>Thing ID of the CCR/CCD file that should be displayed to the user.</p></td>
</tr>
</tbody>
</table>

Depending on the user action, the browser will be redirected back to the application with RECONCILECOMPLETE, RECONCILEFAILURE, or RECONCILECANCELED. For more information, see [Return application targets](#returnApplicationTargets).

### RECORDLIST

Displays the records in the user's HealthVault account.

An example request URL:

<span class="literalValue">https:// <span class="parameter">ShellUrl</span>/redirect.aspx?target=RECORDLIST</span>

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>targetqs parameter</p></th>
<th><p>Value</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>appid (optional)</p></td>
<td><p>Application identifier</p></td>
<td><p>If an application ID is specified, the page displays only the records which that application is authorized to access.</p></td>
</tr>
</tbody>
</table>

The Shell does not provide a mechanism to return back to the application. We recommend that you open this target in a new browser window.

### SHAREDAPPDETAILS

Allows the user to update application authorization for a HealthVault record.

The application must use the extrecordid parameter to indicate the authorized record.

An example request URL:

<span class="literalValue">https:// <span class="parameter">ShellUrl</span>/redirect.aspx?target=SHAREDAPPDETAILS&targetqs=sappid%3d <span class="parameter">guid</span>%26extrecordid%3d <span class="parameter">guid</span></span>

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>targetqs parameter</p></th>
<th><p>Value</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>appid</p></td>
<td><p>Application identifier</p></td>
</tr>
<tr class="even">
<td><p>extrecordid (optional)</p></td>
<td><p>Record identifier</p></td>
</tr>
</tbody>
</table>

The Shell does not provide a mechanism to return back to the application. We recommend that you open this target in a new browser window.

### SHARERECORD

Provides an interface for the user to share a record with another HealthVault user. Only custodians can share records with other users.

The application uses the extrecordid parameter to indicate which record to share.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Note</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>The data types to be shared are pre-selected based on application authorization rules of specified AppId. It includes both online and offline authorization rules.</p></td>
</tr>
</tbody>
</table>

An example request URL:

<span class="literalValue">https:// <span class="parameter">ShellUrl</span>/redirect.aspx?target=SHARERECORD&targetqs=appid%3d <span class="parameter">guid</span>%26extrecordid%3d <span class="parameter">guid</span></span>

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>targetqs parameter</p></th>
<th><p>Value</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>appid</p></td>
<td><p>Application identifier</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>extrecordid (optional)</p></td>
<td><p>Record identifier</p></td>
<td><p>Default record will be used when extrecordid is not present in the URL.</p></td>
</tr>
</tbody>
</table>

After completing the sharing operation, the browser is redirected to the application with either the SHARERECORDSUCCESS or SHARERECORDFAILED target. If the extrecordid parameter is invalid, the browser redirects with the APPAUTHINVALIDRECORD. See [Return application targets](#returnApplicationTargets).

### VIEWITEMS

Allows a HealthVault user to view all of the items of a specified data type in their record.

An example request URL:

<span class="literalValue">https:// <span class="parameter">ShellUrl</span>/redirect.aspx?target=VIEWITEMS&targetqs=appid%3d <span class="parameter">guid</span>%26typeid%3d <span class="parameter">guid</span>%26additem%3dtrue%26extrecordid%3d <span class="parameter">guid</span></span>

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>targetqs parameter</p></th>
<th><p>Value</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>appid</p></td>
<td><p>Application identifier</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>typeid</p></td>
<td><p>Thing type identifiers</p></td>
<td><p>Comma-delimited list of thing type IDs.</p></td>
</tr>
<tr class="odd">
<td><p>additem</p></td>
<td><p>True or False</p></td>
<td><p>Default is False. If this value is True, the Add Item dialog box for the data type is displayed.</p></td>
</tr>
<tr class="even">
<td><p>extrecordid</p></td>
<td><p>Record identifier</p></td>
<td><p></p></td>
</tr>
</tbody>
</table>

The Shell does not provide a mechanism to return back to the application. We recommend that you open this target in a new browser window.

Posting user data with application-initiated account and record creation
------------------------------------------------------------------------

If an application collects the user's demographic information before the user signs up for a HealthVault account, the application can send the demographic information to the Shell. The Shell uses the information to create the new HealthVault account or record, simplifying the sign up and record creation processes.

The application can send user information in POST data. The parameters to the redirect target (the targetqs parameter) are the same as a GET request.

Users will be redirected to the account sign up page for a new account. At that point, if the user signs in to existing account, the profile data from the application will be ignored and the user will proceed to application authorization.

These Shell redirect targets support POST data:

-   CREATEACCOUNT

-   CREATERECORD

The application should validate the user information before sending it to the Shell. For example, ensure that the data uses the correct date format for birthdate. If the Shell detects an error, it will display a field validation error message to the user.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Item</p></th>
<th><p>POST parameter name</p></th>
<th><p>Requirements and validation rules</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Requested action</p></td>
<td><p>CreateAccountAndRecord</p></td>
<td><p>True or False. Set to True if you are using with CreateAccount target.</p></td>
</tr>
<tr class="even">
<td><p>Requested action</p></td>
<td><p>CreateRecord</p></td>
<td><p>True or False. Set to True if you are using with CreateRecord target.</p>
<p>If CreateRecord=True, don't post account data, as it won't be used even if the user needs to create an account.</p></td>
</tr>
<tr class="odd">
<td><p>Account first name</p></td>
<td><p>Account.FirstName</p></td>
<td><p>Required when CreateAccountAndRecord=True.</p>
<p>1 – 50 printable characters, including Unicode characters.</p>
<p>White space is allowed. The less-than sign (&lt;) and the greater-than sign (&gt;) characters are not allowed.</p></td>
</tr>
<tr class="even">
<td><p>Account last name</p></td>
<td><p>Account.LastName</p></td>
<td><p>Required when CreateAccountAndRecord=True.</p>
<p>1 – 50 printable characters, including Unicode characters.</p>
<p>White space is allowed. The less-than sign (&lt;) and the greater-than sign (&gt;) characters are not allowed.</p></td>
</tr>
<tr class="odd">
<td><p>Account date of birth</p></td>
<td><p>Account.BirthDate</p></td>
<td><p>Required. ISO 8601 date format (yyyy-MM-dd).</p></td>
</tr>
<tr class="even">
<td><p>Account postal code</p></td>
<td><p>Account.PostalCode</p></td>
<td><p>Required when CreateAccountAndRecord=True.</p></td>
</tr>
<tr class="odd">
<td><p>Account e-mail address</p></td>
<td><p>Account.Email</p></td>
<td><p>Required when CreateAccountAndRecord=True.</p>
<p>Regular expression is defined by HealthVault Platform:</p>
<p>^([\w-+\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,48}|[0-9]{1,3})(\]?)$</p></td>
</tr>
<tr class="even">
<td><p>Account country/region</p></td>
<td><p>Account.CountryCode</p></td>
<td><p>Required when CreateAccountAndRecord=True.</p>
<p>ISO country/region code (2 characters) from ISO 3166 vocabulary.</p></td>
</tr>
<tr class="odd">
<td><p>Account locale</p></td>
<td><p>Account.LanguageCode</p></td>
<td><p>Required when CreateAccountAndRecord=True.</p>
<p>First part of Windows locale ID (for example, &quot;en&quot; of en-US).</p>
<p>Language code defined by ISO 639. If specified one is not supported by HealthVault platform, it will fall back to default language for that deployment.</p></td>
</tr>
<tr class="even">
<td><p>Account gender</p></td>
<td><p>Account.Gender</p></td>
<td><p>Required when CreateAccountAndRecord=True.</p>
<p>F, M, or UNSP (&quot;UNSP&quot; means unspecified) (vocab code from wc.gender)</p></td>
</tr>
<tr class="odd">
<td><p>Account state</p></td>
<td><p>Account.StateCode</p></td>
<td><p>Optional for US. 2-character code from wc.states.</p>
<p>Required for Canada when CreateAccountAndRecord=True. 2-character code from wc.provinces.</p>
<p>Required for UK when CreateAccountAndRecord=True. 2-character code from wc.constituentcountries.</p></td>
</tr>
<tr class="even">
<td><p>Record relationship</p></td>
<td><p>Record.Relationship</p></td>
<td><p>Required. Code from vocabulary wc.relationship-types.</p></td>
</tr>
<tr class="odd">
<td><p>Record first name</p></td>
<td><p>Record.FirstName</p></td>
<td><p>Required.</p>
<p>1 – 50 printable characters, including Unicode characters.</p>
<p>White space is allowed. The less-than sign (&lt;) and the greater-than sign (&gt;) characters are not allowed.</p></td>
</tr>
<tr class="even">
<td><p>Record middle name</p></td>
<td><p>Record.MiddleName</p></td>
<td><p>Optional.</p>
<p>1 – 50 printable characters, including Unicode characters.</p>
<p>White space is allowed. The less-than sign (&lt;) and the greater-than sign (&gt;) characters are not allowed.</p></td>
</tr>
<tr class="odd">
<td><p>Record last name</p></td>
<td><p>Record.LastName</p></td>
<td><p>Required.</p>
<p>1 – 50 printable characters, including Unicode characters.</p>
<p>White space is allowed. The less-than sign (&lt;) and the greater-than sign (&gt;) characters are not allowed.</p></td>
</tr>
<tr class="even">
<td><p>Record street address</p></td>
<td><p>Record.StreetAddress1</p></td>
<td><p>Optional.</p>
<p>1 – 100 printable characters, including Unicode characters.</p>
<p>White space is allowed.</p></td>
</tr>
<tr class="odd">
<td><p>Record street address 2</p></td>
<td><p>Record.StreetAddress2</p></td>
<td><p>Optional.</p>
<p>1 – 100 printable characters, including Unicode characters.</p>
<p>White space is allowed.</p></td>
</tr>
<tr class="even">
<td><p>Record city</p></td>
<td><p>Record.City</p></td>
<td><p>Optional.</p>
<p>1 – 100 printable characters, including Unicode characters.</p>
<p>White space is allowed.</p></td>
</tr>
<tr class="odd">
<td><p>Record state</p></td>
<td><p>Record.StateCode</p></td>
<td><p>Optional for US. 2-character code for US from vocab wc.states</p>
<p>Required for Canada. 2-character code from vocab wc.provinces</p>
<p>Required for UK. 2-character code from vocab wc.constituentcountries</p></td>
</tr>
<tr class="even">
<td><p>Record postal code</p></td>
<td><p>Record.PostalCode</p></td>
<td><p>Required.</p></td>
</tr>
<tr class="odd">
<td><p>Record country/region</p></td>
<td><p>Record.CountryCode</p></td>
<td><p>Required. ISO country/region code (2 characters) from ISO 3166 vocabulary.</p></td>
</tr>
<tr class="even">
<td><p>Record email address</p></td>
<td><p>Record.Email</p></td>
<td><p>Optional.</p>
<p>Regular expression is defined by HealthVault Platform.</p>
<p>^([\w-+\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,48}|[0-9]{1,3})(\]?)$</p></td>
</tr>
<tr class="odd">
<td><p>Record phone number</p></td>
<td><p>Record.PhoneNumber</p></td>
<td><p>Optional.</p></td>
</tr>
<tr class="even">
<td><p>Record birth date</p></td>
<td><p>Record.BirthDate</p></td>
<td><p>Required. ISO 8601 date format (yyyy-MM-dd).</p></td>
</tr>
<tr class="odd">
<td><p>Record gender</p></td>
<td><p>Record.Gender</p></td>
<td><p>Required. F, M, or UNSP (vocab code from wc.gender).</p></td>
</tr>
<tr class="even">
<td><p>Record ethnicity</p></td>
<td><p>Record.EthnicityCode</p></td>
<td><p>Optional. Code from vocabulary wc.ethnicity-types.</p></td>
</tr>
<tr class="odd">
<td><p>Record language</p></td>
<td><p>Record.LanguageCode</p></td>
<td><p>Optional. Code from vocabulary ISO 639.</p></td>
</tr>
</tbody>
</table>

Return application targets
--------------------------

Applications must be sure to handle actions appropriately. Properly supporting these targets is a key to providing a trustworthy experience for HealthVault application users.

**APPAUTHINVALIDRECORD**

Returned when the Shell finds an invalid record id in the extrecordid parameter.

**APPAUTHREJECT**

Returned when the user canceled an application auth request.

If this return is the result of the .NET SDK [HealthServicePage.RedirectToLogOn](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.web.healthservicepage.redirecttologon.aspx) or [WebApplicationUtilities.RedirectToLogOn](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.web.webapplicationutilities.redirecttologon.aspx) method, the actionqs parameter is set to the relative path and query string that the user was viewing when the logon request was initiated.

In addition, TargetDetails are also appended to the return target; either CREATEACCOUNTSUCCESS or CREATEACCOUNTFAILURE.

For instance in case of the CreateAccount target, the Shell can redirect to the app with CREATEACCOUNTSUCCESS in the TargetDetails parameter as part of APPAUTHREJECT upon successful account creation but failure in to authorize the application to access the record.

**APPAUTHSUCCESS**

Returned when the user has successfully logged on and/or granted application authorization.

If this return is the result of the .NET SDK **RedirectToLogOn** method, the actionqs parameter is set to the relative path and query string that the user was viewing when the logon request was initiated.

In addition, TargetDetails are also appended to the return target; either CREATEACCOUNTSUCCESS or CREATEACCOUNTFAILURE.

**EDITRECORDCOMPLETE**

Returned when the user clicks "Save" on the Edit Record page.

**EDITRECORDCANCEL**

Returned when the user clicks "Cancel" on the Edit Record page.

**RECONCILECANCELED**

Returned when the user canceled the reconcile process for a CCR or CCD.

**RECONCILECOMPLETE**

Returned when the CCR/CCD reconcile transaction completes successfully.

**RECONCILEFAILURE**

Returned when the CCR/CCD reconcile transaction fails.

**SELECTEDRECORDCHANGED**

Returned from an APPAUTH request where the user selects a new record for use in an SRA application .

It is important that the application refresh any cached record-related information when this target is received. Users of the .NET SDK can use the [HealthServicePage.RefreshAndPersist()](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.web.healthservicepage) method to accomplish this refresh.

**SHARERECORDFAILED**

Returned when a record sharing invitation could not be sent.

**SHARERECORDSUCCESS**

Returned when a record sharing invitation was sent successfully.

**SIGNOUT**

Returned from an APPSIGNOUT request to the Shell.
