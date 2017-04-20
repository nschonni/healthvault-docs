---
title: HealthVault device drivers
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn how to build HealthVault-compatible devices
---

Building HealthVault-compatible devices
=======================================

This guide gives you the information you need to make your device compatible with HealthVault. It includes guidelines on how to create a driver and list your device in the HealthVault Device Directory on HealthVault.com and in HealthVault Connection Center.

What is a HealthVault enabled device?
-------------------------------------

Microsoft HealthVault is a personal health platform that lets consumers gather, store, and share health information online. You can use it to store health information obtained from providers, health plans, pharmacies, and uploaded from HealthVault enabled devices – including yours! With HealthVault, users can share their health information with family, friends, and health care professionals, and have access to trustworthy online health management applications.

There are many different types of HealthVault enabled devices today some of which are fitness watches, pulse oximeters, blood pressure devices, peak flow meters, weight/body composition scales, and pedometers. The HealthVault team encourages the addition of new device types and different varieties of the current device types.

<a href="/healthvault/introduction/ecosystem.md" id="PageContent_14026_2">Learn how your device may fit into the HealthVault ecosystem</a> 

How to connect your device to HealthVault
-----------------------------------------

Manufacturers wishing to connect their devices to a PC to upload data to HealthVault must develop a driver that is compatible with [HealthVault Connection Center (HVCC).](https://www.healthvault.com/connection-center) HVCC is an application that runs on a Windows PC and manages the data exchange between the device and HealthVault.

The [HealthVault Device Driver Development Package](https://www.microsoft.com/en-us/download/details.aspx?id=26801) contains the necessary documentation, samples, and tools to help you develop your driver. The HealthVault team does not provide technical assistance for device driver development. [Learn about support options for developing device drivers for Windows](https://msdn.microsoft.com/library/windows/hardware/gg487428.aspx).

How to add your device to the HealthVault Device Directory
----------------------------------------------------------

Once you have completed the steps above, you will probably want to include your device in the [HealthVault Device Directory](https://account.healthvault.com/Directory?target=Devices) and in the HealthVault Connection center driver list. The HealthVault Device Directory contains a list of devices that are compatible with HealthVault and is a great way for you to showcase your device. HealthVault Connection Center provides a list of drivers that the consumer can choose to install.

Device directory entries can be created with the [Application Configuration Center](https://config.healthvault-ppe.com).
