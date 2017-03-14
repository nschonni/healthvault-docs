Building HealthVault-compatible devices
=======================================

This guide gives you the information you need to make your device compatible with HealthVault. It includes guidelines on how to create a driver and list your device in the HealthVault Device Directory on HealthVault.com and in HealthVault Connection Center.

What is a HealthVault enabled device?
-------------------------------------

Microsoft HealthVault is a personal health platform that lets consumers gather, store, and share health information online. You can use it to store health information obtained from providers, health plans, pharmacies, and uploaded from HealthVault enabled devices – including yours! With HealthVault, users can share their health information with family, friends, and health care professionals, and have access to trustworthy online health management applications.

There are many different types of HealthVault enabled devices today some of which are fitness watches, pulse oximeters, blood pressure devices, peak flow meters, weight/body composition scales, and pedometers. The HealthVault team encourages the addition of new device types and different varieties of the current device types.

<a href="ecosystem.md" id="PageContent_14026_2">Learn how your device may fit into the HealthVault ecosystem</a> 

How to connect your device to HealthVault
-----------------------------------------

Manufacturers wishing to connect their devices to a PC to upload data to HealthVault must develop a driver that is compatible with [HealthVault Connection Center (HVCC).](https://www.healthvault.com/connection-center) HVCC is an application that runs on a Windows PC and manages the data exchange between the device and HealthVault.

The [HealthVault Device Driver Development Package](https://www.microsoft.com/en-us/download/details.aspx?id=26801) contains the necessary documentation, samples, and tools to help you develop your driver. The HealthVault team does not provide technical assistance for device driver development. [Learn about support options for developing device drivers for Windows](https://msdn.microsoft.com/library/windows/hardware/gg487428.aspx).

How to add your device to the HealthVault Device Directory
----------------------------------------------------------

Once you have completed the steps above, you will probably want to include your device in the [HealthVault Device Directory](https://account.healthvault.com/Directory?target=Devices) and in the HealthVault Connection center driver list. The HealthVault Device Directory contains a list of devices that are compatible with HealthVault and is a great way for you to showcase your device. HealthVault Connection Center provides a list of drivers that the consumer can choose to install.

Device directory entries can be created with the [Application Configuration Center](https://config.healthvault-ppe.com).

### Devices and HealthVault

Development

-   <a href="device-overview.md" id="RightRailLinkListSection_14026_20">Building HealthVault-compatible devices</a>
-   <a href="device-wpd-overview.md" id="RightRailLinkListSection_14026_15">Overview of Windows Portable Devices</a>
-   <a href="device-code-10-errors.md" id="RightRailLinkListSection_14026_16">Code 10 errors with WPD drivers</a>
-   <a href="device-non-pnp.md" id="RightRailLinkListSection_14026_17">Enabling detection of non-PnP devices</a>
-   <a href="https://www.microsoft.com/en-us/download/details.aspx?id=26801" id="RightRailLinkListSection_14026_18">Device Driver Development Package</a>

More resources

-   <a href="https://config.healthvault-ppe.com" id="RightRailLinkListSection_14026_12">Application Configuration Center (ACC)</a>
-   <a href="https://www.healthvault.com/connection-center" id="RightRailLinkListSection_14026_19">Connection Center</a>
-   <a href="https://account.healthvault.com/Directory?target=Devices" id="RightRailLinkListSection_14026_11">Device Directory</a>

