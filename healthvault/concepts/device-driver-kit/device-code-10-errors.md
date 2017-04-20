---
title: Device driver: Code 10 error
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn why WPD devices sometimes show "This device cannot start (code 10)". 
---

Code 10 errors with WPD drivers
===============================

While building your drivers for HealthVault Connection Center, you may come across the "Code 10" error, when the device manager gives you a status of "This device cannot start. (Code 10)." This error occurs when your driver is unable to start, or it may have crashed.

Here are some of the steps you can take to help debug your driver.

Check whether the driver loads correctly as a DLL. A simple way to check is to run the Depends.exe tool that comes with Visual Studio on the PC that has the problem.

If Depends.exe flags anything (for example, it can’t find the debug VC CRT or some helper DLL), you should be able to identify and therefore fix the problem.

There are two common problems of this type:

-   Missing CRTs
    Whether DEBUG or Retail, the correct version of the VC runtime redist needs to be installed on the machine.
    NOTE: Connection Center installs VC runtime for VC 2005 SP1.
-   Missing I/O or device library file
    Make sure the device INF copies the I/O library or device library file to the correct location. If your driver does not explicitly load the library from a known directory, but instead relies on the system to find and load the DLL, remember that the EXE you’re running under (WUDFHOST.EXE) has a working directory of %WINDIR%\\System32, not the subdirectory where your driver is (%windir%\\System32\\drivers\\umdf\\Hdi). Therefore, your INF may need to specify a different target location in the CopyFiles section for that file.

If Depends.exe loads the DLL successfully, but you still have a code 10, your driver is likely loading, but failing to start. The best thing to do is to debug the driver when it is loaded/started. Follow these steps to debug the driver start.

1.  WUDF has a registry entry that helps with debugging. This entry causes the WUDF service to wait while a debugger is attached for a specified amount of time. See [How to enable a debugger](https://msdn.microsoft.com/en-us/library/ff554716.aspx) for more information. .
2.  Set the registry value at "HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion\\WUDF\\Services\\{193a1820-d9ac-4997-8c55-be817523f6aa}\\HostProcessDbgBreakOnStart" to 0x00030000.
3.  In Device Manager, disable your WPD device.
4.  In Visual Studio 2005, open your driver project and then open the source file 'device.cpp'.
5.  Set a break point in the function CDevice::OnPrepareHardware( ).
6.  In Device Manager, enable your WPD driver.
7.  In Visual Studio 2005, select **Debug&gt;Attach to Process**.
8.  In the **Attach to Process** dialog box, select the **Show processes from all users** check box and the **Show processes in all sessions** check box.
9.  Your WPD Driver is hosted in the WUDFHOST.EXE process. In the **Available Processes** list, select WUDFHOST.EXE and then click **Attach**.
    NOTE: If more than one WUDFHOST.EXE is listed, it means you have more than one WPD driver running. Go to Device Manager and disable the other WPD devices.
10. Press F5 in Visual Studio 2005; it hits your Breakpoint in 'device.cpp'.
11. Walk through your driver start-up code.
    NOTE: You must not return an error from CDevice::OnPrepareHardware( ) because returning an error tells PnP that your driver has a critical error and cannot load. If your device is not available at load time, that is fine—you should still return success (you just do not have any data yet).
