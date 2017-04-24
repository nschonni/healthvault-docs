---
title: Application Configuration Center | Information tab
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn about the HealthVault Application Configuration Center's (ACC) information tab. 
---

# Information tab
To access the <span class="label">Information</span> tab, click the <span class="label">Application ID</span> link on the home page. On the information tab you can configure general information for your Application ID. This includes the information about your application’s name, description, reason to authorize your application, and so on.

<span id="Content"></span>
<span class="label">Application Name</span>: Set your application name here.

<span class="label">Description</span>: Should accurately describe the functionality of your application. Suggested length is less than 200 characters.

<span class="label">Auth reason</span>: This field is deprecated, please use the <span class="label">why string</span> in auth rules instead.

<span class="label">Logo</span>: Should be no larger than 120×60 pixels and 120 KB.

We recommend that the logo image be twice as wide as it is high. In the case where your logo does not match those dimensions, we suggest using the PNG or GIF formats and applying a transparent background. This will prevent any stretching/skewing and provide a consistent look across all page background colors.

<span class="label">Action URL</span>: Must be protected by HTTPS. The URL you enter in this field must begin with <span class="literalValue">HTTPS</span> (not <span class="literalValue">HTTP</span>) to enable secure communication between all clients and servers. The page you specify in this field must be capable of understanding the targets that can be passed. Mandatory targets include Privacy and ServiceAgreement (if you are using the Privacy Statement and Terms of Use down below then you can ignore these targets), both of these should be reachable by a consumer who is not signed-in, and AppAuthSuccess which is required for your HealthVault integration. For more information, see the [Interacting with ActionURL how-to guide](https://msdn.microsoft.com/en-us/healthvault/bb852205.aspx). Your Solution Provider Agreement will include requirements for privacy commitments and how you display your privacy statement in your application.

<span class="label">Privacy Statement and Terms of Use</span>: You can set the privacy statement and terms of use from here and if you set this then it will override corresponding privacy statement and terms of use pages derived from the Action URL. It is recommended to derive the pages from Action URL since Configuration Center doesn’t support html contents for these fields.

<span class="label">Patient Connect Success Message</span>: The message to display to the user when direct to clinical authorization completes successfully.

<span>Show:</span> Inherited Protected
