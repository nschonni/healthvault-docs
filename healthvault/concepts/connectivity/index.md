---
title: Connectivity
author: jhutchings1
ms.author: justhu
ms.date: 11/10/2018
ms.topic: article
ms.prod: healthvault
description: Overview of available connectivity options for HealthVault
---

# Overview of HealthVault connectivity methods

HealthVault provides a number of integration options for connecting applications. This article provides an overview of the options along with information to help developers select the appropriate option for their application.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Integration approach</p></th>
<th><p>Key characteristics</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Record authorization-based</p></td>
<td><ul>
<li><p>Allows both reading and writing data from HealthVault users' records.</p></li>
<li><p>Applications can access HealthVault records on an on-going basis even if the user is not online.</p></li>
</ul></td>
</tbody>
</table>

Record authorization-based access to HealthVault records
--------------------------------------------------------

Accessing HealthVault records through a *record authorization* provides applications the most flexibility. Record authorizations allow the connecting application to both write data to users’ HealthVault records and read data from the records.

With this approach, the application specifies a set of rules for the desired access to users’ HealthVault records, and users must explicitly authorize these rules in order for the application to gain the desired access.

A rule specifies the data types being requested, the permissions being requested (Create, Read, Update, Delete), and whether the rule applies to online or offline access. Rules can also be required or optional.

Applications specify their desired access rules in the [Application Configuration Center](https://config.healthvault-ppe.com/).

### Online and offline access

Online access applies when the user is logged into the application. To login the user, the application first redirects the user to HealthVault to sign-in. The user can create a new HealthVault account and sign-in, or the user can sign-in to an existing account. After the user successfully signs in, HealthVault returns a user authentication token to the application. Using the token, the application can make API calls to HealthVault and access the data the user has authorized through an online access rule. Once the user signs out, HealthVault invalidates the user token, and the application can no longer access the data authorized through the online rules.

With offline access, the user must still explicitly authorize the application for it to gain the desired access, but once the authorization is established, the application can access the user’s record without the user being logged-in. Consider for example, a pharmacy that pushes medications to HealthVault when fulfilling prescriptions. The HealthVault user is not logged into a website when he’s at the pharmacy, but if the user has previously authorized the application for offline access, the pharmacy can create a new medication in his HealthVault record upon fulfilling the prescription. Other example scenarios for offline access include labs that push test results upon results being available, and hospitals or EHRs that automatically push discharge/visit summaries to update a user’s record after an encounter.

### Required and optional rules

Marking a rule as required means that in order to authorize the application, the user has to give the application the access requested in the rule. During the application authorization process, the user can choose to authorize the application and all its required rules, or not authorize the application at all. Marking a rule as optional means the application can work without the access specified by the rule, and during the application authorization process, the user will have the option to choose not to grant access to the optional rule.

Establishing authorization-based access to HealthVault records
--------------------------------------------------------------

The process by which a record authorization is established is a key question for an application developer using an authorization-based integration approach to answer. HealthVault provides a few methods for establishing the authorization, and the choice of method to use will depend on the specifics of the connection scenarios and the application’s operating environment. The following provides a description of the methods for establishing the authorization.

### Web-based authorization

If the entity that’s connecting to HealthVault has a website that consumers can access, then establishing the authorization while the user is visiting the website is an option.

The following describes the end-to-end workflow.

1. The consumer (also referred to as a HealthVault user in this document), begins at the website. Either upon visiting the website, or upon taking a particular action on the website, the application redirects the user to HealthVault.

2. The user creates a HealthVault account or signs-in with an existing account. Once this is completed, the user goes through the application authorization process and is redirected back to the application.

3. If the application will need offline access to the record at a later time, it stores the HealthVault identifiers necessary to access the record (for example in a local DB).

4. The application can immediately access the health record using the online authorization rules. If offline rules were granted, the application can access the record at a later time using the stored HealthVault identifiers, even if the user is no longer logged-in.

The following summarizes the process of establishing a record authorization from a website.

<img src="https://i-msdn.sec.s-msft.com/dynimg/IC698759.png" title="Web Summary" alt="Web Summary" id="Web Summary" />

See [web connectivity](/healthvault/concepts/connectivity/web-connectivity) for more information and code samples.

### Patient Connect

For applications that do not have a user-facing website, Patient Connect provides a method to establish a record authorization. Connections established using Patient Connect typically involve offline access to records.

The following describes the end-to-end workflow.

1. During an in-person exchange, someone within the organization asks the user to choose a secret question and asks the user for an answer. The user will later use this question and answer pair to authorize the application. Optionally, the user also provides an e-mail address. Some examples of in-person exchanges where this exchange can happen include the pre-registration process and the end of an encounter for a provider visit. Another is while the user is visiting a pharmacy to fulfill a prescription.

2. The application generates a Connect Request using the question and answer provided by the user, and calls HealthVault to store the Connect Request. This generates a pickup code which the user will use with HealthVault to authorize the connection. As examples, the pickup code can be sent to the user in an e-mail with a link to HealthVault, or given to the user on a print-out with the HealthVault URL to visit.

3. Upon visiting HealthVault, the user either creates a HealthVault account or signs-in to an existing account. Once this is complete, the user is asked the secret question. Upon successfully providing the answer, the user goes through the authorization process which enables the application to access the health record.

4. To find out about the authorization, the application periodically polls HealthVault for new authorizations established this way and stores the HealthVault identifiers needed to access the record on an ongoing basis.

The following summarizes the Patient Connect workflow.

<img src="https://i-msdn.sec.s-msft.com/dynimg/IC698760.png" title="Patient Connect Summary" alt="Patient Connect Summary" id="Patient Connect Summary" />
See [Establishing authorization with a user using Patient Connect](/healthvault/concepts/connectivity/patient-connect) for more information and code samples.

### Software on Device Authentication (SODA)

The SODA model allows native applications that run on mobile and other client devices to establish authorization with HealthVault records.

See [HealthVault on mobile devices](/healthvault/concepts/connectivity/mobile-devices) for more information and code samples.
