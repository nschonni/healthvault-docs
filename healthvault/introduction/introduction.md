---
title: Introduction
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: High level overview of the HealthVault platform for developers and business decision makers. 
---

HealthVault: a platform for connected health information and innovation
=======================================================================

HealthVault provides a unique, feature-rich development platform for consumer and patient engagement. HealthVault offers:

-   A Microsoft platform for health information and innovation
-   Built-in functionality for privacy, security, and data provenance
-   Vendor neutrality
-   A flexible health data type system that supports data interoperability
-   Cloud service and storage of account-holders’ personal health records
-   Advance patient outcomes and adherence to care plans
-   Device connectivity

What is HealthVault?
--------------------

Microsoft HealthVault is a cloud-based platform designed to put people in control of their health data.

HealthVault helps people collect, store, and share health information with family members and participating healthcare providers. HealthVault connects with a variety of third-party applications and devices to help people manage their fitness, diet, and health data.

HealthVault offers a privacy- and security-enhanced foundation on which a broad ecosystem of solution providers, device manufacturers, and developers build innovative new health and wellness management solutions.

HealthVault enables a connected ecosystem that currently includes more than 300 applications and more than 80 connected health and fitness devices in the U.S.

A Microsoft platform for personal health information
----------------------------------------------------

As a Microsoft platform, HealthVault offers:

-   Developer engagement and tools
-   Durable, supported interfaces
-   Cross-platform commitment
-   High service availability and redundancy
-   Long-term investment
-   Enterprise footprint
-   Respect for partner innovation and intellectual property (IP)
-   Continuous platform improvement
-   International availability

Privacy, security, and data provenance
--------------------------------------

A commitment to privacy and security of users’ information is the foundation upon which HealthVault was built.

When you develop on the HealthVault platform, you can take advantage of built-in functionality that handles some of the most important and challenging aspects of working with sensitive personal health information.

HealthVault provides:

-   **Authentication**: Users can sign in with their Microsoft account credentials.
-   **Authorization**: HealthVault obtains user authorization before enabling any data access between an application and a user’s HealthVault account data.
-   **User control**: Users control how their data is shared by explicitly authorizing people and applications to access their data. Users can also terminate application access at any time, and can change or delete information in their records.
-   **Auditing**: Data access auditing is built in and available to users.
-   **Data provenance**: HealthVault data contains the source of the data, and applications can leverage this information to determine how to treat data from different sources. Optional digital signatures allow for independent verification of data integrity and source.

Since HealthVault is controlled by the user, sending information to a HealthVault record can be an additional way for healthcare providers to transfer information to their patients, replacing or supplementing mail, fax, DVD, and similar methods.

For U.S. users, the Federal Trade Commission regulates security and privacy of HealthVault records. HealthVault is registered with the FDA as a Class 1 medical device.

Vendor neutrality
-----------------

HealthVault isn’t tied to a particular healthcare provider, health system, device, or technology. Anyone can innovate on and benefit from the platform.

Users benefit from creating a portable health record they own and control. They can easily share information with their doctors and other caregivers, and store data from many sources, such as pharmacies, hospitals, consumer apps, and personal health devices.

The HealthVault platform exposes an XML-over-HTTP interface to web, rich client, and mobile applications. As an app developer, you benefit from interoperability with apps running on numerous platforms, including [Windows/.NET](https://www.microsoft.com/download/en/details.aspx?displaylang=en&id=3418), [Java](http://healthvaultjavalib.codeplex.com/), [iPhone](https://github.com/microsoft-hsg/HealthVault-Mobile-iOS-Library), and [Android](http://healthvaultjavalib.codeplex.com/). It’s easy to connect to HealthVault from any modern development platform.

A flexible health data type system that supports data interoperability
----------------------------------------------------------------------

You can build apps that, with user consent, bring together data from healthcare providers and health services, device data, and user-entered data. Every day, more apps, services, and devices are added to the HealthVault ecosystem. By developing your solution on HealthVault, you're connected to the data "hub" and don't need to create point-to-point connections to other apps, services, and devices.

Users can store data once and use it in many ways. New ways of using existing data are added as capabilities and apps are introduced. By using data your app creates with other HealthVault-compatible apps, users have a richer end-to-end experience than your app could provide on its own.

Our data model solves some of the hard problems in building health apps. The HealthVault data type system supports industry standards (such as CCR and DICOM). Where no standards exist, the HealthVault team uses a robust, community-informed data type design process. You can use HealthVault data types without investing time to design your own Medication, Exercise, Dietary Intake or other health domain data type. The richness and depth of our data types enables you to use data created by other apps.

Cloud service and storage
-------------------------

HealthVault has the infrastructure to provide users long-term storage of and access to health information, so applications can focus on innovation.

By building your app natively on the HealthVault platform, you users benefit from the scale of the Microsoft Cloud. HealthVault accounts are access-controlled, high-availability storage, which we scale as needed.

Users benefit from having a single place to collect, store, share, and manage health data for themselves and their families, accessible from any Internet connection.

As an app developer, you benefit by connecting your users with a long-term home for their data. HealthVault is also a great solution for healthcare and health services providers who want to transfer data to patients in digital form.

You can work entirely with users’ HealthVault records, or use a "hybrid" design where data is stored in your system and HealthVault. HealthVault has a variety of connectivity options, including:

-   Your app reads data from HealthVault for use within the app
-   Your app exports data to HealthVault in a "one-off" transfer
-   Ongoing synchronization of data between HealthVault and your storage system.

Advance patient outcomes and adherence to care plans
----------------------------------------------------

Providers can create and deliver customized chronic care or wellness plans for their patients, while patients can easily customize and manage their healthcare tasks so that they can stay on track with their plans. Providers and patients can also both communicate through the [HealthVault Insights app](https://go.microsoft.com/fwlink/?linkid=841211), receiving and providing real-time feedback.

The Action Plans framework enables healthcare providers to quickly create and send digitized care plans to their patients. Providers can access patient data for remote monitoring in between follow-up visits.
These APIs work directly with the HealthVault service and HealthVault Insights app to drive ongoing patient engagement.

App developers can find information about creating action plans [here](/healthvault/scenarios/action-plans).

Device connectivity
-------------------

HealthVault supports connectivity with a variety of smart health devices. Device types include:

-   Weight scales
-   Blood pressure monitors
-   Blood glucose monitors
-   Pedometers and activity monitors
-   Heart rate monitors
-   Pulse oximeters

Check out the HealthVault Device Directory at <https://account.healthvault.com/Directory?target=Devices>.

For information about how to make a device compatible with HealthVault, see <a href="/healthvault/concepts/device-driver-kit/device-overview" id="PageContent_13982_2">overview of devices.</a>
