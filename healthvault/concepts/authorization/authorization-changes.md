---
title: Changing authorization rules
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn about how to change your app's authorization rules and the important caveats to consider when doing so. 
---

# Prepare for authorization changes

Application authorization rules comprise required and optional rules. When an application redirects a user to sign in to HealthVault, all current required rules must be authorized by the user for the current record before HealthVault will return an authentication token to the application. After an application is authorized for a person’s record, several events may affect the application's ability to access the record, including (but not limited to) the following:

-   The application might update its authorization rules, which may or may not require re-authorization by the user (see "Updating authorization rules" below).
-   The user or application might revoke the application’s access.
-   The user might lose their own access to the record.

Applications should be prepared to handle changing access scenarios.

# Updating authorization rules

When you update your application's authorization rules, it may affect the application’s access to a record.

Depending on the change, the following situations can occur:

-   If an application adds types to a required rule, then HealthVault asks the user to reauthorize the application. Due to their own permissions, the user might be unable to authorize the new rules, which would prevent the application from accessing the record again.
-   If an application removes types from a required rule, then HealthVault doesn't ask the user to reauthorize the application.
-   If an application changes an optional rule, HealthVault asks the user to reauthorize only at the direction of the application.

Applications using offline access may continue to use the existing authorized access even after updating any required rules.

# Determining whether your app needs to check for sufficient authorization

Whether or not you need to check for sufficient authorization to a record depends on what type of HealthVault interaction model your app uses.

## Online Single-Record Applications (SRA)

Online Single Record Applications (SRA) don't need to check for sufficient authorization to a record, because HealthVault will ensure the user has granted sufficient access to the selected record before returning an authentication token. If the application loses access during the user’s session, HealthVault will return an AccessDenied error. In that case, redirecting the user back to HealthVault for reauthorization can resolve the issue.

## Multi-Record Applications (MRA)

HealthVault handles [multi-record applications](/healthvault/concepts/authorization/multi-record-applications) slightly differently. HealthVault returns an authentication token if the user has fully authorized any record for the application. You should inspect the record’s authorization status, as described below, before accessing the record.

## Offline applications and applications with optional rules

Offline applications and applications using optional authentication might need to check the specific permissions granted to the application.

-   If the application updates its rules and adds new types, then inspecting the authorized permissions before accessing a record can be useful. After an application updates its rules, HealthVault allows offline access for the permissions already granted by the user. The application may then have more access to some records than to others.
-   If an offline application never changes its authorization rules, it doesn't need to check for sufficient authorization. The application either has access or it doesn't.

# Checking for sufficient authorization

There are several ways to find out whether or not an application can access a record and what permissions it has. The **GetPersonInfo**, **QueryPermissions**, and **GetAuthorizedRecords** requests all return authorization information. For more information about these requests, see the [HealthVault XML method browser](http://developer.healthvault.com/pages/methods/methods.aspx) or the .NET SDK [ApplicationConnection.GetPersonInfo](/healthvault/sdks/dotnet/microsoft.health.applicationconnection.getpersoninfo.aspx), [HealthRecordAccessor.QueryPermissions](/healthvault/sdks/dotnet/microsoft.health.healthrecordaccessor.querypermissions.aspx), and [ApplicationConnection.GetAuthorizedRecords](/healthvault/sdks/dotnet/microsoft.health.applicationconnection.getauthorizedrecords.aspx) methods.

-   If **GetPersonInfo** returns **AccessDenied**, the user has revoked all access to all of their records. Otherwise, **GetPersonInfo** returns a list of records, each with an authorization status (discussed below).
-   **QueryPermissions** can be used to determine the permission level of access to specific thing types. When upgrading an offline application or handling optional authentication, an application can query the access to a specific thing type before attempting to access the record. For optional authentication, the application can then direct the user to authorize a rule. For offline applications, the application might simply skip processing any unauthorized types.
-   **GetAuthorizedRecords** returns authorization status information. Instead of returning all of a person’s authorized records like **GetPersonInfo** does, **GetAuthorizedRecords** returns information about only the record-ids passed in the request parameters.

HealthVault returns the authorization status in response to **GetPersonInfo** and **GetAuthorizedRecords** requests in a the **app-record-auth-action** field. The values are as follows:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Value</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>NoActionRequired</p></td>
<td><p>The user has authorized all of the application’s required rules.</p></td>
</tr>
<tr class="even">
<td><p>ReauthorizationRequired</p></td>
<td><p>The application updated its rules to add new types in a required rule and the user has not yet authorized them. Offline access remains possible to the types previously authorized.</p></td>
</tr>
<tr class="odd">
<td><p>ReauthorizationNotPossible</p></td>
<td><p>The application updated its rules to add new types in a required rule and the user won't be able to authorize them because the user has insufficient rights to the application to grant the entire request. Or the user has lost sufficient access to the record.</p></td>
</tr>
</tbody>
</table>

Requesting authorization to optional rules
------------------------------------------

When creating an authorization rule, you assign a unique name to each rule. When requesting a user to authorize a rule, pass the rule’s unique name and your application ID in the query string to the APPAUTH target of the [shell redirect interface](/healthvault/concepts/authorization/shell-redirect-interface).

For more information, see [optional authorization](/healthvault/concepts/authorization/optional-authorization).