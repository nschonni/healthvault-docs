---
title: Application Configuration Center | Methods
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
---

# Configuring allowed methods using Application Configuration Center

By default, the Application Configuration Center (ACC) will have pre-selected the "Basic Set" and "Hosted Web Application" methods for Default (web) applications. These two method groups should be sufficient for most web applications. 

SODA applications are configured with the "SODA application methods" permission instead. 

Applications which will consume the HealthVault REST API for remote monitoring scenarios, for example, will also need to configure the REST APIs and Onboarding APIs permissions. 

Some of the optional methods may require additional review by the HealthVault team or additional terms in your HealthVault Solution Provider Agreement.

* **Basic Set** Selected and non-editable by default. Common methods used by all applications except SODA.
* **Hosted Web Application** Selected and non-editable by default. This allows a web application (non-desktop application) to communicate with HealthVault.
* **Application requires access to ConnectPackage methods** Optional. This method set allows access to connect to the HealthVault platform from back-end clinical systems and is required for Patient Connect and DOPU applications.
* **Application requires access to create an OpenQuery** Optional. This method allows your application to use OpenQuery. When selected, this item may require additional review.
* **Application requires access to be Master (should remain checked for master app) for application provisioning** Optional. This method set allows a master application access to provision child applications and to get authorized connect requests for child applications. For more information, see <span>[Master and Child Applications](/healthvault/concepts/advanced/master-and-child-applications).

  > [!NOTE]
  > In order to go live with a Master application, your HealthVault Solution Provider Agreement must include a specific addendum which covers this functionality.

* **Application requires access to Signup methods** Optional. In special instances we do support creating HealthVault accounts from outside the U.S. and by enabling this; application will be able to create signup code, which is required during HealthVault account creation.
* **Application requires access to Eventing methods** Optional. HealthVault Eventing is a framework that enables HealthVault applications to subscribe to and receive notification of selected events that occur within the HealthVault platform. This method selection will enable your HealthVault application to consume the HealthVault evening feature. For more information about eventing, see [HealthVault eventing](/healthvault/concepts/xml-api/healthvault-eventing).

* **Application requires access to send e-mail through HealthVault** Optional. This method allows your application to send email to HealthVault account owners through the HealthVault platform. When this is selected, the Domain sending e-mail is required. This item may require additional review.
* **Application requires access to REST APIs** Optional. This allows your application to call the REST endpoints described in the [HealthVault REST API](/healthvault/apis/v1.0-preview)

* **Application requires access to onboarding APIs** Optional. This allows your application to send invitation messages to end-users via the Onboarding API.