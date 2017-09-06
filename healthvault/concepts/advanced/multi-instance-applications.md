---
title: Multi-instance applications
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Overview of how a single app can switch between global instances based upon the user's configuration. 
---

# What are multi-instance HealthVault apps? 

The HealthVault global architecture is comprised of a number of instances distributed around the world each serving a broad population of users. This document provides an overview of building applications that connect to multiple instances within the HealthVault global architecture.

For detailed information about the architecture, see <a href="global-architecture.md" id="PageContent_13993_4">global architecture</a>.

Multi-instance apps in PPE
--------------------------

HealthVault PPE is setup with two instances to allow developers to test multi-instance scenarios. The two instances have the same user mapping rules as the production US and UK instances, and are referred to as the US PPE instance and the UK PPE instance.

Each PPE instance includes a version of the HealthVault [Application Configuration Center (ACC)](configurations.md).

Provisioning a multi-instance app
To provision a multi-instance app in PPE:

1.  Visit the [ACC](https://config.healthvault-ppe.com/) and ensure your application's configuration is created or exists there.

2.  On the <span class="label">Misc</span> tab of ACC, select <span class="label">Multi-Instance Aware</span> to indicate that the app supports both of the PPE instances (or unselect it to indicate support for only a single HealthVault instance).

Building a multi-instance app
-----------------------------

Many of the HealthVault SDKs provide built-in support for building multi-instance apps. The sample apps in the SDKs provide working examples of building multi-instance apps.

If you are using a HealthVault SDK that supports the HealthVault global architecture, then normally, your application will be multi-instance aware by following the earlier provisioning steps and following the respective SDK standard app development model.

If you are not using a HealthVault SDK with global architecture support but would like to build a multi-instance app, you can read <a href="global-architecture.md" id="PageContent_13993_10">global architecture</a> to learn the architecture and build your own mechanism to connect to multiple instances.

Testing a multi-instance app
----------------------------

To test your multi-instance application in PPE:

1.  Choose the US PPE as the default instance for the application by pointing the application's platform URL and Shell URL there to start. For more information, see [instance configurations](/healthvault/concepts/advanced/configurations).

2.  Start the application

3.  Begin the authorization process by first redirecting to Shell.

4.  In Shell, create a new account and specify **Germany** as the account country/region, or sign-in with an existing account that exists in the UK PPE.

5.  Continue until you reach the app-auth page. Select the records to authorize, and click to authorize.

6.  Upon completion of app auth, HealthVault will redirect back to your application and the response URL will have the InstanceID of the UK PPE instance, which is the instance where the record was authorized.

7.  Next, verify reading or writing data from the record that was just authorized to ensure the application can connect to the instance.

8.  Repeat from step 3, except specify **United States** in step 4 as the account country/region when signing up for a new account, or sign-in with an existing account in the US PPE instance.

Multi-instance apps in Production
---------------------------------

The production environment may have more instances than PPE. However, the mechanism for connecting to two instances like in PPE, is the same as for connecting to a multitude of instances.

During the HealthVault [go-live process](/healthvault/publishing/go-live), the app administrator will specify the instances that the app will support. The HealthVault go-live team will provision the application in these production instances. For information about choosing the supported instances for an application, see [global architecture](/healthvault/concepts/global-architecture).

