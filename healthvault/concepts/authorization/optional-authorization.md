---
title: Optional authorizations
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: HealthVault apps may leverage optional rules for things which users do not need to consent to. 
---

# Understanding optional data type authorizations

When an application is provisioned at [Application Configuration Center](https://config.healthvault-ppe.com), data access is defined as application authorization rule. There is a flag called "Is optional?" per each rule. If the flag is set, the rule is "optional". Otherwise, it is "required". For "required" rules, users have to either approve all or reject to use the application. But for "optional" rules, they can approve or reject individually.

-   Application developers must decide which data types are required and which ones are optional.
-   Application developers must provide a "why" string for each of the rule the application may want to be authorizeed. This information explains to end users how the application uses the data.
-   Applications cannot assume that they have access to a specific data type in a specific user's record—they need to query the platform to see what access has been granted.
-   When an application wants to ask the user for access to an additional type, it must make the appropriate platform call.

Define application authorization rule
-------------------------------------

Developers define auth rule at Application Configuration Center.

-   Users can make their decision of approve or reject per app auth rule, at Platform application authorization page.
-   Each rule has one attribute for access level (create/read/write/update), why string (access reason), and optional default
-   Each rule can have multiple data types.

There are 3 attributes in optional auth rule.

-   Display first time: If checked, first time users, who never authorize the application before, will see this optional rule.
-   Checked first time: If checked, the default for first time users is checked to approve. Users can uncheck the rule, if they don't want to authorize.
-   Checked by default: If checked, the default for second time users is checked to approve. Users can uncheck the rule, if they don't want to authorize

Provide "why" strings
---------------------

Why strings provide additional information about the benefit of granting an application access to a specific type. Also it explains how the application uses the data.

Query to find out whether a data type can be accessed
-----------------------------------------------------

As mentioned earlier, applications have to determine what kind of access a record grants on a specific type. This can be done with the following code:

```cs
HealthRecordItemTypePermission SelectRecordQueryPermission(Guid typeId)
{
        List<Guid> items = new List<Guid>();
        items.Add(typeId);
        return PersonInfo.SelectedRecord.QueryPermissions(items)[0];
} 
```
and then called with this code:

```cs
HealthRecordItemTypePermission heightPermission = SelectRecordQueryPermission(Height.TypeId);
```
The returned permission mask describes the access the application is granted (create/read/update/delete) in both online and offline modes.

Ask users additional authorization
----------------------------------

Applications may need additional authorization from the users. It can send users to Platform and ask specific auth rule authorization. It is done by sending query strings to specify the rule name. Query strings to include:

-   The application ID
-   A list of rule identifiers

The parameter names for the rule identifiers are the series onopt1, onopt2, onopt3, ... for online rule and offopt1, offopt2, offopt3, ... for offline rule, where the number is sequential so the parameters have different names.
Example:

```
onopt1=<rule name>&onopt2=<rule name>&offopt1=<rule name>
```

Rule names are defined at Application Configuration Center.

Here's an example of using optional authorization.

```cs
string TargetQuery = "appid=11111111-1111-1111-1111-111111111111&onopt1=name1&onopt2=name2";
HealthServicePage ServicePage = new HealthServicePage();
ServicePage.RedirectToShellUrl("APPAUTH", TargetQuery); 
```
