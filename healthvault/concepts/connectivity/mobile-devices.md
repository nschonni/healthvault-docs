---
title: Mobile apps
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: HealthVault has a special authentication method for mobile apps called SODA. Learn about how to use this in your apps. 
---

Building mobile apps for HealthVault using SODA Authentication
=====================

When creating applications for devices, such as mobile phones, tablets, or PCs, there are two ways to establish connectivity with HealthVault:

-   Use the Software on Device Authentication (SODA) approach to establish a direct connection between each instance of your application and HealthVault.
-   Connect each instance of your application to your own web service, which in turn would have an offline connection to HealthVault.

The advantage of using the SODA approach is that each instance of your application can establish a unique strong identity with HealthVault and doesn't need to use public-key infrastructure (PKI) to authenticate. It is therefore the only way to directly connect a mobile application to HealthVault. Compare this with the web application approach, in which there is only a single application identity, and strong identity is established using PKI with a private key installed on the web servers.

Additionally, users need to authorize the mobile application by signing into HealthVault only once, and the application instance will have access to the user's record throughout the lifetime of the application or until the application or the user chooses to disconnect (de-authorize) the user's health records from the application.

The SODA approach is specifically tailored for writing HealthVault-enabled applications for mobile devices such as the iPhone, Android, and Windows Phone, as well as tablets and PCs. In addition to the HealthVault .NET SDK there are open-source libraries for [iOS](https://github.com/microsoft/hvmobile_vnext), and [Java](http://www.github.com/microsoft/healthvault-java-sdk).

Websites that wish to connect to mobile users exclusively through a device's web browser (for example, the application is not installed on the device) should not use the SODA approach. For more information, see [web connectivity](/healthvault/concepts/connectivity/web-connectivity).

Establishing a connection on a mobile device
--------------------------------------------

Following is a typical connection workflow for a HealthVault mobile application:

1.  User launches application for the first time.

2.  Application obtains a new <span class="parameter">application identifier</span>, <span class="parameter">shared secret</span>, and <span class="parameter">app creation token</span> by calling the HealthVault web service and passing in the <span class="parameter">master application identifier</span>, as described below in [Creating a HealthVault mobile master application](/healthvault/concepts/advanced/master-and-child-applications) (See the **NewApplicationCreationInfo** request in the [Method browser](http://go.microsoft.com/?linkid=9810881).)

3.  Application directs user to HealthVault Shell for authentication and authorization, passing along the app creation token. (See the CREATEAPPLICATION target in the Shell targets section of <a href="shell-redirect-interface.md" id="PageContent_14090_3">Shell Redirect Interface</a>.

4.  The user signs in to HealthVault Shell and grants the application access to the user's records.

5.  The HealthVault Shell redirects the user back to the application, indicating success or failure, as described below, and returns an identifier for the instance in which the user granted access. For more information about instance IDs see [global architecture](/healthvault/concepts/advanced/global-architecture).

6.  Application stores the new application identifier and shared secret, and the instance ID or URLs of the instance where the user authorized the application.

7.  Application calls the HealthVault web service instance where the user authorized the application to create an authenticated session token using the application identifier and shared secret to identify the application.

    Use the **CreateAuthenticatedSessionToken** request to create a session token. For more information, see the [Method browser](http://go.microsoft.com/?linkid=9810881).

8.  At this point, your application can operate like any other offline application. For example use **GetAuthorizedPeople** to obtain a list of users and records authorized with this instance of the application.

As with any HealthVault application, applications using the SODA approach should be able to handle responses from the HealthVault web service indicating that "the authenticated session token has expired" (error code 65). In such events, the application will need to obtain a new authenticated session token by calling the **CreateAuthenticatedSessionToken** method.

During the lifetime of the application, it may lose access to a record. This may happen for a number of reasons, such as the user deciding to disconnect their record from the application, or the record or account being deleted. In such events, the application will receive an "access denied"" error (error code 11) when attempting to call a method that accesses the record. When calling **GetAuthorizedPeople**, it won't receive the user or record. In such cases, the application can re-initiate the application authorization flow by directing the user to the Shell (see the APPAUTH target in <a href="shell-redirect-interface.md" id="PageContent_14090_5">Shell Redirection Interface</a>)

Creating a HealthVault mobile master application
------------------------------------------------

The first step when connecting an application running on a mobile device to HealthVault is creating the master application. The master application acts as the parent to all instances of your mobile application and the master application ID is passed to the HealthVault web service when the call is made for the instance application to be created.

To create a master application, create an application via the HealthVault [Application Configuration Center (ACC)](https://msdn.microsoft.com/en-us/healthvault/jj127439) and select SODA as your application type. Developers should consider the target population of their applications and configure their applications appropriately.

All installed instances of your HealthVault mobile application will inherit their attributes from your master application. These attributes include name, description, logo, action URL, and authorization rules. The master application's authorization rules must be offline, since that is the type of connectivity your SODA application will use.

For SODA applications, action URL is optional. If an action URL is specified, when the application directs the user to Shell, after the task is completed (successfully or not) they will be directed back to the application's configured action URL, with appropriate target and actionqs query string parameters. If an action URL is not configured, the user will be directed to the URL <span class="literalValue">https:// <span class="parameter">ShellURL</span>/application/complete</span> with similar query string parameters. For imformation about all redirect targets, see <a href="shell-redirect-interface.md" id="PageContent_14090_6">Shell Redirect Interface</a>.

Interactions with Shell on mobile devices
-----------------------------------------

Similar to web applications, applications running on mobile devices may direct users to specific Shell functionality. Not all Shell functionality has been optimized for mobile devices. Currently, the following targets will provide the mobile user with a mobile-optimized Shell experience:

-   **CREATEAPPLICATION** to create application instance, authenticate user, and authorize records to application.

-   **APPAUTH** to authenticate user and authorize records to application.

-   **CREATEACCOUNT** to allow user to create a new account and authorize its records to application.

-   **CREATERECORD** to authenticate and allow user to create a new record and authorize it to application.

When the Shell redirect task has completed, the user is redirected back to the application's action URL or <span class="parameter">ShellURL</span>/application/complete, a page indicating that they have completed the task, if an action URL is not configured. A mobile application can take advantage of this redirect to resume its flow when the user's task in Shell is complete. It can parse the target parameter of the query string of the URL to formulate the appropriate flow to follow. See the Shell targets section of the <a href="shell-redirect-interface.md" id="PageContent_14090_7">Shell Redirect Interface</a> for a list of return targets and their meanings.

In some platforms, applications are able to embed an Internet browser within the experience of the application itself. In such applications, the entire flow between the application and Shell can be kept within the application itself, while monitoring the location of the browser as an indication of whether the user has completed the requested task in Shell.

Some platforms allow applications to handle custom URL protocols. You can configure your application in ACC with an action URL that redirects the user to a web page that will redirect to your custom URL protocol which can resume your application flow.

Mobile application interaction example
--------------------------------------

Call HealthVault web service with **NewApplicationCreationInfo** with master application ID 6556d00c-cb8d-4004-90d6-8be528420ff7.

### Request
```xml
<wc-request:request xmlns:wc-request="urn:com.microsoft.wc.request">
  <header>
    <method>NewApplicationCreationInfo</method>
    <method-version>1</method-version>
    <app-id>6556d00c-cb8d-4004-90d6-8be528420ff7</app-id>
    <language>en</language>
    <country>US</country>
    <msg-time>2012-04-28T19:10:41.3940000Z</msg-time>
    <msg-ttl>1800</msg-ttl>
    <version>foo v1.0</version>
  </header>
  <info />
</wc-request:request>
```
### Response
```xml
<response>
  <status>
    <code>0</code>
  </status>
  <wc:info xmlns:wc=
      "urn:com.microsoft.wc.methods.response.NewApplicationCreationInfo">
    <app-id>39a952bb-aac4-4a3d-8fba-f53e5605eca5</app-id>
    <shared-secret>RaFzI5JVbg0...Bk/iU0pg=</shared-secret>
    <app-token>ASAAAJMipARM...5OBFdAISE</app-token>
  </wc:info>
</response> 
```

### Redirect user to Shell to initiate creation of application instance and request user authorization.

```
ShellURL/redirect.aspx?target=CREATEAPPLICATION&targetqs=%3Fappid%3D6556d00c-cb8d-4004-90d6-8be528420ff7%26appCreationToken%3DASAAAJMipARM...5OBFdAISE
```

### Shell redirects back

```
ShellURL/application/complete?appid=39a952bb-aac4-4a3d-8fba-f53e5605eca5&target=AppAuthSuccess&instanceId=1
```

### Call the **CreateAuthenticatedSessionToken** method on the HealthVault web service corresponding to instanceID 1.

```xml
<wc-request:request xmlns:wc-request="urn:com.microsoft.wc.request">
  <header>    <method>CreateAuthenticatedSessionToken</method>
    <method-version>2</method-version>
    <app-id>39a952bb-aac4-4a3d-8fba-f53e5605eca5</app-id>
    <language>en</language>
    <country>US</country>
    <msg-time>2012-04-28T19:11:42.0720000Z</msg-time>
    <msg-ttl>1800</msg-ttl>
    <version>foo v1.0</version>
  </header>
  <info>
    <auth-info>
      <app-id>39a952bb-aac4-4a3d-8fba-f53e5605eca5</app-id>
      <credential>
        <appserver2>
          <hmacSig algName="HMACSHA256">BSMSUpf...n1k/To3A=</hmacSig>
          <content>
            <app-id>39a952bb-aac4-4a3d-8fba-f53e5605eca5</app-id>
            <hmac>HMACSHA256</hmac>
            <signing-time>2012-04-28T19:11:42.0580000Z</signing-time>
          </content>
        </appserver2>
      </credential>
    </auth-info>
  </info>
</wc-request:request>
```
### Response
```xml
<?xml version="1.0" encoding="utf-8"?>
<response>
  <status>
    <code>0</code>
  </status>
  <wc:info xmlns:wc="urn:com.microsoft.wc.methods.response.CreateAuthenticatedSessionToken2">
    <token app-id="39a952bb-aac4-4a3d-8fba-f53e5605eca5" 
       app-record-auth-action="NoActionRequired">ASAAAPmoT...PwuWA==</token>
     <shared-secret>zecX0M6EfF0... +BUXnBg==</shared-secret>
   </wc:info>
 </response> 
```

At this point, your application can operate like any other offline application. 

For example, to get a list of all accounts currently authorized with this instance of the application, make the following request to GetAuthorizedPeople

```xml
<wc-request:request xmlns:wc-request="urn:com.microsoft.wc.request">
  <auth>
    <hmac-data algName="HMACSHA256">0tOW1...nCSQA</hmac-data>
  </auth>
  <header>
    <method>GetAuthorizedPeople</method>
    <method-version>1</method-version>
    <auth-session>
      <auth-token>ASAAAPmoT...PwuWA==</auth-token>
    </auth-session>
    <language>en</language>
    <country>US</country>
     <msg-time>2012-04-28T19:11:42.4870000Z</msg-time>
    <msg-ttl>1800</msg-ttl>
    <version>foo v1.0</version>
    <info-hash>
      <hash-data algName="SHA256">NqMlA...yc4=</hash-data>
    </info-hash>
  </header>
  <info>
    <parameters />
  </info>
</wc-request:request> 
```

And your app would receive this repsonse. 
```xml
<response>
  <status>
    <code>0</code>
  </status>
  <wc:info xmlns:wc="urn:com.microsoft.wc.methods.response.GetAuthorizedPeople">
    <response-results>
      <person-info>
        <person-id>f0199615-0979-4dcd-a7ca-b9530d2b787d</person-id>
        <name>Michel Cordani</name>
        <record id="6f8a2949-b5de-431b-a2ba-cc03277f65e9"
            record-custodian="true"
            rel-type="2"
            rel-name="Other"
            auth-expires="9999-12-31T23:59:59.999Z"
            display-name="Michel"
            state="Active"
            date-created="2008-01-22T22:12:07.91Z"
            max-size-bytes="4294967296"
            size-bytes="101555"
            app-record-auth-action="NoActionRequired"
            app-specific-record-id="1587152">Michel</record>
        <preferred-culture>
          <language>en</language>
          <country>US</country>
        </preferred-culture>
        <preferred-uiculture>
          <language>en</language>
          <country>US</country>
        </preferred-uiculture>
      </person-info>
      <more-results>false</more-results>
    </response-results>
  </wc:info>
</response> 
```
