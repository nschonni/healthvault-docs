Offline access
==============

The difference between online and offline access is that while in the online scenario, the user is prompted to sign in every time. In the offline scenario, the user is prompted to sign in once, and the application is then permitted to access the user’s data without a future sign-in.

The HealthVault platform supports the online scenario because it offers customers slightly more privacy control over access to their sensitive health information. The platform supports the offline case because it can enable scenarios with more effective and richer customer value, such as performing synchronization between HealthVault and some other data store, batch-processing scenarios, etc.

It is in the interest of both the application developer and the consumer to limit both the breadth and duration of data access to what is essential for the application to provide the full range of services it wants to offer to the user. When an application wants to connect to HealthVault for the first time, the user always gets to see which data subset and access privileges are requested. It is important to understand that applications requesting an offline connection raise the trust bar to a higher level. Consumers are more likely to grant offline access to organizations that they trust deeply—their physician, for example—but are going to be less willing to give it to an application they just want to explore. So HealthVault wants to limit applications to the online scenario unless offline access is backed by a clear scenario.

All SDK sample applications are configured without offline access. If you are building an application that can benefit from offline access, make sure you include a clear description of the offline user scenario.

Your application must be configured on Microsoft’s servers to request offline authorization from its users. You can see what access your application requests by accessing it with a new user account or by revoking the application’s access to an existing record (from the shell) and then accessing the application with the account that had used the revoked record in the past.

When you know that your application requests offline access, here is some sample code to get you up and running:

`OfflineWebApplicationConnectionofflineConn =    new OfflineWebApplicationConnection(offlineUser);offlineConn.Authenticate();HealthRecordAccessor accessor =    new HealthRecordAccessor(offlineConn, <RECORD_GUID>);`
You can then use the Accessor to build a Searcher and pull the desired HealthRecordItems.

Note that you should have cached the record GUID when the user was online and configured/authorized your background process.

Using RecordIDs and UserIDs
---------------------------

The Authenticate() method authenticates only the application, not the user. So if you send an incorrect UserID (or a RecordID instead of a UserID), you don't see an error message until you actually try to read data.

After the connection has been authenticated and the UserID has been set, you can ask for a HealthRecordAccessor for a specific record. You need to cache this RecordID and UserID when the user grants access to your application because the platform does not supply them to you. The platform validates that the user has granted your application access to the requested record when you try to read from or write to that record.

The connection can be used in the context of only one UserID at a time, but you can change the UserID on the connection object between calls to pull data from the platform.

Changes are pending that will avoid the problem of confusion between the UserID and the RecordID generating error messages late in the process. The model for making an offline connection and using a record will be almost the same as the online case. You will still have to store the UserID to make the offline connection, but not the RecordID.

Handshake for offline applications
----------------------------------

Partner applications that use offline access currently need a portal page that uses online access. The user authenticates into that page, authorizes access to the application, and then the portal page records the user ID and record ID. It can then save those two values (both GUIDs) in the record for that person, and use them to connect to that person's HealthVault record.

Because having to create a portal application just to do this is a bit clumsy, we have added a platform feature where the offline system can "register" an identifier that lets them know who a person is with HealthVault, and HealthVault would return a validation code to the system. The user could then go to HealthVault, select the appropriate application, and enter that validation code, which would be recorded.

At a later time, the offline system could query for new validations. It would then get back the identifier it registered along with user ID and record ID, and at that point it could use offline access.

### Integrating with HealthVault

Connections

-   <a href="connectivity.md" id="RightRailLinkListSection_14000_15">Establishing connectivity</a>
-   <a href="web-connectivity.md" id="RightRailLinkListSection_14000_7">Web connections</a>
-   <a href="patient-connect.md" id="RightRailLinkListSection_14000_8">Patient Connect</a>
-   <a href="dopu.md" id="RightRailLinkListSection_14000_9">Drop-off-and-pick-up (DOPU)</a>
-   <a href="direct-messaging.md" id="RightRailLinkListSection_14000_10">Direct Messaging</a>
-   <a href="mobile-devices.md" id="RightRailLinkListSection_14000_18">Mobile devices (SODA)</a>
-   <a href="soda-walkthrough.md" id="RightRailLinkListSection_14000_19">SODA example</a>
-   <a href="connection-troubleshooting.md" id="RightRailLinkListSection_14000_16">Troubleshooting connections</a>

Authorization

-   <a href="authentication-and-authorization.md" id="RightRailLinkListSection_14000_11">Authentication and authorization</a>
-   <a href="offline-access.md" id="RightRailLinkListSection_14000_12">Offline access</a>
-   <a href="optional-authorization.md" id="RightRailLinkListSection_14000_13">Optional authorization</a>
-   <a href="authorization-changes.md" id="RightRailLinkListSection_14000_14">Authorization changes</a>
-   <a href="alternate-user-identifiers.md" id="RightRailLinkListSection_14000_17">Alternate user IDs</a>
-   <a href="multi-record-applications.md" id="RightRailLinkListSection_14000_20">Multi-record applications</a>

