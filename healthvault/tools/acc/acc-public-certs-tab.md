---
title: Application Configuration Center:  Public certificates
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
---

# Managing public certificates associated with your HealthVault app
You can find your Application’s public certificate details in this tab. This tab can also be used to upload a new public certificate for your application. HealthVault applications of type SODA do not require a public certificate.

You must upload the public key for your security certificate (.CER) in order for your web server to communicate with the HealthVault platform servers. We recommend that you upload a 2048-bit version for increased security although a 1024-bit version can be used if necessary. During development, if you are using the HealthVault Application Manager application which is shipped along with the SDK to create a HealthVault application then the app-creation flow will automatically upload your certificate to HealthVault partner production environment (PPE). When you are ready to go live with your web application, the public key representing your production web server must be sent to the HealthVault team as part of the go-live process. 

For more information about creating and uploading a security certificate, see our documentation on [creating key pairs](/healthvault/creating-key-pairs.md).

