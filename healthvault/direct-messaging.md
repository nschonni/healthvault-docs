Direct Messaging
================

The Direct Project defines an industry standard messaging protocol based on S/MIME. HealthVault provides Direct Messaging addresses for every HealthVault user. Organizations that support Direct Messaging protocols can use this capability to exchange messages with HealthVault users. This includes the ability to send clinical document attachments that are integrated into the user’s record. This article describes how solutions that use the Direct Messaging protocols can connect with HealthVault.

Direct gateways
---------------

Organizations looking to send Direct messages to HealthVault users or to receive messages from HealthVault users, must have a messaging gateway which supports the Direct protocols. There are a number of industry organizations, which offer Direct messaging gateway services. Alternatively, organizations can setup their own instance of a Direct messaging gateway using one of the [Direct reference implementations](http://wiki.directproject.org/Reference%20Implementation%20Workgroup).

Establishing trust for development and testing
----------------------------------------------

Once the organization's Direct messaging gateway is setup, trust must be established between the organization’s messaging gateway and HealthVault’s messaging gateway in order to exchange messages.

HealthVault participates in the Blue Button+ industry initiative which seeks to enable patients to receive copies of their own health information. Organizations that wish to participate in the initiative, can submit their trust anchor on the Blue Button Trust Bundles registration site, here: <a href="https://bundles.nate-trust.org/Nate/" class="uri" id="PageContent_14078_24">https://bundles.nate-trust.org/Nate/</a>. Once the organization’s trust anchor is accepted into the Blue Button+ ecosystem, HealthVault will allow incoming messages from the organization, and will allow HealthVault users to send outgoing messages from HealthVault to the organization.

To participate, organizations can start by adding their anchor to the  **Staging **trust bundle which allows message exchange between the organization and HealthVault’s  [pre-production environment (PPE)](https://account.healthvault-ppe.com/). The organization will also need to import the  <a href="https://messagecenter.healthvault-ppe.com/certs/certs.zip" id="PageContent_14078_25">HealthVault PPE trust anchor</a> into its trust store. The PPE environment allows organizations to test Direct Messaging integration with HealthVault before moving to the HealthVault production environment.

Using the Blue Button+ provisioning is the quickest way to begin testing Direct Messaging exchange with HealthVault. Normally, within 24 hours of registering with the **Providers-Test** bundle, HealthVault PPE will trust message exchanges with the registered trust anchor.

If an organization does not wish to participate in the Blue Button+ initiative, there is an option to establish trust directly between the organization and HealthVault. To enable trust using this option, send a request to <hvbd@microsoft.com>.

Establishing trust for production
---------------------------------

Once an organization has completed testing, it can submit its trust anchor to the Blue Button+ **Providers **trust bundle, and once accepted, message exchange will be possible with HealthVault’s production environment.

If an organization does not wish to participate in the Blue Button+ initiative, there is an option to establish trust directly between the organization and HealthVault. To enable trust using this option, send a request to <hvbd@microsoft.com>.

Sending Direct messages to HealthVault
--------------------------------------

There are two integration methods for sending Direct messages to HealthVault users. The first is to send messages to a user’s existing Direct address if it is known. The second is sending to the *newuser* address when the recipient’s HealthVault Direct address is not known.

Sending to a user’s existing Direct address
-------------------------------------------

When the sender knows the recipient’s Direct address, it can send messages to this address. When HealthVault receives a Direct message for a known Direct address, the recipient is notified with an e-mail message sent to their regular contact e-mail address that a new Direct message is available for viewing in HealthVault. This e-mail contains a link to HealthVault which the user can visit to view the message and its attachments.

Sending to the newuser Direct address
-------------------------------------

If the sender doesn’t know the user’s HealthVault Direct address, or does not want to maintain users’ HealthVault Direct addresses, the sender can send a Direct message to *newuser@direct.healthvault-ppe.com* (or *newuser@direct.healthvault.com* in production) and in the subject line specify the user’s normal e-mail address along with an optional secret question and answer, and a real subject for the message. The subject line format is as follows:

-   Email\[;Question;Answer\]\[;RealSubject\]

The e-mail parameter is required, but the question, answer, and subject are optional.

For example:

-   user@direct.healthvault.com;What is your mother’s maiden name;McKinney;You have a new message

When HealthVault receives a Direct message at the newuser address, it looks for the contact e-mail address in the subject line, stores the message in a temporary holding area, and notifies the patient at the contact e-mail address that new data is waiting to be picked up in HealthVault.

This notification e-mail contains a link to HealthVault, and once visited, the user can create a new HealthVault account or sign-in to an existing account. If a question and answer were specified in the Direct message’s subject line, the user is asked the question and is asked to provide the answer. If no question and answer were specified, then the user is asked to enter his normal contact e-mail address.

Once this information is provided, HealthVault adds the message and attachments to the user’s record.

Message attachments
-------------------

Attachments to incoming Direct messages are extracted from incoming messages and added to the recipient’s HealthVault record as File items (subject to the user’s HealthVault preference settings allowing it). Additionally, HealthVault recognizes clinical document attachments such as CCDA, CCD, CDA, and CCR. HealthVault extracts these from the Direct message and adds them to the recipient’s HealthVault record. Additionally, the individual data items that make up the document are extracted and integrated with the recipient’s HealthVault record.

When attaching clinical documents to Direct messages, the sender can use the following Content-Type specifications to indicate the document type:

**Application/ccd-xml**: The attachment is extracted as a CCD or CCDA item

**Application/cda+xml:**The attachment is extracted as a CDA item.

**Application/ccr+xml:**The attachment is extracted as a CCR item.

**Text/xml:**HealthVault determines if the attachment represents a CCR or CCD document and if so, extracts the attachment into its equivalent item

See also
--------

-   [Start sharing information with patients --- today](http://blogs.msdn.com/b/familyhealthguy/archive/2011/02/12/start-sharing-information-with-patients-today.aspx)
-   [More on adding Direct patient messaging to an EHR](http://blogs.msdn.com/b/familyhealthguy/archive/2011/02/24/more-on-adding-direct-patient-messaging-to-an-ehr.aspx)

### Integrating with HealthVault

Connections

-   <a href="connectivity.md" id="RightRailLinkListSection_14078_15">Establishing connectivity</a>
-   <a href="web-connectivity.md" id="RightRailLinkListSection_14078_7">Web connections</a>
-   <a href="patient-connect.md" id="RightRailLinkListSection_14078_8">Patient Connect</a>
-   <a href="dopu.md" id="RightRailLinkListSection_14078_9">Drop-off-and-pick-up (DOPU)</a>
-   <a href="direct-messaging.md" id="RightRailLinkListSection_14078_10">Direct Messaging</a>
-   <a href="mobile-devices.md" id="RightRailLinkListSection_14078_17">Mobile devices (SODA)</a>
-   <a href="soda-walkthrough.md" id="RightRailLinkListSection_14078_18">SODA example</a>
-   <a href="connection-troubleshooting.md" id="RightRailLinkListSection_14078_16">Troubleshooting connections</a>

Authorization

-   <a href="authentication-and-authorization.md" id="RightRailLinkListSection_14078_11">Authentication and authorization</a>
-   <a href="offline-access.md" id="RightRailLinkListSection_14078_12">Offline access</a>
-   <a href="optional-authorization.md" id="RightRailLinkListSection_14078_13">Optional authorization</a>
-   <a href="authorization-changes.md" id="RightRailLinkListSection_14078_14">Authorization changes</a>
-   <a href="alternate-user-identifiers.md" id="RightRailLinkListSection_14078_19">Alternate user IDs</a>
-   <a href="multi-record-applications.md" id="RightRailLinkListSection_14078_23">Multi-record applications</a>

See also

-   <a href="https://apps.healthvault-ppe.com/messagecenter/certs/certs.zip" id="RightRailLinkListSection_14078_20">Download PPE trust anchor</a>

