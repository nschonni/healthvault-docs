Enabling detection of non-PnP devices
=====================================

There are two main options for working around issues with non-PnP buses (for example, serial port, irDA):

-   Have the driver poll
-   Have the driver be request-driven (that is, no polling)

Have the driver poll
--------------------

This polling thread is started when the driver loads and continues to poll until the driver is unloaded. It provides a PnP-like experience because the driver can send an event to Connection Center (and all listening applications) when the device arrives and when it leaves.

This is the typical solution most vendors implement.

Have the driver be request-driven
---------------------------------

When a request comes into the driver for data (for example, an application asks “How many Glucose Readings do you have?”), the driver attempts to talk to the device. If the device responds, the driver grabs the data and fulfills the request. If the device does not respond, the driver assumes that the device is not currently plugged in and returns no items.

This option is safer than polling, but has two main drawbacks:

-   The user experience is not as good because the user has to initiate the action (for example, browse the device in My Computer, or click **Upload Data to HealthVault** in Connection Center).
-   The driver needs to implement some logic about when it “refreshes” data in its cache (that is, because it’s not polling, the driver doesn’t know when the device leaves and comes back with new data. For performance reasons, calling into the device on every request is usually not an option, so some form of caching is usually employed.

### Devices and HealthVault

Development

-   <a href="device-overview.md" id="RightRailLinkListSection_13999_15">Building HealthVault-compatible devices</a>
-   <a href="device-wpd-overview.md" id="RightRailLinkListSection_13999_7">Overview of Windows Portable Devices</a>
-   <a href="device-code-10-errors.md" id="RightRailLinkListSection_13999_8">Code 10 errors with WPD drivers</a>
-   <a href="device-non-pnp.md" id="RightRailLinkListSection_13999_9">Enabling detection of non-PnP devices</a>
-   <a href="https://www.microsoft.com/en-us/download/details.aspx?id=26801" id="RightRailLinkListSection_13999_10">Device Driver Development Package</a>

More resources

-   <a href="https://config.healthvault-ppe.com/" id="RightRailLinkListSection_13999_11">Application Configuration Center (ACC)</a>
-   <a href="https://www.healthvault.com/connection-center" id="RightRailLinkListSection_13999_12">Connection Center</a>
-   <a href="https://account.healthvault.com/Directory?target=Devices" id="RightRailLinkListSection_13999_14">Device Directory</a>

