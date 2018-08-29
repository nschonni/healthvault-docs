---
uid: HV_File_subscription
title: subscription
---

# subscription

## Overview

Property|Value
---|---
id|File_subscription
name|subscription
immutable|
singleton|
allow-readonly|
effective date XPath|

## Details

<a name=''></a>

### Root element:
 Type:

> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='HttpNotificationChannel'></a>
> 
> ### HttpNotificationChannel
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> url|anyURI|1|1|The url where HealthVault will send the notification. The url must start with https.|
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='NotificationChannel'></a>
> 
> ### NotificationChannel
> 
> ### Element sequence
> 
> | Name | Type | Min occurs | Max occurs | Summary | Remarks |
> |------|------|------------|------------|---------|---------|
> |      |      |            |            |         |         |
> 
> ### Choice
> 
> Min occurs: 1
> 
> Max occurs: 1
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> http-notification-channel|[HttpNotificationChannel](#HttpNotificationChannel)|1|1||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='HVEventingSharedKey'></a>
> 
> ### HVEventingSharedKey
> 
> Authentication of notification using a shared key
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> notification-key|[string128nw](xref:HV_File_types#string128nw)|1|1|The base64 encoded key bytes.|The length of the key must be 64 bytes before any base64 encoding is applied. The key is used by the HealthVault service as the key input to the HMACSHA256 algorithm. The hash that is output by the algorithm is sent with notifications that HealthVault delivers to the subscription's notification channel. If a key is changed, the version key id should also be changed so that the notification handler can support both keys during the changeover period.
> notification-key-version-id|[EventingKeyVersionId](#EventingKeyVersionId)|1|1|A string representing the version of the key.|Subscriptions can be updated with new notification keys using the UpdateEventSubscription method. When an update is made to a subscription, for a period of time, notification deliveries by the HealthVault service for the subscription, may use either the old key or the updated key to calculate the notification payload HMAC. The key version id is also sent with the notification, allowing the app to determine which key was used to calculate the notification payload HMAC.
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='NotificationAuthenticationInfo'></a>
> 
> ### NotificationAuthenticationInfo
> 
> ### Element sequence
> 
> | Name | Type | Min occurs | Max occurs | Summary | Remarks |
> |------|------|------------|------------|---------|---------|
> |      |      |            |            |         |         |
> 
> ### Choice
> 
> Min occurs: 1
> 
> Max occurs: 1
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> hv-eventing-shared-key|[HVEventingSharedKey](#HVEventingSharedKey)|1|1||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='Common'></a>
> 
> ### Common
> 
> Information that is common to all subscriptions.
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> id|[guid](xref:HV_File_types#guid)|0|1|The unique indentifier of this subscription.|A notification handler that handles multiple subscriptions can use this identifier to tell them apart.
> notification-authentication-info|[NotificationAuthenticationInfo](#NotificationAuthenticationInfo)|1|1|The information used to validate the source of notifications.|For notification channels where the HealthVault service pushes notifications to an application's end-point (ie. an HTTPS notification channel), this information can be used by the application to validate that the incoming notification was sent by the HealthVault service.
> notification-channel|[NotificationChannel](#NotificationChannel)|1|1|The destination of the notification.|HealthVault will send all notifications for this subscription using this channel information.
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='TypeIds'></a>
> 
> ### TypeIds
> 
> A collection of thing type ids in HealthVault.
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> type-id|[guid](xref:HV_File_types#guid)|1|unbounded|A thing type id in HealthVault.|
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='RecordItemChangedEventFilter'></a>
> 
> ### RecordItemChangedEventFilter
> 
> Defines the criteria when the event will fire.
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> type-ids|[TypeIds](#TypeIds)|1|1|The type ids for which notifications are enabled on this subscription.|
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='RecordItemChangedEventFilters'></a>
> 
> ### RecordItemChangedEventFilters
> 
> A container element for a list of filters.
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> filter|[RecordItemChangedEventFilter](#RecordItemChangedEventFilter)|1|unbounded||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='RecordItemChangedEvent'></a>
> 
> ### RecordItemChangedEvent
> 
> A notification when an item in a user's record changes.
> 
> The subscription defines the thing types that an application is interested in, and any change to one of those types (creation/update/deletion) in an authorized user's record will result in a notification being sent. HealthVault does not send notifications for items already in a user's record when the application is authorized.
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> filters|[RecordItemChangedEventFilters](#RecordItemChangedEventFilters)|1|1|List of filters that define when a notification is sent.|If a changed thing matches any of these filters, a notification will be sent.
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='Subscription'></a>
> 
> ### Subscription
> 
> Defines an event subscription.
> 
> A HealthVault application can subscribe to be notified when specific events take place. For example, a notification could be sent whenever a record the application is authorized to see has a new Medication item placed into it. This subscription is persistent until the application removes it.
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> common|[Common](#Common)|1|1||
> 
> ### Choice
> 
> Min occurs: 1
> 
> Max occurs: 1
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> record-item-changed-event|[RecordItemChangedEvent](#RecordItemChangedEvent)|1|1||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='Subscriptions'></a>
> 
> ### Subscriptions
> 
> A container element for a list of subscriptions.
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> subscription|[Subscription](#Subscription)|0|unbounded||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='CommonPrivileged'></a>
> 
> ### CommonPrivileged
> 
> ### Extension
> 
> Base type: [Common](xref:HV_File_subscription#Common)
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> requires-msh-pairing|boolean|0|1||
> delivery-priority|[int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)|0|1||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='SubscriptionPrivileged'></a>
> 
> ### SubscriptionPrivileged
> 
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> common|[CommonPrivileged](#CommonPrivileged)|1|1||
> 
> ### Choice
> 
> Min occurs: 1
> 
> Max occurs: 1
> ### Element sequence
> 
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> record-item-changed-event|[RecordItemChangedEvent](#RecordItemChangedEvent)|1|1||
> 
> 
> 
> [!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> 
> <a name='EventingKeyVersionId'></a>
> 
> ### EventingKeyVersionId
> 
> Type representing the notification key version id.
> 
> The valid characters are characters in the range a to z, characters in the range A-Z, characters in the range 0-9 and the hyphen character, '-'. The minimum length in characters is 1 and the maximum is 50.
> 
> ### Restriction
> 
> Base type: string
> 
> #### Restriction facets
> 
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
> maxLength|50||
> pattern|^[a-zA-Z0-9-]*$||

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/subscription.xsd)
[!code-xml[XSD schema](../xsd/subscription.xsd)]
