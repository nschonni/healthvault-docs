Master and child applications
=============================

When to use master and child application IDs
--------------------------------------------

Master and child application IDs are used by solution providers that have the following types of HealthVault-integrated products:

-   **A single-practice system**

    For example, a traditional EMR or lab ordering system. The system is either installed at a single organization (for example, a provider practice) or hosted on behalf of one. The system is configured with a single HealthVault app ID that is tied to the organization.

-   **A multi-physician or multi-practice online service**

    For example, an online EMR or e-prescribing service. The service enables multiple physicians or practices to register and use its services. Each registered physician or practice (demarcated by legal boundaries) must be represented by a unique app ID when making calls to HealthVault. Consumers do not want to grant all users of an online service access to their HealthVault record, but instead want to grant access to specific physicians or practices. If data isolation is required between users, each physician or practice must be assigned a unique HealthVault app ID.

Microsoft gives master app IDs to solution providers with HealthVault-integrated products that fall into either of above categories. The master app ID can then be used to create child app IDs for customers. To obtain a master app ID that works in the HealthVault Consumer Environment, you must sign a specific HealthVault solution provider agreement.

Creating a master app ID
------------------------

Like all other HealthVault app IDs, a master app ID is associated with a unique public/private key pair. After receiving an app ID from Microsoft, a solution provider creates a corresponding public/private key pair and sends the public key to Microsoft. The solution provider uses the private key to call the HealthVault API to create, update, and delete child app IDs.

The solution provider also gives Microsoft a list of HealthVault data types which their customers need access to. This list includes the maximum set, with the understanding that their different customers may require different subsets.

Creating child app IDs
----------------------

A solution provider with a master app ID calls the HealthVault API to create, update, and delete child app IDs.

A single-practice system likely calls this API before deploying its product at a customer site, and the API can be called by any piece of code configured with the master app ID and private key. A unique public/private key pair must be used for each child app ID.

A multi-physician or multi-practice online service likely calls this API on the fly when physicians or practices register for its service and opt-in to its HealthVault-integrated features. Since a child app ID is used to call HealthVault from the same service, the public/private key pair of the master app ID may be used for the child app ID.

API
---

The **.NET API** has a namespace called **Microsoft.Health.ApplicationProvisioning**. This namespace provides the API for master applications to create and update child app IDs. 

AddApplication is used to create and enable a new child application.

UpdateApplication can be used at a later time to change the properties of the given child application.

The ApplicationInfo .NET API class includes the properties that make up the configuration of an application. The properties customize the rendering and authorization requirements of the application instance, and include the name of the physician or practice, their logo, and the HealthVault data types which they need access to. The physician or practice’s privacy statement and terms of use are also required, and different logic is used depending on whether the product is a single-practice system or a multi-physician/practice online service:

-   Single-practice systems pass text blobs to the **privacyStatement** and **termsOfUse** properties.
-   Multi-physician online services pass in a URL to the **actionUrl** property that can redirect to both these documents depending on which query parameter is passed in (“privacy” or “serviceagreement”).

### Integrating with HealthVault

See also

-   <a href="mobile-devices.md" id="RightRailLinkListSection_13988_7">Mobile devices (SODA)</a>

