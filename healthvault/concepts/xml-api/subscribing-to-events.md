---
title: Eventing
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn about how HealthVault's event subscription model works. 
---


Subscribing to events
=====================

HealthVault Event Notification Service or HealthVault Eventing enables HealthVault applications to subscribe to and receive notification of selected events that occur within the HealthVault platform. For example, an application can subscribe to be notified whenever a Blood Glucose Measurement is added to a user's HealthVault record. Applications create and manage event subscriptions using the HealthVault platform XML API or .NET SDK and receive notifications as HTTP requests.

This article provides an overview of the HealthVault Event and the application configuration and development necessary to subscribe to events and receive event notifications.

**Disclaimer**

HealthVault Eventing utilizes an asynchronous queuing and processing infrastructure to handle events and send notifications. It is only intended to provide delayed notification of events as an alternative to applications regularly polling the HealthVault platform for changes. 

> [!NOTE]
> HealthVault Eventing is not intended to provide real-time notifications and data in HealthVault should not be used for time-sensitive monitoring or diagnosis.

-   The time elapsed between an event occurring and a notification being sent is variable and nondeterministic. There is no guarantee of temporal proximity of an event and the subsequent event notification.
-   There is the possibility of delay between the effective date/time (e.g. when a blood glucose reading was taken using a blood glucometer) and the event date/time (i.e. when the change was reflected in HealthVault).
-   In the event of a system failure, queued notifications may not be recovered and there is no guarantee that all notifications will be sent.

Event subscriptions
-------------------

Applications use event subscriptions to subscribe to selected events and to specify where notifications should be sent. Each event subscription includes an indication of the event type together with optional filtering rules to further restrict which events result in a notification.

An application can subscribe to multiple events and subscriptions remain active until they are deleted by the application.

### Event type

There are several different types of events that can occur within the HealthVault platform. For example, when a user grants or revokes an applications access to their record, or when a new thing is added to a user's record.

The platform currently supports the Record Thing Change event type, which corresponds to any change to a thing in a user's record: create, update, delete.

### Filtering rules

When an event occurs, there is additional contextual information that can be used by the platform as filter criteria when determining whether to send a notification. For example, a subscription to the Record Thing Change event could specify that notification should only be sent for changes to a specific item type (e.g. Blood Glucose Measurement).

The platform currently supports filtering by thing type or types for Record Thing Change events. When specifying a thing type filter, it is only necessary to specify one version of any given thing type. The filter will then apply to all previous and future versions of that thing type.

### Delivery channel

The delivery channel defines the protocol and destination for sending event notifications. The platform currently supports only HTTP delivery over SSL.

Managing event subscriptions
----------------------------

The HealthVault platform XML API and HealthVault .NET SDK provide methods and classes for creating, querying, updating and deleting event subscriptions.

### Platform XML methods

The HealthVault platform methods for managing subscriptions are authenticated methods and require the Event Subscription method group to be configured for the application.

-   SubscribeToEvent
-   GetEventSubscriptions
-   UpdateEventSubscription
-   UnsubscribeToEvent

### .NET SDK

The HealthVault .NET SDK contains classes and methods for managing event subscriptions in the platform. Refer to the HealthVault .NET Reference Library for documentation.

Application configuration
-------------------------

The platform currently supports only HTTPS delivery, so each event subscription includes a URL where event notifications will be sent. An application can have multiple subscriptions, each with a unique URL or with some/all sharing a common URL. All subscription URLs for an application are required to share the same root as the Action URL which is specified in the application configuration settings. For example, if the Action URL is https://www.app.com/hv/redirect.aspx, then all subscription URLs must begin with https://www.app.com/hv/. This requirement ensures notifications are being sent to the correct application.

In the HealthVault Developer environment, the subscription URL is not validated against the root of the configured Action URL. This allows greater flexibility during development and testing of an application.

Event notification
------------------

The platform currently sends all event notifications as XML in an HTTP POST request over SSL. A request to a particular URL could contain multiple event notifications, possibly for different subscriptions, if the events occurred in close proximity to one another. Each Record Thing Change event notification will include the subscription ID, the person and record IDs, and one or more thing IDs that were changed. The application can then use this information to retrieve the changed things from the platform.

The .NET SDK provides classes that can be utilized and/or extended to handle notifications received by the application.

As new event types are introduced, new event notification schemas will be introduced as well. Many of the properties will be the same for all event type, but there will be information specific to each event type as well.

### Notification response

The HealthVault platform will treat an HTTP response code of 200 as successful delivery of the notification. Any other response code, or no response within reasonable time should be treated as a failure.

### Delivery failure and retry

If an attempt to deliver a notification fails, the notification will be placed back in the queue for later delivery. The HealthVault platform will attempt to deliver a notification several times, with increasing duration between attempts, but will not attempt delivery more than 10 days (subject to change) after the event first occurred.

### Notification endpoint authentication

HealthVault Eventing enables endpoint authentication using symmetric hashing

The key version id, subscription id, and HMAC of the notification payload form the key elements of the endpoint authentication. The notification handler can determines which subscription was notified based on the key version id that was passed. The expected key can be determined based on the key version id that was sent to the handler. This allows keys to be updated to new versions while not breaking the handling using the old keys. The noticaion handler should calculate an HMAC of the xml notification text and compared it to the one passed in the header. If the hmac does not match the notification should be ignored and discarded as it did not originate from the HealthVault service. The notification handler should return a status of '200 OK' so that the HealthVault platform knows that the delivery was successful. 
