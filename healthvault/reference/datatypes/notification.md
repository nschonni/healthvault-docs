---
uid: HV_File_notification
title: notification
---

# notification

## Overview

Property|Value
---|---
id|File_notification
name|notification
immutable|
singleton|
allow-readonly|
effective date XPath|

## Details

<a name='notifications'></a>

### Root element: notifications

The root element of a notification.

All notifications are contained within this element.
 Type: this:Notifications

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Common'></a>
>
> ### Common
>
> Common information associated with every notification.
>
> Notifications contain notification type specific information and information common to all notifications. This element contains the common information.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> subscription-id|[guid](xref:HV_File_types#guid)|1|1|The unique identifier of the subscription generating this notification.|Each subscription is uniquely identified by this identifier.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Thing'></a>
>
> ### Thing
>
> A notification specific representation of a HealthVault Thing.
>
> The notification Thing is not a complete HealthVault Thing. Instead it provides enough information to obtain the complete HealthVault Thing data.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> thing-id|[guid](xref:HV_File_types#guid)|1|1|The unique identifier of the HealthVault Thing.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Things'></a>
>
> ### Things
>
> A collection of notification Things.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> thing|[Thing](#Thing)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RecordChangeNotification'></a>
>
> ### RecordChangeNotification
>
> A notification that a Thing changed in a record.
>
> RecordChangNotifications are generated whenever a Thing that matches the subscription filter has been created or modified.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> person-id|[guid](xref:HV_File_types#guid)|1|1|The of the person whose thing(s) changed.|The person id may be directly used in offline calls to HealthVault obtaining the Thing data.
> record-id|[guid](xref:HV_File_types#guid)|1|1|The record id of the record associated with the changed Things.|The record id may be directly used in calls to HealthVault obtaining the Thing data.
> things|[Thing](#Thing)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Notification'></a>
>
> ### Notification
>
> A notification satisfying a subscription.
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
> Any information for a specicific type of notification is contained in one of the following notifications.
>
> Any new notifications will be added here. Notification receievers are expected to handle unknown elements. The known notifications are listed at the time of publication but is expected to grow.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> record-change-notification|[RecordChangeNotification](#RecordChangeNotification)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Notifications'></a>
>
> ### Notifications
>
> A list of notifcations.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> notification|[Notification](#Notification)|1|unbounded||
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/notification.xsd)
[!code-xml[XSD schema](../xsd/notification.xsd)]
