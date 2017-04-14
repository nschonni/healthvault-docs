---
title: Remote monitoring
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn about how the Action Plans framework can help increase patient engagement
---

Action Plans framework
======================

The Action Plans framework lets HealthVault partners improve engagement between providers and patients by allowing providers to create, assign and update care plans for their patients. Patients follow the care plans and track their adherence by leveraging one of many supported apps and devices. Providers can monitor patient adherence to the tasks in their plans as well as progress towards broader health goals.

Action Plans are currently in Preview, and Microsoft is accepting feedback on the API functionality from partners. Please share feedback using the <a href="https://social.msdn.microsoft.com/Forums/en-US/home?category=healthvault" id="PageContent_18332_3">MSDN Forums</a> or by emailing <hvtech@microsoft.com>.

Getting started
---------------

If you’re new to the HealthVault platform, please first review the [technical overview](https://go.microsoft.com/fwlink/?linkid=839408). The core HealthVault platform leverages an XML web-service API, so we offer [SDKs](https://go.microsoft.com/fwlink/?linkid=839410) for most languages and platforms.

The easiest way to get started with Action Plans is to clone the HealthVaultProviderManagementPortal sample from [GitHub](https://go.microsoft.com/fwlink/?linkid=839405). This sample automatically acquires the HealthVault .NET SDK via Nuget to interface with HealthVault for authentication, and then illustrates 1) how a provider can onboard a patient, and 2) how an app can create and send an Action Plan to that user. Action Plans leverage a new RESTful API, which is detailed in the [HealthVault reference](https://go.microsoft.com/fwlink/?linkid=839407).

> [!NOTE]
> Users must register their account in the HealthVault Insights app in order to receive Action Plans. HealthVault Insights is currently only available to users in the United States and the United Kingdom.

### Environments

HealthVault’s <a href="https://go.microsoft.com/fwlink/?linkid=839407" id="PageContent_18332_2">ActionPlans API</a> is available in a pre-production environment to allow you to validate your service’s functionality before real users can use it. You will need to access the following utilities/tools to get started:

1.  HealthVault SDK – <https://www.nuget.org/packages/HealthVault.NET>
2.  Application Configuration Center (ACC) – <https://config.healthvault-ppe.com/>
3.  REST API Base URL
    1.  United States: <https://data.ppe.microsofthealth.net>
    2.  UK: <https://data.ppe.microsoft.health.co.uk>
4.  Platform Base URL – <a href="https://platform.healthvault-ppe.com/platform/" class="uri" id="PageContent_18332_4">https://platform.healthvault-ppe.com/platform/</a> 

**Warning:** Do not store personal information on the HealthVault pre-production environment. These sites are for application development and testing only. You may not distribute or sell connectivity to this site, or any of its content. You are responsible for all activity under your account. Make sure you understand the developer [privacy statement](https://config.healthvault-ppe.com/PrivacyStatement.aspx) and [terms of use](https://config.healthvault-ppe.com/ServiceAgreement.aspx). For a HealthVault account, go to the public [HealthVault](https://www.healthvault.com/) site.

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

#### Adding authorization rules

Before your app can access user data, it will need offline access to specific [HealthVault data types](https://developer.healthvault.com/DataTypes). Make sure to include request for authorization to **Action Plan** and any other data types which are related to your plans.

Your application will request permission to access these data types when users join the program. In our example, Fabrikam has requested users joining their program to give consent for the following data types:

-   Action Plan
-   Appointment
-   Basic demographic information
-   Body composition
-   Concern
-   Condition
-   Family history
-   Height
-   Medication
-   Weight
-   Contact

### <img src="/healthvault/images/IC866202.png" title="Selecting data types" alt="Selecting data types" id="HVActionPlans_fig05" /> 

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

### Creating, assigning, and updating Action Plans

> [!NOTE]
> To create an Action Plan, the patient receiving the plan must have already enrolled in HealthVault Insights. The invitation URL generated earlier will guide them through this process.

Please refer to the HealthVaultProviderManagementPortal sample for code which demonstrates how to create, assign and update Action Plans. For more information, please see the [HealthVault REST API](https://go.microsoft.com/fwlink/?linkid=839407) documentation.

The diagram below provides a high-level overview of the structure of an Action Plan. An ActionPlan is comprised of one or more Objectives. An Objective is comprised of one or more Tasks.

<img src="/healthvault/images/IC866028.png" title="Action plan hierarchy" alt="Action plan hierarchy" id="HVActionPlans_fig06" /> 

Appendix
--------

### Generating a test certificate

1.  In Windows 10/Server 2016
    1.  Open PowerShell as an Administrator
    2.  Paste the following content into PowerShell, replacing “Insert your ApplicationID here” with the ApplicationID you received from HealthVault’s Application Configuration Center.

    ```powershell
    function Create-HealthVaultCert([guid]$applicationID) {
        $cert = New-SelfSignedCertificate -DnsName "WildcatApp-$applicationID" -CertStoreLocation "cert:\\LocalMachine\My" -HashAlgorithm "SHA256" -Provider'Microsoft Enhanced RSA and AES Cryptographic Provider'    
        Export-Certificate -Cert $cert -FilePath$env:USERPROFILE\Downloads\${applicationID}.cer    
        Set-ReadPermissionsForCert $cert
    }
    function Set-ReadPermissionsForCert([System.Security.Cryptography.X509Certificates.X509Certificate]$Cert, [string]$Username = $env:USERNAME) {
        $keyPath = "C:\ProgramData\Microsoft\Crypto\RSA\MachineKeys\"    
        $fullPath =$keyPath+$Cert.PrivateKey.CspKeyContainerInfo.UniqueKeyContainerName
        $acl = Get-Acl -Path $fullPath    
        $permission = $Username,"Read","Allow"    
        $accessRule = New-Object System.Security.AccessControl.FileSystemAccessRule$permission    
        $acl.AddAccessRule($accessRule)     
        Set-Acl $fullPath $acl
    } 
    #Edit the string below to specify the appropriate ApplicationID you received from the Application Configuration Center
    Create-HealthVaultCert("Insert Your ApplicationID Here")
    ```
2.  On previous versions of Windows

    1.  Open a Visual Studio Developer Command Prompt as an Administrator.
    2.  Execute the following command, replacing each instance of  the GUID below with your own application ID:

    ```cmd
    makecert -a sha256 -n "CN=WildcatApp-6f147b94-56d5-4e10-a44e-3a4bea89d878" -sr LocalMachine -ss My -sky signature -pe -len 2048 
     "%USERPROFILE%\Downloads\6f147b94-56d5-4e10-a44e-3a4bea89d878.cer" 
    ```

3.  These commands will install the private key on your machine and write the public key to the specified certificate file. You will find the signed certificate in the Downloads folder for the currently logged in user.

For more information, please refer to: [https://msdn.microsoft.com/en-us/healthvault/dn781357](/healthvault/concepts/authorization/creating-key-pairs.md)

### (Optional) Installing a test certificate on other machines

To run your application on the same machine where you ran created the certificate, no further action is required.

To run your application on additional machines (for instance, multiple developers working on the same application), you will need to export the private key from the first machine and import it onto the other machines.

*To export the certificate:*

1.  Launch mmc.exe.
2.  Go to File &gt; Add/Remove Snap-In.
3.  In the left-hand pane, select Certificates and click Add.
4.  Select Computer account and click Next.
5.  Ensure that Local computer is checked and click Finish.
6.  In the left-hand pan, select Console Root &gt; Certificates &gt; Personal &gt; Certificates.
7.  In the right-hand pane, find the certificate issued to WildcatApp-.
8.  Right-click the row for your certificate and choose All Tasks &gt; Export.
9.  Click Next.
10. Select “Yes, export the private key” and click Next.
11. Select .PFX.
12. Add allowed users or groups (recommended) or a password to protect your certificate and click Next.
13. Browse to a file location, enter a name, and click Next.
14. Click Finish.

You can now share this certificate with others.

*To import the certificate:*

1.  Double click the .pfx file.
2.  Choose Store Location = Local Machine and click Next.
3.  Click Next.
4.  Enter password if needed and click Next.
5.  Ensure “Automatically select the certificate store” is selected and Click Next.
6.  Click Finish.

For more information
--------------------

-   [HealthVault Overview](https://www.healthvault.com/us/en)
-   [HealthVault technical overview](https://go.microsoft.com/fwlink/?linkid=839408)
-   [HealthVault REST API Reference](https://go.microsoft.com/fwlink/?linkid=839407)
-   [HealthVault SDKs](https://go.microsoft.com/fwlink/?linkid=839410)

