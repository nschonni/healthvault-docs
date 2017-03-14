This documentation is archived and is not being maintained.

**HealthVault**

<span></span>
Once your device directory listed under the directories on the <span class="label">Home</span> tab, you can edit the directory page accordingly. In addition to the below items, it has the same configuration details as <span>[Create or Edit an application directory page](acc-create-or-edit-an-application-directory-page.md)</span>.

<span id="Section1"></span>
<span class="label">Categories</span>: Device types – You can choose the type of the device here. For example, Blood Pressure Monitor or ECG Device.

<span class="label">Device models</span>: Optional. You can choose the different model devices here.

-   <span class="label">Device model name</span>: Your device model’s unique name.

-   <span class="label">Device model display name</span>: Your device model’s display name.

-   <span class="label">Purchase url</span>: Your device model’s purchase url.

-   <span class="label">Device class</span>: Optional. the GUID which represents your device class.

-   <span class="label">Hardware id</span>: Property value of your device which you can find from the Device Manager of your computer manager.

-   <span class="label">Installed hardware ids</span>: Optional. A hardware ID is a vendor-defined identification string that Windows uses to match a device to an .inf file. For more information, see [Hardware IDs](https://msdn.microsoft.com/en-us/library/windows/hardware/ff546152(v=vs.85).aspx).

-   <span class="label">Auto detect id</span>: Optional. This ID is applicable only for the devices for which HealthVault Connection Center supports second level detection. After detecting the presence of a device, HealthVault Connection Center communicates with the device to determine its model number to decide which device from the device driver package should be installed. The model ID in the driver directory is the ID returned from the device when asked for model info. The protocol for the communication is device specific. We have support for Omron and Microlife.

-   <span class="label">Default driver package install arguments</span>: Optional. This specifies the arguments to pass to the driver package upon installation. For instance, this can be used to run the installer in quiet mode, or to pass the installer the specific device model so the user does not have to select it.

<span class="label">Screenshots</span>: Optional. You can upload your application screen captures here and it can take up to 3 screenshots maximum.

-   <span class="label">Sequence</span> – Application screen captures are displayed based on the sequence number.

-   <span class="label">Alternate text</span> – Alternate text associated with the company logo.

-   <span class="label">Caption</span> – You can set the caption for each screen capture here.

-   <span class="label">Image</span> – ACC supports images up to 150 × 150; however, the recommended image size is 149 × 100 pixels.

<span class="label">Driver packages</span>: The list of driver packages available for your device model.

-   <span class="label">Supported platforms</span> – You can choose the Windows platform for your device model.

-   <span class="label">Driver package url</span> – Your device model’s driver package url.

-   <span class="label">Default arguments</span> – Optional. Default arguments to pass to the driver install package

-   <span class="label">Instructions url</span> – Optional. URL to a page for driver package instructions.

-   <span class="label">Validation code</span> (recommended security best practice) – Optional. This value holds the signer name of the package so that the customer can verify when they download the driver.

<span class="label">Supported locations</span>: Specifies the countries/regions where the device is available. There are 2 options to specify the locations. The first is to use a linked application's supported locations by selecting an application from the dropdown list. The second is to set a device's supported location directly.

<span>Show:</span> Inherited Protected
