---
title: Global architecture
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn how to build an app using HealthVault that targets region-specific instances. 
---

# Targeting global HealthVault instances

HealthVault is a global service comprised of multiple nodes, each called a HealthVault instance. A single HealthVault instance is made up of a HealthVault Platform service, a HealthVault Shell, and stores the people, records and thing data for the users mapped to the instance.

If you are new to HealthVault, the [Technical Overview](technical-overview.md) provides an introduction to the core HealthVault concepts you should understand before reading further.

HealthVault instances
---------------------

A HealthVault instance stores personal health information for a target population of users. At the time of writing the following instances exist:

-   A US instance physically located in the US that serves US-based end-users.

-   An EU instance physically located in the EU that serves users from regions outside the US.

HealthVault may provision new instances in the global architecture in the future.

A HealthVault account (or HealthVault Person, identified by a person ID) exists in a single instance. When creating a new user account, HealthVault maps the account to a single specific instance.

The records that a given HealthVault Person has access to exist in the same instance as the HealthVault Person. A HealthVault Person cannot have access to Records that exist in different HealthVault instances.

Since the records a particular HealthVault Person can access are stored within an instance, the data items or Things contained in these Records are also co-located in the same instance as the Person and record. Thing data for a single Record cannot exist in multiple instances.

When a Person authorizes a Record for an Application, this authorization occurs within the HealthVault instance containing the Person and Record. When the app subsequently adds data to a Record, or reads data from the Record, it accesses the instance in which the Record exists.

Mapping users to instances
--------------------------

### New User Sign-up

HealthVault uses a set of mapping rules to determine the instance where a new user account will be created. The rules used to map users to instances today are as follows:

When a new user signs-up for HealthVault, and selects:

-   US or US territories as the account country, the account is created in the US instance.

-   Any other country HealthVault supports, the account is created in the EU instance.

    For the list of countries HealthVault does not support, see <a href="territories.md" id="PageContent_13994_4">HealthVault territories</a>.

The user can start the sign-up process in any instance, but will be redirected to the instance determined by the rules above for account creation. For example, if the user starts in the EU instance and selects US as the account country, the user will be redirected to the US instance where the account will be created.

Accounts cannot be migrated between instances.

### Existing User Sign-in

Users can sign-in to any HealthVault instance and will be redirected to the instance where the account exists. For example, if a user with an account in the US instance signs in to the EU instance, the user will be redirected to the US instance Shell where the account exists.

Applications within the HealthVault global architecture
-------------------------------------------------------

The above describes how users are mapped to instances within the HealthVault global architecture. As part of this mapping, users can be redirected to a different instance than the one they started from when signing-up or signing-in. The same is true if the user came to HealthVault from an application. For example, an app might send the user to the US instance Shell to complete the authorization process, where the user initiates the new account flow and selects Netherland as the account country. The user will be redirected to the EU instance where the account will be created, and the user can complete the app authorization process in the EU instance. Similarly, if the user signs-in and the account already exists in the EU instance, the user completes the app authorization process in the EU instance.

Generalizing this, any of the Shell redirect interface targets that require the user to sign-up or sign-in, can redirect the user to a different instance than the instance where the user started, that is, the instance to which the app originally sent the user.

### Determining the instance for a user

Applications need a way to determine the instance in which the user ultimately authorized the app or took action so they can connect to the correct instance when interacting with the user's account or record, that is, when reading or writing data from a record. HealthVault makes it easy for applications to determine this. When HealthVault redirects back to the application at the completion of an action like authorizing a record, an identifier is returned on the response query string which uniquely identifies the instance where the action occurred. This is the instanceID parameter.

Given an instanceID, applications can look up the corresponding service end-point URLs for the instance's Platform and Shell. For example, when a user authorizes an app in the US instance, the instanceID returned to the application represents the US instance. The topology section of the [GetServiceDefinition](https://developer.healthvault.com/Methods/ResponseSchema?Name=GetServiceDefinition&Version=2) response specifies the instance IDs and corresponding Platform and Shell end-point URLs for all HealthVault instances. Developers can look up the service end-points for the instance where the user authorized the app by looking at the data returned from this section of **GetServiceDefinition** response. Many of the HealthVault SDKs do this work for developers.

### Multi-instance vs. single-instance applications

Application developers can choose to support all instances of HealthVault or only a subset. The decision of which instances to support is based on the application's target user base. For example, the application developer for a fitness app on a mobile device might determine it wishes to serve a global user base in which case it would choose to support all instances of HealthVault. On the other hand, a US-based pharmacy or hospital may wish to serve only US-based users and would thus support only the US HealthVault instance.

**Multi-instance applications** are those that support connecting to multiple HealthVault instances. This can be all instances, or a subset of all instances.

**Single-instance applications** are those that connect to a single HealthVault instance only.

HealthVault makes it easy to configure an application to be multi-instance or single-instance. During the [HealthVault go-live process](go-live.md), the application administrator is asked to specify the instances that the app should support and the HealthVault go-live team will configure the application to support these instances.

### The allow instance bounce (aib) parameter

In addition to the server-side configuration for supported instances, the [Shell Redirect Interface](shell-redirect-interface.md) supports an **aib** (allow instance bounce) parameter, which specifies whether a user can be redirected between instances during a Shell redirect request. If the value is **true**, the user can be redirected between instances during a Shell target action. If the value is **false**, the user cannot be redirected between instances during the Shell target action. The default value is true.

For single-instance apps that connect to a single instance, the **aib** parameter is not relevant. For multi-instance applications, the value of the **aib** parameter must be **true** when redirecting the user to a Shell target. Additionally, as discussed above, the server-side configuration set by the HealthVault go-live team must reflect multiple instances.

For information on creating and configuring multi-instance apps, see <a href="multi-instance-applications.md" id="PageContent_13994_6">multi-instance applications</a>.

### Choosing a default instance

Applications that connect to multiple instances must choose the first HealthVault instance to which they will redirect the user. This instance is referred to as the app's default instance. Applications can choose any HealthVault instance as the default and configure this in their HealthVault SDK, or by writing the app code to start at this instance.

Web applications might choose the default instance to be the one that is physically located the closest to the app's hosting location. Mobile applications might choose a default instance based on the location of the majority of the expected user base.

Application models and the global architecture
----------------------------------------------

### Web applications

#### Online access

Applications that establish authorization through the web and access records in an online manner, can associate the InstanceID returned from HealthVault with a session for the user. For example, this can be stored in a cookie, in server session storage, or however the app chooses to store information about a user session. Then, using the InstanceID, the app can determine the service end-points for the instance to connect with.

#### Offline access

Applications that establish authorization through the web and access records in an offline manner, should save the InstanceID along with the personID and recordID for the authorized record in persisted storage. Whenever offline access to the record is needed, the application looks up the service end-points corresponding to the stored InstanceID and connects to the correct instance to access the person and record.

#### Master-Child applications

A single-instance web child app is provisioned in an instance by using HealthVault app provisioning APIs like the [AddApplication](https://developer.healthvault.com/Methods/RequestSchema?Name=AddApplication&Version=2) and [UpdateApplication](https://developer.healthvault.com/Methods/RequestSchema?Name=UpdateApplication&Version=2) requests (or by using one of the SDK utilities like the .NET [Provisioner](https://msdn.microsoft.com/en-us/library/microsoft.health.applicationprovisioning.provisioner.aspx) class). A multi-instance web child app is similarly provisioned, but must be done so in each instance the child app supports. For more information about multi-instance applications, see <a href="master-and-child-applications.md" id="PageContent_13994_16">master and child applications</a>.

In order for the child app to be provisioned in each instance, the master app must also exist in each instance. In PPE, developers can do this on their own, by following the instruction in <a href="multi-instance-applications.md" id="PageContent_13994_7">multi-instance applications</a>. For production, during the go-live process, the app administrator specifies the instances the master app supports, and the HealthVault go-live team enables the master application in these production instances. Once completed, the child app can be provisioned in each supported instance by using the HealthVault APIs.

### Mobile (SODA) applications

Mobile or SODA applications that run on devices and mobile platforms access data in an offline manner. Like the web application offline case, SODA applications need to save the instanceID alongside the personID and recordID to persisted storage. However, for SODA apps, this is persisted to device storage. When accessing HealthVault, the SODA application looks up the service end-points for the user from the stored InstanceID, and connects to the correct instance to access the person and record.

### DOPU and Patient Connect applications

[HealthVault drop-off and pick-up (DOPU)](dopu.md) workflows typically involve an in-person encounter. After the in-person encounter, the application drops off the data in an instance and notifies the user, normally through e-mail, that a package is waiting in HealthVault for the user to pick-up. The notification includes a link to the HealthVault instance where the package is stored. Applications that send data to users using the DOPU mechanism must determine the destination HealthVault instance for a package at the time they create the package. It’s not possible for a DOPU package stored in one instance to be picked-up by a user with an account in a different instance.

Applications that use the [Patient Connect](patient-connect.md) model to establish authorization with users also typically involve an in-person encounter and a notification to the user with a link to a specific HealthVault instance where a connect request is waiting for the user to pick-up. Similar to DOPU packages, with Patient Connect, the application must determine the destination instance for the connect request at the time the request is created. It is not possible for a Patient Connect request to be stored in one instance and to be picked-up by a user with an account in a different instance.

DOPU and Patient Connect applications can choose the destination instance for packages and connect requests based on the target population of the application and the user's country. For example, a US-based hospital that largely serves a region-specific population of the US will likely choose to drop-off packages and connect requests in the US instance only.

On the other hand, a hospital that caters to medical tourism and serves patients from around the world can determine the destination instance for a package or connect request based on the user's country. For a visit with a US patient, the application would choose the US instance as the destination so the US-based patient can pick-up the package or connection request. For a visit with a EU patient, the application would choose the EU instance as the destination for the package or connect request.

HealthVault provides the [SelectInstance](https://developer.healthvault.com/Methods/Overview?Name=SelectInstance&Version=1) request to help applications make this determination. The method takes the user's country as the request input, and returns the instanceID for the HealthVault instance where users from this country are mapped.

Cross-instance record sharing
-----------------------------

HealthVault allows records to be shared between people who have accounts in the same instance. HealthVault does not allow records to be shared between accounts in different instances. While this presents some limitations, such as when families distributed around the world want to share records with one another, the mainline case is sharing records between people in the same instance. HealthVault may in the future provide a mechanism to allow records to be shared across instances. In the meantime, to share records between individuals with HealthVault accounts in different instances, the user accepting the sharing invite can create a new HealthVault account in the same instance where the shared record is stored. To do this, when this user signs-up for a new account, he would specify the same country as the record sharer's country (or any other account country that maps to this instance).

Eventing
--------

Multi-instance applications that leverage [eventing](subscribing-to-events.md) to receive notifications must subscribe to the desired events in each instance the application supports. It's not possible to create event subscriptions in one instance only and receive event notifications from a different instance. The app uses the same process for creating subscriptions in all instances it supports.

HealthVault SDKs and samples for the global architecture
--------------------------------------------------------

The HealthVault SDKs make it very easy for developers to build applications that support the HealthVault global architecture. The following is a summary of the HealthVault SDKs and sample apps that support building multi-instance applications.

Global architecture support in the Java and Windows Phone libraries will be added in an upcoming release.

### .NET SDK

The .NET SDK has rich support for building multi-instance applications. A few of the key aspects of this support include:

-   The application's default instance platform URL and shell URLs can be specified in the **HealthServiceUrl** and **ShellUrl** parameters in the application's web.config file.
-   The various SDK connection constructors have a parameter for a [Microsoft.Health.HealthServiceInstance](/sdks/dotnet/microsoft.health.healthserviceinstance.aspx) object for creating a connection to a specific instance. 
-   The web layer automatically supports creating a connection to the target instance after a user authorizes a web application.
-   Specifying that an app supports multiple instances (see the **aib** parameter discussion earlier) is supported through a web.config setting as shown below:

    ```xml
    <configuration>
      <appSettings>
        <add key="MultiInstanceAware" value="true" />
      </appSettings>
    </configuration> 
    ```
    > [!NOTE]
    > In the .NET SDK, the default value of **MultiInstanceAware** is **true**.
-   [HVClientSample](https://github.com/Microsoft/healthvault-samples/tree/master/dotNET/hvclientsample) demonstrates a multi-instance SODA client application on Windows.

### iOS library for HealthVault

-   The [iOS library](https://github.com/microsoft/HVMobileVNext) for HealthVault supports SODA authorization and multi-instance connectivity.
-   The iOS SDK settings file has an **isMultiInstanceAware** setting that allows specifying that an app is multi-instance aware, and includes **serviceURL** and **shellURL** elements for specifying the default instance as shown below:

    ```xml
    <masterAppID>657324f2-4aca-42de-97a8-298873e355d7</masterAppID>
    <appName>iOS SDKFeatures</appName>
    <isMultiInstanceAware>true</isMultiInstanceAware>
    <environment>
      <name>US PPE</name>
      <friendlyName>PPE - US Residents</friendlyName>
      <serviceUrl>https://platform.healthvault-ppe.com/platform/wildcat.ashx</serviceUrl>
      <shellUrl>https://account.healthvault-ppe.com</shellUrl>
    </environment> 
    ```
-   The iOS [SDKFeatures sample app](https://github.com/microsoft/HVMobile_VNext/tree/master/Samples) is multi-instance aware and the code demonstrates how to build an iOS SODA app that is multi-instance aware using the iOS SDK.

