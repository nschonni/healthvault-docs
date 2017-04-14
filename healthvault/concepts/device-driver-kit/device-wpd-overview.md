HealthVault Devices and WPD Technology
======================================

HealthVault Connection Center is built on the Windows Portable Devices (WPD) technology that is used to connect cameras, media players, and cell phones to Windows. With the release of HealthVault, we’ve extended this architecture to support health and fitness devices. The WPD technology is bus agnostic. “Bus agnostic” means that the technology is completely independent of the connectivity mechanism used to connect the device to Windows. As such, WPD technology supports all connectivity mechanisms, including but not limited to USB 1.1, USB 2.0, Bluetooth, IR, and Serial.

The WPD model requires installation of a User Mode driver. A user mode driver is considerably easier to build than a kernel driver. A user mode driver would be responsible for establishing a connection to the device from the PC, then for responding to requests from HealthVault Connection Center for data recorded on the device.

The primary responsibility of the driver is to map the proprietary device data types to HealthVault data types. With this simple driver, the health device can connect with HealthVault Connection Center without any modification to the device firmware.

The following resources describe the WPD architecture in more detail:

-   [High-level video discussion of the WPD technology](http://channel9.msdn.com/ShowPost.aspx?PostID=234357#234357)
-   MSDN contains the latest [SDK information on WPD](https://msdn.microsoft.com/library/ms740786(VS.85).aspx). This design and programming guide describes development using the WPD API. 
-   [The Windows Driver Development Kit](https://www.microsoft.com/whdc/DevTools/WDK/WDKpkg.mspx) describes how to build a WPD user mode driver, complete with documentation and samples. 
-   To learn about the WPD extensions for Health and Fitness devices, you should download the [HealthVault Device Driver Development Kit](https://www.microsoft.com/en-us/download/details.aspx?id=26801).
