---
title: Application Configuration Center | Online and Offline Rules
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
---

# Managing data type rules for online or offline access
HealthVault controls access to data types for online and offline access separately. Online access means that the user is always logged in and present when their data is being accessed, whereas offline access means that your app gets delegated access to her data until access is revoked. 

This experience allows you to manage both data types and the permissions your application needs for each of these. 

By default, your application is configured with online access to the Application-Specific Information data type. You can edit this rule to include the set of data types and level of access your application requires. You may also add new rules if you require different levels of access to different data types. Each access rule will be shown to the user during  the application authorization approval process. Your rules must not require access to more permissions than your application requires.

* **Rule Name** Required. Name of the rule. Maximum length is 16 characters. 
* **Why String** Required. Each Why String should accurately describe why your application is requesting the specified access and how that information will be used if approved by the consumer. These descriptions should be a refinement of the Auth Reason that you entered on the Information tab and are especially useful when you have set the rule to optional (Is Optional? = True). These descriptions are presented to the consumer when they are requested to approve access to their HealthVault information for your application.
* **Is Optional** You can create two different types of rules for your HealthVault application which are required and optional. To make a rule optional, select >Is Optional. For optional rules, consumers are not required to approve access for them to be able to use your application.

  For example, if the primary scenario of your application is to chart existing weight measurements and as a secondary scenario, it can allow editing of profile information, you should consider creating two rules, where the first rule has Read permission for the Weight Measurement data type and is not marked as optional and the second rule has All permission to the Personal Demographic Information data type and is marked as optional.

  Only those rules that apply to the core functionality of your application should be required. All other rules should be optional.

  For more information, see [Optional Authorization](https://msdn.microsoft.com/en-us/healthvault/cc539985.aspx).

* **Display flags** By setting these values you can control the display behavior of your optional rule in authorization page. For more information, see [Optional Authorization](https://msdn.microsoft.com/en-us/healthvault/cc539985.aspx).

* **Permissions** This defines the level of access your application requires for the selected set of data types. Be sure to set this to the minimum set required for your application for each set of data types. If your application requires a different level of permissions across the set of data types, then you should create multiple rules that group the data types with the corresponding levels of permission. For example, if your application charts existing weight measurements and allows creation and editing of profile information, then you should create two rules with the first rule having Read permission for the Weight Measurement data type and the second rule having Create, Edit, Update, Delete (or All) permission for the Personal Demographic Information data type.

* **Data Types** Here you can find the list of data types available in HealthVault. You can select the data types which you want to have access user’s health record where it is used by your application. If you hover through the help for each data type then you can see the Type ID (GUID) and the brief summary corresponding to that data type. An addition information – the HealthVault .NET SDK type name will be displayed for data types having multiple versions.

  To uncheck all the data types you have chosen, click >Uncheck All. For more information about each data type, see [List of all thing types](/healthvault/reference/datatypes/).

  We recommend choosing the latest HealthVault Data Types for your application. The highest version of a data type is listed on the top among its different versions. Medication and Lab Test Results are examples for data types which are having more than one version in HealthVault.
