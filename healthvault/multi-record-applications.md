Multi-record applications
=========================

A multi-record application (MRA) is designed to access multiple health records at the same time.  In contrast a single-record application (SRA) is designed to work against one record at a time.

Platform requests that require MRA identification
-------------------------------------------------

-   When signing in the user, call the RedirectToLogOn method and pass in “TRUE” for the isMra parameter. This action ensures that the user sees appropriate UI to select multiple records in application authorization.
-   If a user of the application adds a new record to the account, the application needs to call HealthVault platform to give the application access to that record. The application calls the RedirectToShell method and passes in “APPAUTH” as the target location (**targetLocation**) parameter. In the target query (**targetQuery**) parameter, the application needs to pass in "isMra=true".

Users, records, and multi-record applications
---------------------------------------------

A HealthVault account is created when you sign up with HealthVault. An account can hold records for many users, but is under a single person’s name. Each record contains health information for one person, and can be managed and shared independently of other records, so you can keep information for each person separate.

If you are writing an application, this is something that you need to deal with. If you use an application, and then come back to it after getting access to another record, you need to provide the following:

-   A way to authorize the application to access the new record. This authorization is done through the shell and a redirect, similar to the way normal authorization is done.
-   UI to allow the user to switch between records.

The existence of multiple records is the reason why you need to use PersonInfo.SelectedRecord to access the data: it belongs to the current record, not to the current user.

An application can access PersonInfo.PersonId and SelectedRecord.Id, and use those to uniquely identify that user and record.

But, to make it harder to correlate information between applications, the same person using two separate applications is going to have two different values of PersonInfo.PersonId and SelectedRecord.Id.

### Integrating with HealthVault

Connections

-   <a href="connectivity.md" id="RightRailLinkListSection_14002_7">Establishing connectivity</a>
-   <a href="web-connectivity.md" id="RightRailLinkListSection_14002_8">Web connections</a>
-   <a href="patient-connect.md" id="RightRailLinkListSection_14002_9">Patient Connect</a>
-   <a href="dopu.md" id="RightRailLinkListSection_14002_10">Drop-off-and-pick-up (DOPU)</a>
-   <a href="direct-messaging.md" id="RightRailLinkListSection_14002_11">Direct Messaging</a>
-   <a href="mobile-devices.md" id="RightRailLinkListSection_14002_12">Mobile devices (SODA)</a>
-   <a href="soda-walkthrough.md" id="RightRailLinkListSection_14002_13">SODA example</a>
-   <a href="connection-troubleshooting.md" id="RightRailLinkListSection_14002_14">Troubleshooting connections</a>

Authorization

-   <a href="authentication-and-authorization.md" id="RightRailLinkListSection_14002_15">Authentication and authorization</a>
-   <a href="offline-access.md" id="RightRailLinkListSection_14002_16">Offline access</a>
-   <a href="optional-authorization.md" id="RightRailLinkListSection_14002_17">Optional authorization</a>
-   <a href="authorization-changes.md" id="RightRailLinkListSection_14002_18">Authorization changes</a>
-   <a href="alternate-user-identifiers.md" id="RightRailLinkListSection_14002_19">Alternate user IDs</a>
-   <a href="multi-record-applications.md" id="RightRailLinkListSection_14002_20">Multi-record applications</a>

See also

-   <a href="shell-redirect-interface.md" id="RightRailLinkListSection_14002_21">Shell redirect interface</a>

