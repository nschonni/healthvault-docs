Authentication, authorization, and single sign-in
=================================================

This article describes the HealthVault authentication and authorization model.

HealthVault platform authentication
-----------------------------------

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

The samples applications that came with the SDK are registered in the [partner development environment](https://account.healthvault-ppe.com/) and are configured to give the application all access rights (view, update, create, and delete) to the user’s data when they are signed in and no rights in offline mode. If you need different data type access to develop your app, you need to get your own Application ID from the HealthVault Application Configuration Center.

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
-   **Live ID:** If your application uses Windows Live ID for authentication, users have to click a Live ID Sign In button for your app and another button for HealthVault, but do not have to enter their credentials multiple times.

### Integrating with HealthVault

Connections

-   <a href="connectivity.md" id="RightRailLinkListSection_14030_15">Establishing connectivity</a>
-   <a href="web-connectivity.md" id="RightRailLinkListSection_14030_7">Web connections</a>
-   <a href="patient-connect.md" id="RightRailLinkListSection_14030_8">Patient Connect</a>
-   <a href="dopu.md" id="RightRailLinkListSection_14030_9">Drop-off-and-pick-up (DOPU)</a>
-   <a href="direct-messaging.md" id="RightRailLinkListSection_14030_10">Direct Messaging</a>
-   <a href="mobile-devices.md" id="RightRailLinkListSection_14030_18">Mobile devices (SODA)</a>
-   <a href="soda-walkthrough.md" id="RightRailLinkListSection_14030_19">SODA example</a>
-   <a href="connection-troubleshooting.md" id="RightRailLinkListSection_14030_16">Troubleshooting connections</a>

Authorization

-   <a href="authentication-and-authorization.md" id="RightRailLinkListSection_14030_11">Authentication and authorization</a>
-   <a href="offline-access.md" id="RightRailLinkListSection_14030_12">Offline access</a>
-   <a href="optional-authorization.md" id="RightRailLinkListSection_14030_13">Optional authorization</a>
-   <a href="authorization-changes.md" id="RightRailLinkListSection_14030_14">Authorization changes</a>
-   <a href="alternate-user-identifiers.md" id="RightRailLinkListSection_14030_17">Alternate user IDs</a>
-   <a href="multi-record-applications.md" id="RightRailLinkListSection_14030_20">Multi-record applications</a>

