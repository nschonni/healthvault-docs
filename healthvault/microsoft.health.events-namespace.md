This documentation is archived and is not being maintained.

**HealthVault**

<span></span>
Events for HealthVault Event Notification Service.

<span class="LW_CollapsibleArea_TitleAhref"><span class="cl_CollapsibleArea_expanding LW_CollapsibleArea_Img"></span><span class="LW_CollapsibleArea_Title">Classes</span></span>
<a href="/en-us/library/microsoft.health.events.aspx#Anchor_0" class="LW_CollapsibleArea_Anchor_Img" title="Right-click to copy and share the link for this section"></a>

------------------------------------------------------------------------

<span id="classToggle"></span>
<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th> </th>
<th>Class</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.events.commonnotificationdata.aspx">CommonNotificationData</a></td>
<td><div class="summary">
Represents data that is common across all event notification.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.events.commonsubscriptiondata.aspx">CommonSubscriptionData</a></td>
<td><div class="summary">
Represents data that is common across all event subscriptions.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.events.healthrecorditemchangedeventargs.aspx">HealthRecordItemChangedEventArgs</a></td>
<td><div class="summary">
Information describing a health record item changed notification.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.events.healthrecorditemchangedfilter.aspx">HealthRecordItemChangedFilter</a></td>
<td><div class="summary">
A filter that defines what changes to items will result in notification.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.events.healthrecorditemchangeditem.aspx">HealthRecordItemChangedItem</a></td>
<td><div class="summary">
A class that contains information about a <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditem.aspx">HealthRecordItem</a> that has changed.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.events.healthrecorditemchangedsubscription.aspx">HealthRecordItemChangedSubscription</a></td>
<td><div class="summary">
A subscription that sends notifications when an item in a record changes.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.events.httpnotificationchannel.aspx">HttpNotificationChannel</a></td>
<td><div class="summary">
A <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.events.notificationchannel.aspx">NotificationChannel</a> type that uses an HTTP POST as the method of communicating notifications to the application.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.events.notificationauthenticationsharedkeyinfo.aspx">NotificationAuthenticationSharedKeyInfo</a></td>
<td><div class="summary">
Contains the information required to implement shared key authentication for HealthVault eventing.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.events.notificationchannel.aspx">NotificationChannel</a></td>
<td><div class="summary">
The base class for all notification channel types.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.events.notificationhandler.aspx">NotificationHandler</a></td>
<td><div class="summary">
A class to make processing event notifications simpler.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.events.subscription.aspx">Subscription</a></td>
<td><div class="summary">
The base class for all subscriptions.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.events.subscriptionmanager.aspx">SubscriptionManager</a></td>
<td><div class="summary">
The SubscriptionManager class is used to manage an application's eventing subscriptions.
</div></td>
</tr>
</tbody>
</table>

<span>Show:</span> Inherited Protected
