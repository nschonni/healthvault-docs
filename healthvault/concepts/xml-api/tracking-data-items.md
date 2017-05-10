---
title: Track data items
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn how HealthVault encodes changed dates, and how to get previous revisions of a user's record
---


Tracking data items
===================

HealthVault has two temporal views of data.

The first temporal view is fairly obvious. If you're looking at the **Height** type, there is a **When** property that tells the time at which the height was measured. That information allows you to do things like chart the growth of your children over time.

A second temporal view can provide a snapshot of the HealthVault state at a specific time. Though it's not obvious because you normally see the current view, much like a source code control system, HealthVault allows you to find out what an item's state was at a time in the past.

To put it another way, if you create a data item and then modify it over time, or even delete it, there's a way to figure out the whole lifecycle of that piece of data: when it was created, when it was updated, when it was deleted, and who performed each of those operations, as well as the content of the item at each step.

By default, you see only the current state of the data items, but this is controlled by the filter that you use when you query for items. Here are the filter properties that let you do this:

The [CurrentVersionOnly](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.healthrecordfilter.currentversiononly) property is true by default. Set it to false to get all the versions back.

The [States](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.healthrecordfilter.states) property can be used to get all of the data, or just the active or deleted data. For more information, see the [HealthRecordItemStates](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.healthrecorditemstates) enumeration.

Who changed my data?
--------------------

Those two properties are enough to get you all the items when you execute a query. The different snapshots of a single item have the same **Key.Id** value, but different version stamps.

To find out who made the changes, you request the audit information. You do this through another filter's **View.Sections** property by adding Audits to that field.

Once you do that, the **LastUpdated** property on each item that you fetch now contains a live HealthServiceAudit record, which gives you information about the source of the record.
