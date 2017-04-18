---
title: Invite patients
author: jhutchings1
ms.author: justhu
ms.date: 04/17/2017
ms.topic: article
ms.prod: healthvault
description: Invite patients to a remote monitoring trial
---

# Generate and send invitations to remote patients

In the remote monitoring scenario, your application will need to invite users to participate in your program. This allows your app to get offline access to the user's data and issue ActionPlans to her. 

At a high level, the process to generate and send invitation codes is:

1.  Create an offline web application connection.
2.  Authenticate the connection. This uses the certificate you registered earlier to establish trust.
3.  Generate an invitation code using the [Onboarding REST API](https://developer.healthvault.com/Api).
4.  Send the invitation code to your participant using email or another mechanism.

Once users receive their invitation, they will be invited to download the HealthVault Insights app, sign-up/sign-in to HealthVault and consent to Fabrikam Health solutions to complete joining the program. On completion, Fabrikam will have access to user’s consented data.

> [!NOTE]
> In order to use remote monitoring scenarios, users must register their account in the HealthVault Insights app in order to receive remote monitoring scenarios. HealthVault Insights is currently only available to users in the United States and the United Kingdom.

