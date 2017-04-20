---
title: Remote monitoring
author: rouellam
ms.author: roumen
ms.date: 04/17/2017
ms.topic: article
ms.prod: healthvault
description: Learn how to implement remote monitoring scenarios around action plans and goals
---

Remote monitoring
=================
The remote monitoring framework APIs lets HealthVault partners improve engagement between providers and patients through a number of scenarios such as action plans and goals.

Action Plans and goals are currently in Preview, and Microsoft is accepting feedback on the API functionality from partners. Please share feedback using the <a href="https://social.msdn.microsoft.com/Forums/en-US/home?category=healthvault" id="PageContent_18332_3">MSDN Forums</a> or by emailing <hvtech@microsoft.com>.

Action Plan APIs
----------------
Action Plan APIs lets HealthVault partners improve engagement between providers and patients by allowing providers to create, assign and update care plans for their patients. Patients follow the care plans and track their adherence by leveraging one of many supported apps and devices. Providers can monitor patient adherence to the tasks in their plans as well as progress towards broader health goals.

### Creating, assigning, and updating Action Plans

> [!NOTE]
> To create an Action Plan, the patient receiving the plan must have already enrolled in HealthVault Insights. The invitation URL generated earlier will guide them through this process.

Please refer to the HealthVaultProviderManagementPortal sample for code which demonstrates how to create, assign and update Action Plans. For more information, please see the [HealthVault REST API](https://go.microsoft.com/fwlink/?linkid=839407) documentation.

The diagram below provides a high-level overview of the structure of an Action Plan. An ActionPlan is comprised of one or more Objectives. An Objective is comprised of one or more Tasks.

<img src="/healthvault/images/IC866028.png" title="Action plan hierarchy" alt="Action plan hierarchy" id="HVActionPlans_fig06" /> 

Goal and goal recommendation APIs
---------------------------------
Goal and goal recommendation APIs let HealthVault partners improve engagement between providers and patients by allowing providers to recommend goals for a few key data types. These goals could be directly set for a patient or recommended to a patient for each of the data types.

### Creating, assigning, and recommending goals
The four supported goals are steps, calories, weight, and blood pressure (separate goals for diastolic and systolic). There are two ways in which providers could set goals:
-   (Recommended) Goal recommendation APIs: A provider could use our RESTful APIs to recommend a goal that would be visible to the user in the HealthVault Insights app. A user could then tap on the recommendation to set it as their current goal. This is the recommended approach as it puts the user in control and keeps them aware of what their current goal is.
-   Goal APIs: A provider could also directly set a goal for a patient for the above supported data types.

> [!NOTE]
> To create and set goals and goal recommendations, the patient receiving the goals must have already enrolled in HealthVault Insights. The invitation URL generated earlier will guide them through this process.

Please refer to the HealthVaultProviderManagementPortal sample for code which demonstrates how to set goals for patients. For more information, please see the [HealthVault REST API](https://go.microsoft.com/fwlink/?linkid=839407) documentation.

Please refer to the HealthVaultProviderManagementPortal sample for code which demonstrates how to set goals for patients. For more information, please see the HealthVault REST API documentation.


