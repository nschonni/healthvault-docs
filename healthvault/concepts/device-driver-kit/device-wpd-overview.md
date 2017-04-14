HealthVault Devices and WPD Technology
======================================

HealthVault Connection Center is built on the Windows Portable Devices (WPD) technology that is used to connect cameras, media players, and cell phones to Windows. With the release of HealthVault, we’ve extended this architecture to support health and fitness devices. The WPD technology is bus agnostic. “Bus agnostic” means that the technology is completely independent of the connectivity mechanism used to connect the device to Windows. As such, WPD technology supports all connectivity mechanisms, including but not limited to USB 1.1, USB 2.0, Bluetooth, IR, and Serial.

The WPD model requires installation of a User Mode driver. A user mode driver is considerably easier to build than a kernel driver. A user mode driver would be responsible for establishing a connection to the device from the PC, then for responding to requests from HealthVault Connection Center for data recorded on the device.

The primary responsibility of the driver is to map the proprietary device data types to HealthVault data types. With this simple driver, the health device can connect with HealthVault Connection Center without any modification to the device firmware.

The following resources describe the WPD architecture in more detail:

-   [High-level video discussion of the WPD technology](http://channel9.msdn.com/ShowPost.aspx?PostID=234357#234357)
-   MSDN contains the latest [SDK information on WPD](https://msdn.microsoft.com/library/ms740786(VS.85).aspx). This design and programming guide describes development using the WPD API. 
-   [The Windows Driver Development Kit](https://www.microsoft.com/whdc/DevTools/WDK/WDKpkg.mspx) describes how to build a WPD user mode driver, complete with documentation and samples. 
-   To learn about the WPD extensions for Health and Fitness devices, you should download the <a href="https://msdn.microsoft.com/en-US/HealthVault/dn798744" id="PageContent_13998_2">HealthVault SDK</a>.

### Devices and HealthVault

Development

-   <a href="device-overview.md" id="RightRailLinkListSection_13998_16">Building HealthVault-compatible devices</a>
-   <a href="device-wpd-overview.md" id="RightRailLinkListSection_13998_8">Overview of Windows Portable Devices</a>
-   <a href="device-code-10-errors.md" id="RightRailLinkListSection_13998_9">Code 10 errors with WPD drivers</a>
-   <a href="device-non-pnp.md" id="RightRailLinkListSection_13998_10">Enabling detection of non-PnP devices</a>
-   <a href="https://www.microsoft.com/en-us/download/details.aspx?id=26801" id="RightRailLinkListSection_13998_11">Device Driver Development Package</a>

More resources

-   <a href="https://config.healthvault-ppe.com/" id="RightRailLinkListSection_13998_12">Application Configuration Center (ACC)</a>
-   <a href="https://www.healthvault.com/connection-center" id="RightRailLinkListSection_13998_13">Connection Center</a>
-   <a href="https://msdn.microsoft.com/en-us/healthvault/dn798735" id="RightRailLinkListSection_13998_14">Consultant Directory</a>
-   <a href="https://account.healthvault.com/Directory?target=Devices" id="RightRailLinkListSection_13998_15">Device Directory</a>

