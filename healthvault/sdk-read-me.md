.NET SDK Read Me Notes
======================

The .NET SDK provides .NET-specific objects and abstractions for working with the HealthVault web service. It also provides tools for creating and managing HealthVault applications on your machine, Visual Studio application templates, and sample code.

Troubleshooting
---------------

### Application Manager and Visual Studio integration issues

There are two common issues that can cause the Application Manager to fail to detect or launch Visual Studio. Your installation of Visual Studio may be missing the Web Developer Tools component. An undesired version of the Visual Studio DTE object may be registered as "current." The steps below will check for and address both issues.

-   Make sure Visual Studio has the **Web Developer Tools** component installed. Start by checking the **About Microsoft Visual Studio** dialog for the presence of the Web Developer Tools component.

    1.  Click **Help**, click **About Microsoft Visual Studio**.
    2.  In the **Installed components** list, check for the presence of **Web Developer Tools**.

    If the Web Developer Tools component is not installed, relaunch the Visual Studio installer and make sure the Microsoft Web Developer Tools (or Visual Web Developer in older versions of Visual Studio) is selected.

-   Having more than one version of certain Visual Studio components may cause Application Manager to launch the incorrect version of Visual Studio, fail to create projects, or fail to detect a supported version of Visual Studio entirely.

    **Important** This section contains steps that tell you how to modify the registry. However, serious problems might occur if you modify the registry incorrectly. Therefore, make sure that you follow these steps carefully. For added protection, back up the registry before you modify it. Then, you can restore the registry if a problem occurs. For more information about how to back up and restore the registry, see the [article on this topic in the Microsoft Knowledge Base](http://support.microsoft.com/kb/322756).

    1.  Start Registry Editor (regedit.exe).
    2.  Locate and copy the GUID value of the **HKEY\_CLASSES\_ROOT\\VisualStudio.DTE. *xx*.0\\CLSID** registry subkey to the **HKEY\_CLASSES\_ROOT\\VisualStudio.DTE\\CLSID** subkey.
        Where ***xx*** is the Visual Studio version number you want Application Manager integrated with (e.g. VisualStudio.DTE.11.0 for Visual Studio 2012 — see table below).
    3.  Change the value of the **HKEY\_CLASSES\_ROOT\\VisualStudio.DTE\\CurVer** subkey to **"VisualStudio.DTE. *xx*.0"**:

    | Visual Studio      | HKEY\_CLASSES\_ROOT\\VisualStudio.DTE\\CLSID | HKEY\_CLASSES\_ROOT\\VisualStudio.DTE\\CurVer |
    |--------------------|----------------------------------------------|-----------------------------------------------|
    | Visual Studio 2013 | {3C0D7ACB-790B-4437-8DD2-815CA17C474D}       | VisualStudio.DTE.12.0                         |
    | Visual Studio 2012 | {059618E6-4639-4D1A-A248-1384E368D5C3}       | VisualStudio.DTE.11.0                         |
    | Visual Studio 2010 | {656D8328-93F5-41a7-A48C-B42858161F25}       | VisualStudio.DTE.10.0                         |

See also

-   <a href="https://msdn.microsoft.com/en-us/healthvault/dn798744" id="RightRailLinkListSection_13996_9">SDK Downloads</a>
-   <a href="sdk-releases.md" id="RightRailLinkListSection_13996_8">SDK Release History</a>

