---
title: Supported app architectures
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn about the best way to determine if a HealthVault Thing is current or historical. 
---

# Architectural decisions before you build your first HealthVault application

The HealthVault platform supports several different application architectures.The choice of architecture has a significant impact on the desirability and the usability of the application for users, and on the effort required for development and maintenance of the application. Our goal is to provide guidance to allow you to select the application type that results in the best experience for both you and your users.

Our guidance is structured around  the following questions:

-   Where is the data stored?
-   When is the data accessed?
-   How is the user authenticated?

Each question is discussed in a separate section, with recommendations at the end of each section.

After you read through the guide, if you still have questions about your specific scenario, you can ask them through the HealthVault forum, or directly at <hvbd@microsoft.com>.

Where Is the Data Stored?
-------------------------

There are three options for data storage. In order of increasing complexity, they are:

1.  All data stored is stored in HealthVault.
2.  Applications store data in HealthVault, and store additional in a separate storage location (no synchronization required).
3.  Some data is duplicated in HealthVault and in a separate storage location (synchronization is required).

Storing data outside HealthVault places higher demands on both the architecture of your application and your operations team.

### All data stored in HealthVault

All data that the application needs is stored in HealthVault.

### Applications store additional data

In this option, an application uses HealthVault to store some of its data, and it stores the remainder of the data in an application-specific data store.

**Issues to consider:**

-   Any correlation (that is, linking) between the data stored in HealthVault and the data stored in the application-specific data store must be implemented by the application. The linking information should be stored with the application data rather than in HealthVault to protect the security and privacy of the application data, since any data stored in HealthVault can be edited by the user.
-   The partner organization must support the storage of the information, and implement operational policies around data access, retention, privacy, etc.
-   The partner agreement with Microsoft must detail the privacy policy for the data stored on the application server.
-   Customers will not be able to use other applications to access the data stored outside of HealthVault, nor will the application be able to access similar data from other applications or devices that is stored in HealthVault.

### Applications store duplicate data

In this option, both HealthVault and the application have their own individual data stores.

**Issues to consider**:

-   Creating an application that keeps data synchronized across multiple data stores is a difficult technical challenge that should not be underestimated.
-   An application that stores all of its data in HealthVault offers more value to the user than one that uses import and export to move data into and out of HealthVault.
-   Storing duplicate data and then performing synchronization across data stores is a model that is difficult to explain to the user and often leads to an undesirable user experience.
-   All the issues from the “additional data” section also apply.

### Data storage guidance

Storing all the data in HealthVault provides your application with access to the largest ecosystem of data, and it is easiest for users to use and for you to develop and maintain. Users may also be more willing to use an application if they know that all their data remains accessible outside of the application.

If you believe you have a need for a separate database to store data, we encourage you to first explore how that data might be stored in HealthVault—either through the addition of new data types or by using the extensions mechanisms to add data to existing types.

For existing applications or applications that interoperate with existing data stores, storing data outside of HealthVault may be viable choices. It may also be possible to provide an option on a per-user basis, so that one user can use the existing storage mechanism, and another can choose to store their data in HealthVault.

If any data is stored on the application server, the HealthVault partner agreement requires the partner to detail their privacy policy for that data, and this policy must be at least as restrictive as the HealthVault privacy statement. Further, duplicating HealthVault information and storing it outside of HealthVault requires that the partner provide processes for customers to delete and purge that data from their systems upon customer request.

When Is the Data Accessed?
--------------------------

There are two options in this area:

-   The application can access a user’s health record when the user is using the Web application (online access).
-   The application can access a user’s health record at any time (online + offline access).

### Online access

In this approach, the application runs as a Web application. When the user starts the application, they are redirected to Live ID for authentication, to the HealthVault Account Site to authorize the application to access their health record (first time only), and then back to application page, which is then allowed to access that user’s health record. The access is always initiated by a user action, though the authentication page can be bypassed through the use of cookies.

### Offline access

This approach works exactly like the online access version, except that once the user has authorized the application to access a health record, the application records the user’s ID and is then allowed to access that user’s data at any time. The access is then initiated by the application without user involvement.

### Access guidance

Because offline access permits data access at any time, users set a higher bar before granting such access, and are likely to grant it only to applications that they trust.

Because of this higher bar, we recommend using offline access only for scenarios that cannot be accomplished without such access.

Examples of scenarios where offline access is reasonable:

-   Physician portals that pull HealthVault data to pass it on to a consumer’s physician
-   Nighttime or batch-oriented processing

Is the User Authenticated?
--------------------------

It is important to note that the authentication provided by HealthVault does not perform actual physical identity authentication.

To ensure that users understand the data access that they are granting to applications, and to enforce the online/offline distinction, HealthVault requires any authentication to be done through the HealthVault Account site. That rule means that online applications require users to authenticate through HealthVault before their data can be accessed.

For systems that currently have their own authentication systems (that is, the user logs on using an application-specific set of credentials), the user needs to log on to both the application and HealthVault before HealthVault functionality can be used.

There are two ways to deal with this situation:

-   Use HealthVault authentication instead of application authentication.
-   Use cookies.

### Use HealthVault authentication

This option is simple—instead of requiring the user to enter their application credentials, the user simply has to authenticate through HealthVault and the application accepts this authentication as an application authentication.

While simple, this option may require re-architecting an existing application to make it more HealthVault-centric, and requires HealthVault authentication even for users who do not use features requiring access to HealthVault data.

### Use cookies

This option is a workaround that can reduce (but not eliminate) the number of times the user must deal with the double logon.

HealthVault supports a per-application setting that specifies the time period during which a user returning to the application is automatically logged on to HealthVault.

Similarly, an application can also implement a cookie-based approach to allow users to return to the application without providing their application credentials.

### Authentication guidance

Using HealthVault authentication is the cleanest and simplest approach.

If that approach doesn’t work for your scenario, the use of cookies is a reasonable workaround in many cases.

We are actively looking at better ways to handle this scenario.

Also note that the desire to avoid a double-logon is not a sufficient reason for using offline access.
