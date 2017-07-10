---
title: Remote Monitoring Preview APIs
author: rouellam
ms.author: roumen
ms.date: 07/03/2017
ms.topic: article
ms.prod: healthvault
description: Learn about new remote monitoring functionality
---

Preview APIs for remote monitoring
==================================
The remote monitoring preview APIs provide new functionality for remote monitoring scenarios such as action plans and goals.

Note that these APIs may be updated frequently, and Microsoft is accepting feedback on the API functionality from partners. Please share feedback using the <a href="https://social.msdn.microsoft.com/Forums/en-US/home?category=healthvault" id="PageContent_18332_3">MSDN Forums</a> or by emailing <hvtech@microsoft.com>.

Action Plan APIs
----------------
There are new APIs available for action plans that enable even more scenarios to improve provider and patient engagement.

### Enabling a timeline view for users

> [!NOTE]
> To be effective, the user viewing the timeline should already have received an action plan. Refer to [Creating, assigning, and updating Action Plans](/healthvault/scenarios/remote-monitoring) for more information on creating and assigning action plans.

The timeline API provides information for users to see their tasks and how they are working towards their set schedules. For a given time range (maximum time range for each return is a month), the API returns a set of timeline snapshots. A new snapshot is created whenever a schedule or completion metric are updated. 

Below are some examples of timeline returns.

#### Basic case
In the most basic case, there is no change in schedules or completion metrics in the given time range and the return consists of a single timeline snapshot.

For a request from Monday through Friday, the return will have a list of tasks and each task will have it's descriptors and snapshot.

-   For a daily task, the snapshot will consist of 5 schedules (M, Tu, W, Th, F), 2 associated occurrences (Tu, Th) and completion metrics.

<img src="/healthvault/images/timeline_figure1.png" title="Figure 1: Basic example for a daily task" alt="Figure 1" id="HVActionPlans_fig07" /> 

-   For a weekly task, the snapshot buffers to the start of the week and so will consist of 6 schedules (Su, M, Tu, W, Th, F), 3 associated occurrences (Su, Tu, Th) and completion metrics.

<img src="/healthvault/images/timeline_figure2.png" title="Figure 2: Basic example for a weekly task" alt="Figure 2" id="HVActionPlans_fig08" /> 

#### Change in schedule or task type
If there is a change to the schedule or completion metrics over the query range, the return consists of multiple snapshots, one for each change.

For a request from Monday through Friday, the return will have a list of tasks. The below figure shows an example of a task which had a schedule change within the requested time range:

<img src="/healthvault/images/timeline_figure3.png" title="Figure 3: Example of a task with a change in schedule within the requested time range" alt="Figure 3" id="HVActionPlans_fig09" /> 

The return will consist of two snapshots:
-   Snapshot 1 will return 3 schedules (M, Tu, W), 1 associated occurrence (M) and completion metrics.
-   Snapshot 2 will return 6 schedules (Su, M, Tu, W, Th, F), 3 associated occurrences (Su, M, Tu) and completion metrics.

For more information on consuming the API, please see the [HealthVault REST API](https://go.microsoft.com/fwlink/?linkid=839407) documentation.
