---
title: Application Configuration Center | Misc
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
---

# Customizing miscellaneous HealthVault flags
This collection of options allows you to enable additional customizations for your application. Most applications will not need to make changes to these settings. 

* **Automatic user sign-in** This is used to enable or disable the Keep me signed in for future visits check box on the HealthVault login page.
* **Automatic user sign-in duration in seconds** You can specify the length of time in seconds to persist a user token for the above.
* **Client Token (GUID)** This value is used to search vocabularies directly from web applications, provided they are authorized to do so. See ApplicationInfo.ClientServiceToken for more information.
* **ApplicationType** By default the value will be Default and you can change it to Master or SODA. Changing the application type to Master or SODA is irreversible.
* **Application Attributes** You can specify the application attribute type here. By default none of the attributes are selected.
  * **HIPAA** If your organization is HIPAA certified and you don't want to have terms of use or privacy outside of that, please mark HIPAA as your application attribute.
  * **Clinical Trial** If your organization is covered under clinical trials and you don't want to have terms of use or privacy outside of that, please mark Clinical Trial as your application attribute.
* **Supported instances for PPE** Specifies the HealthVault global instances where the application is available in HealthVault's pre-production environment (PPE). If "Support all current and future instances" is selected, the individual selections are not used.
* **Supported instances for Production** Specifies the HealthVault global instances where the application is available in HealthVault's production environment. If "Support all current and future instances" is selected, the individual selections are not used. This information is used during the go-live process to provision the application in the desired production HealthVault instances. Changing this setting, will require a push to production in order for the settings to take effect in production.
* **Supported locations** Specifies the countries/regions where the application is available.

