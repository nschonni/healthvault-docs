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

Please refer to [Getting started with remote monitoring](https://msdn.microsoft.com/en-us/healthvault/mt778893.aspx) before starting.

### Registering your HealthVault app

To access a patient’s record, the patient must provide consent to a registered HealthVault app.

1.  Navigate to the [HealthVault Application Config Center (ACC)](https://go.microsoft.com/fwlink/?linkid=838954) on a desktop browser.
2.  Login with your Microsoft Account.

    > [!NOTE]
    > This account will be the default administrator of the app you create. HealthVault allows existing administrators to invite new administrators to manage this app.

3.  Create a new application.
    1.  The Application id will be generated for you.
    2.  Enter the application name that users will see when they interact or give consent to your application. For example, we have created one called “Fabrikam Health Solutions”.
    3.  Select “Web” for the application type.
    4.  Create a new certificate and upload. See instructions to [generate a self-signed certificate](#_Certificates).
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

5. To have your organization information available to APIs, visit the Organization tab in ACC to add your organization information such as organization name which can then be referenced in .

#### Adding authorization rules

Before your app can access user data, it will need offline access to specific [HealthVault data types](https://developer.healthvault.com/DataTypes). Make sure to include request for authorization to **Plan, Task and Task tracking entry** and any other data types which are related to your plans. If you need to use goals, also include the **Health Goal** entry.

Your application will request permission to access these data types when users join the program. In our example, Fabrikam has requested users joining their program to give consent for the following data types:

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

### <img src="/healthvault/images/IC867995.png" title="Selecting data types" alt="Selecting data types" id="HVActionPlans_fig05" /> 

### Add your ApplicationID to the sample

The HealthVaultProviderManagementPortal sample includes a PowerShell script you can use to update the project with the ApplicationID you just created using the Application Configuration Center. You should have already cloned the project from [GitHub](https://go.microsoft.com/fwlink/?linkid=839405). If you have, then open a PowerShell console, navigate to the folder you chose for your local repository, then navigate to dotNET/HealthVaultProviderManagementPortal and run the following command, specifying your ApplicationID below.

```powershell
.\\Update-WebConfig.ps1 -ApplicationId" 00000000-0000-0000-0000-000000000000"
```

### Generate and send invitations to remote patients

Your application will need to invite users to participate in your program. Please refer to the HealthVaultProviderManagementPortal sample for code which demonstrates this scenario.

At a high level, the process to generate and send invitation codes is:

1.  Create an offline web application connection.
2.  Authenticate the connection. This uses the certificate you registered earlier to establish trust.
3.  Generate an invitation code using the [Onboarding REST API](https://developer.healthvault.com/Api).
4.  Send the invitation code to your participant using email or another mechanism.

Once users receive their invitation, they will be invited to download the HealthVault Insights app, sign-up/sign-in to HealthVault and consent to Fabrikam Health solutions to complete joining the program. On completion, Fabrikam will have access to user’s consented data.

### Get authorized users

To get the list of users who have authorized your app to have access to their health record, follow the flow outlined below. Note that the GetAuthorizedPeople method called below may be called with the “authorizations-created-since” parameter to limit responses to only users who have authorized the app recently. Please refer to the HealthVaultProviderManagementPortal sample for code which demonstrates this scenario.

1.  Create an offline web application connection
2.  Authenticate the connection. This uses the certificate you registered earlier to establish trust.
3.  Call the connection’s GetAuthorizedPeople method to obtain all the users who have authorized their records with your app.

### Accessing authorized user data

Once your app has been authorized to access a user’s data, your app can retrieve it on demand. Please refer to the HealthVaultProviderManagementPortal sample for code which demonstrates this scenario for retrieving user data offline.

For more information, see the [GetThings documentation](https://developer.healthvault.com/Methods/Overview?Name=GetThings&Version=3) and "Related articles" linked from that page.

#### ***Creating or updating data***

In this scenario, Fabrikam’s doctors need to create records for a user’s latest height and weight values. Please refer to the HealthVaultProviderManagementPortal sample for code which demonstrates this scenario.

For more information, see the [PutThings documentation](https://developer.healthvault.com/Methods/Overview?Name=PutThings&Version=2) and "Related articles" linked from that page.

#### ***Deleting data***

In this scenario, Fabrikam’s doctors want to remove value that they have placed into a user’s health record. Microsoft recommends that this technique is only used to remove erroneous records.

For more information, see the [RemoveThings documentation](https://developer.healthvault.com/Methods/Overview?Name=RemoveThings&Version=1) and “Related articles” linked from that page.

For more information
--------------------

-   [HealthVault Overview](https://www.healthvault.com/us/en)
-   [HealthVault technical overview](https://go.microsoft.com/fwlink/?linkid=839408)
-   [HealthVault REST API Reference](https://go.microsoft.com/fwlink/?linkid=839407)
-   [HealthVault SDKs](https://go.microsoft.com/fwlink/?linkid=839410)

