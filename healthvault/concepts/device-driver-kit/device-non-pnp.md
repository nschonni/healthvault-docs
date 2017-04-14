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
