---
title: Application Configuration Center | Home
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
---

# Managing HealthVault Apps

The HealthVault Application Configuration Center (ACC) is how developers can register and manage their apps in the HealthVault Pre-production environment (PPE) as well as in the production environment. 

You can find the Application IDs and Directory IDs associated with your HealthVault account on the home tab. You can edit the configuration of both Application IDs and Directory IDs from the [Application Configuration Center (ACC)](https://config.healthvault-ppe.com).

## Applications
When you register an application with HealthVault, it will appear here. 

### Creating a new HealthVault Application
You can create a new Application ID using the [Create a new application](https://config.healthvault-ppe.com/CreateNewApp.aspx) process available on Home tab. 

### Reclaiming a HealthVault ApplicationId 
If you don't see your application listed on this page, you may "claim" admin rights to your existing ApplicationID. You can "claim" admin rights from Microsoft HealthVault to an Application ID with your HealthVault account by [submitting a request](https://config.healthvault-ppe.com/ReclaimExistingApplication.aspx). Microsoft requires the thumbprint of the application's public certificate to confirm the ownership of your application. You can find detailed steps on how to retrieve the Thumbprint of a Certificate at [http://msdn.microsoft.com/en-us/library/ms734695.aspx](https://msdn.microsoft.com/en-us/library/ms734695.aspx). 

### Properties
* **Application ID** This GUID uniquely identifies an application in the PPE environment. Application admins will be able to view and edit the configuration associated with an Application ID by clicking on Application ID in the Home tab. 
* **Application Name** The name registered name of the application. Note, this will be displayed whenever users go through authentication for your app. 
* **Application Type** This indicates which authentication method the app uses. Possible values for application type are [Master](/healthvault/master-and-child-applications), [SODA](/healthvault/mobile-apps), and [Default](/healthvault/web-connectivity). It is possible to change the Application Type  under the [Misc Tab](acc-misc-tab.md), however, changing an Application Type from Default to Master or SODA is irreversible.
* **Go live?** This link initiates the HealthVault Go-live process. For more information, see [Go Live](/healthvault/go-live). 
* **Actions**
  * **View app config in production** This link will help you to view your application’s configuration once it is in production. If your app has not completed the Go-live process, this link will produce an error. Each of the fields shown here except "Valid IP Prefixes" are configurable for your Application ID in PPE. 
  
  To specify "Valid IP Prefixes", please inform Microsoft during the [Go-Live process](/healthvault/go-live) or by contacting [HealthVault Developer Support for SDK](https://support.microsoft.com/oas/default.aspx?prid=13388) after go-live. 
  * **Disable** This will disable an application by clicking on this link.

> [!NOTE]
> Disabling an application is irreversable. 

## Directories
Creating a directory allows you to showcase your app or device to the HealthVault ecosystem. You can create a HealthVault Application Directory for your application and Device Directory from here. Remember that the directory entry that you create for your application is publically viewable from the HealthVault Application Directory Listing. 
* [Application directory listing for HealthVault PPE](http://www.healthvault-ppe.com/personal/app-device.aspx)
* [Application directory listing for HealthVault Production](http://www.healthvault.com/personal/app-device.aspx)

* **Directory ID** This GUID uniquely identifies a directory item in the PPE environment. You will be able to view and edit the configuration of a Directory ID by clicking on the Directory ID link on the Home Tab. For more information about Application Directory IDs and Device Directory IDs, see [Create or Edit an Application Directory Page](acc-create-or-edit-an-application-directory-page.md) and [Create or Edit a Device Directory Page](acc-create-or-edit-a-device-directory-page.md) respectively.
* **Directory Name** You can list your directory name here. The same name will be displayed once it is available in the HealthVault Directory Listing for production site.
* **Directory Type** This displays your directory type. HealthVault supports application and device type directory listings.


