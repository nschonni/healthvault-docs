---
title: Application Configuration Center | Device directory
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
---

# Create or Edit a Device Directory Page

Once your device directory listed under the directories on the Home tab, you can edit the directory page accordingly. 

> [!NOTE] 
> The device directory page supports all of the same configuration options as the [Create or Edit an application directory page](acc-create-or-edit-an-application-directory-page.md). This article describes only the options which are specific to devices. 

# Categories
* Device types – You can choose the type of the device here. For example, Blood Pressure Monitor or ECG Device.

# Device models
Optional. You can choose the different model devices here.
* Device model name: Your device model’s unique name.
* Device model display name: Your device model’s display name.
* Purchase url: Your device model’s purchase url.
* Device class: Optional. the GUID which represents your device class.
* Hardware id: Property value of your device which you can find from the Device Manager of your computer manager.
* Installed hardware ids: Optional. A hardware ID is a vendor-defined identification string that Windows uses to match a device to an .inf file. For more information, see [Hardware IDs](https://msdn.microsoft.com/en-us/library/windows/hardware/ff546152(v=vs.85).aspx).
* Auto detect id: Optional. This ID is applicable only for the devices for which HealthVault Connection Center supports second level detection. After detecting the presence of a device, HealthVault Connection Center communicates with the device to determine its model number to decide which device from the device driver package should be installed. The model ID in the driver directory is the ID returned from the device when asked for model info. The protocol for the communication is device specific. We have support for Omron and Microlife.
* Default driver package install arguments: Optional. This specifies the arguments to pass to the driver package upon installation. For instance, this can be used to run the installer in quiet mode, or to pass the installer the specific device model so the user does not have to select it.

# Screenshots
Optional. You can upload your application screen captures here and it can take up to 3 screenshots maximum.
*  Sequence – Application screen captures are displayed based on the sequence number.
* Alternate text – Alternate text associated with the company logo.
* Caption – You can set the caption for each screen capture here.
* Image – ACC supports images up to 150 × 150; however, the recommended image size is 149 × 100 pixels.

# Driver packages 
The list of driver packages available for your device model.
* Supported platforms – You can choose the Windows platform for your device model.
* Driver package url – Your device model’s driver package url.
* Default arguments – Optional. Default arguments to pass to the driver install package
* Instructions url – Optional. URL to a page for driver package instructions.
* Validation code (recommended security best practice) – Optional. This value holds the signer name of the package so that the customer can verify when they download the driver.

# Supported locations
Specifies the countries/regions where the device is available. There are 2 options to specify the locations. The first is to use a linked application's supported locations by selecting an application from the dropdown list. The second is to set a device's supported location directly.

