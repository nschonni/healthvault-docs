---
title: Configuring a new app using ACC
author: rouellam
ms.author: roumen
ms.date: 04/17/2017
ms.topic: article
ms.prod: healthvault
description: Learn how to configure a new app using ACC
---

Configuring a new app using ACC
===============================

Please refer to [Getting started](/healthvault/getting-started/getting-started) before continuing.

## Registering your HealthVault app

To access a patient’s record, the patient must provide consent to a registered HealthVault app. The example below is tailored for use with the [HealthVaultProviderManagementPortal](https://github.com/Microsoft/healthvault-samples/tree/master/dotNET/HealthVaultProviderManagementPortal), but the process is similar for other apps. To learn more about using the Application Configuration Center, please see [Application Configuration Center tool](/healthvault/tools/acc/).

1.  Navigate to the [HealthVault Application Config Center (ACC)](https://go.microsoft.com/fwlink/?linkid=838954) on a desktop browser.
2.  Login with your Microsoft Account.

    > [!NOTE]
    > This account will be the default administrator of the app you create. HealthVault allows existing administrators to invite new administrators to manage this app.

3.  Create a new application.
    1.  The Application id will be generated for you.
    2.  Enter the application name that users will see when they interact or give consent to your application. For example, we have created one called “Fabrikam Health Solutions”.
    3.  Select “Web” for the application type.
    4.  Create a new certificate and upload. See instructions to [generate a self-signed certificate](/healthvault/concepts/connectivity/creating-key-pairs).
    5.  Accept the developer terms and conditions and click “Create application”.
    6.  Make a note of the Application id.
        <img src="/healthvault/images/IC866205.png" title="Creating Fabrikam Health Solutions" alt="Creating Fabrikam Health Solutions" id="HVActionPlans_fig01" /> 

        Figure 1: Creating Fabrikam Health Solutions

4.  To invite users to participate in your health program, you need to update your app’s supported Methods.
    1.  After creating your app, you will see confirmation that your app has been created. Click the application id to view and modify the app details.

        <img src="/healthvault/images/IC866206.png" title="Confirmation of app creation" alt="Confirmation of app creation" id="HVActionPlans_fig02" /> 
        Alternatively, you can also click the application id from the home screen.
        <img src="/healthvault/images/IC866207.png" title="Application id on the home screen" alt="Application id on the home screen" id="HVActionPlans_fig03" /> 

    2.  On the app details screen, select the “Methods” tab, check the “Application requires access to REST APIs” and “Application requires access to onboarding APIs” options, and click “Save”.
        <img src="/healthvault/images/IC867985.png" title="Configuring app to send email" alt="Configuring app to send email" id="img1" /> 

5. To have your organization information available to APIs, visit the Organization tab in ACC to add your organization information such as organization name.

## Adding authorization rules

Before your app can access user data, it will need offline access to specific [HealthVault data types](https://developer.healthvault.com/DataTypes). Make sure to include request for authorization to **Action Plan (deprecated), Plan, Task and Task tracking entry** and any other data types which are related to your plans. If you need to use goals, also include the **Health Goal** entry.

Your application will request permission to access these data types when users join the program. In our example, Fabrikam has requested users joining their program to give consent for the following data types:

-   Action Plan (deprecated)
-   Appointment
-   Basic demographic information
-   Body composition
-   Concern
-   Condition
-   Family history
-   Health goal
-   Height
-   Medication
-   Plan
-   Task
-   Task tracking entry
-   Weight

 <img src="/healthvault/images/IC867995.png" title="Selecting data types" alt="Selecting data types" id="HVActionPlans_fig05" /> 

When you have completed the steps above, learn more about how to [update your app's configuration to connect to HealthVault](/healthvault/getting-started/update-app-configurations). 

For more information
--------------------

- [Application Configuration Center tool](/healthvault/tools/acc/)
- [Connectivity](/healthvault/concepts/connectivity/)

