This documentation is archived and is not being maintained.

**HealthVault**

<span></span>
You can find the Application IDs and Directory IDs associated with your HealthVault account on the home tab. You can edit the configuration of both Application IDs and Directory IDs from the [Application Configuration Center (ACC)](https://msdn.microsoft.com/en-us/healthvault/jj127439).

<span id="Applications"></span>

<span class="LW_CollapsibleArea_TitleAhref"><span class="cl_CollapsibleArea_expanding LW_CollapsibleArea_Img"></span><span class="LW_CollapsibleArea_Title">Applications</span></span>
<a href="/en-us/library/jj551268.aspx#Anchor_0" class="LW_CollapsibleArea_Anchor_Img" title="Right-click to copy and share the link for this section"></a>

------------------------------------------------------------------------

<span id="sectionToggleID0EBAAA"></span>
The HealthVault Application IDs associated with your HealthVault account can be found here. If you don't see your application listed on this page, you may need to either create a new Application ID or "claim" admin rights to your existing Application ID. You can "claim" admin rights from Microsoft HealthVault to an Application ID with your HealthVault account via [submitting a request](https://config.healthvault-ppe.com/ReclaimExistingApplication.aspx). Please provide us the thumb print of your public certificate to confirm the ownership of your application. You can find detailed steps on how to retrieve the Thumbprint of a Certificate at [http://msdn.microsoft.com/en-us/library/ms734695.aspx](https://msdn.microsoft.com/en-us/library/ms734695.aspx)

You can create a new Application ID using the HealthVault Application Manager in the HealthVault SDK or in case you are on a non-Microsoft platform then you can use the [Create a new application](http://www.url.com) process available on Home tab. The SDK is available from the [Microsoft Download Center](https://www.microsoft.com/downloads/details.aspx?FamilyID=95e14343-fb98-4549-bd29-225a59423cc9).

<span class="label">Application ID</span>: This is of type GUID and will uniquely identify an application in the PPE environment. Application admins will be able to view and edit the configuration associated with an Application ID by clicking on Application ID in the Home tab. You can find the documentation for Application IDs in HealthVault Application Configuration's Information Tab.

<span class="label">Application Name</span>: The application's name will be displayed here.

<span class="label">Application Type</span>: This will display the type of the HealthVault applications you have. Possible values for application type are Master, SODA, and Default. By clicking on this link you can edit the configuration of your application. You can change the application type only under the <span>[Misc Tab](acc-misc-tab.md)</span>. Changing an application type from <span class="label">Default</span> to <span class="label">Master</span> or <span class="label">SODA</span> is irreversible.

<span class="label">Go live?</span>: This will help you contact Microsoft HealthVault once you are ready to move your application's configuration to production.

<span class="label">Actions</span>: You can do the following actions.

<span class="label">View app config in production</span>: This will help you to view your application’s configuration once it is in production. All the fields except <span class="label">Valid IP Prefixes</span> are configurable for your Application ID in PPE from Application Configuration Center (ACC) at <https://config.healthvault-ppe.com>. HealthVault provides some added security to applications by supporting calls that come from valid IP addresses of the application which lists under <span class="label">Valid IP Prefixes</span> list. You can inform Microsoft HealthVault about your valid IP address during the [Go-Live process](https://msdn.microsoft.com/en-us/healthvault/bb962148.aspx) or reach [HealthVault Developer Support for SDK](https://support.microsoft.com/oas/default.aspx?prid=13388) to enable <span class="label">Valid IP Prefix</span> list for your HealthVault application.

<span class="label">Disable</span>: This will disable an application by clicking on this link.

-   <span class="label">NOTE:</span> DISABLING an application is IRRIVERSABLE!

<span id="Directories"></span>

<span class="LW_CollapsibleArea_TitleAhref"><span class="cl_CollapsibleArea_expanding LW_CollapsibleArea_Img"></span><span class="LW_CollapsibleArea_Title">Directories</span></span>
<a href="/en-us/library/jj551268.aspx#Anchor_1" class="LW_CollapsibleArea_Anchor_Img" title="Right-click to copy and share the link for this section"></a>

------------------------------------------------------------------------

<span id="sectionToggleID0EAAAA"></span>
Creating a directory enables showcasing an application or device to the HealthVault ecosystem. To view the directory listing for production site, please go to <http://www.healthvault.com/personal/app-device.aspx>. You can create a HealthVault Application Directory for your application and Device Directory from here. Remember that the directory entry that you create for your application is publically viewable from the HealthVault Application Directory Listing. To view the directory listing for PPE, please go to <http://www.healthvault-ppe.com/personal/app-device.aspx>.

<span class="label">Directory ID</span>: This is of type GUID and and will uniquely identify a directory item in the PPE environment. You will be able to view and edit the configuration of a Directory ID by clicking on the <span class="label">Directory ID</span> link on the <span class="label">Home Tab</span>. For more information about Application Directory IDs and Device Directory IDs, see <span>[Create or Edit an Application Directory Page](acc-create-or-edit-an-application-directory-page.md)</span> and <span>[Create or Edit a Device Directory Page](acc-create-or-edit-a-device-directory-page.md)</span> respectively.

<span class="label">Directory Name</span>: You can list your directory name here. The same name will be displayed once it is available in the HealthVault Directory Listing for production site.

<span class="label">Directory Type</span>: This displays your directory type. HealthVault supports application and device type directory listings.

<span class="label">Actions</span>: You can do the following actions.

<span class="label">Start Go-Live process</span>: This will help you contact the HealthVault go-live team once you are ready to move your directory listing to production. Please note that your application directory entry can Go-Live only when your application is live.

<span class="label">Disable</span>: This will disable a directory listing in PPE.

-   <span class="label">NOTE:</span> DISABLING a directory is IRRIVERSABLE!

<span class="label">Admins</span>: Directory administrators can manage the directory entry. An administrator can send or resend an invitation to someone to become a directory manager. An administrator can remove the authorization as well.

<span>Show:</span> Inherited Protected
