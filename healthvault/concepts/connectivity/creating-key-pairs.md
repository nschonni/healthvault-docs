---
title: Creating certificates
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Walkthrough of how to create a certificate for HealthVault
---

# Creating a certificate (public/private key pair) for HealthVault

A HealthVault application uses a private key to encrypt the first handshake message that it sends to the platform service.  HealthVault then uses a public key to verify the sender.  The public key must be registered with HealthVault through the [Application Configuration Center](https://config.healthvault-ppe.com).  The private key is securely stored by the application and is never shared with HealthVault.

Best practices
--------------

Theft of the private key will allow an unauthorized agent to impersonate your application and make calls to HealthVault.

-   Store it somewhere safe.
-   Do not include it in any e-mail messages.
-   Limit access to the key to only those people who must have access.

Creating the key pair
---------------------
Windows includes a couple of ways to generate a HealthVault compatible X509 certificate. 

If you lose the certificate in the future, or if you generated your private key in a different way, you can export a DER-encoded public certificate using the Microsoft Management Console. The corresponding private key is wrapped in a certificate that has been installed in your LocalMachine\\My store.

To create the private/public key pair:

1. In Windows 10/Server 2016
    1.  Open PowerShell as an Administrator
    2.  Paste the following content into PowerShell, replacing “Insert your ApplicationID here” with the ApplicationID you received from HealthVault’s Application Configuration Center.

    ```powershell
    function Create-HealthVaultCert([guid]$applicationID) {
        $cert = New-SelfSignedCertificate -DnsName "WildcatApp-$applicationID" -CertStoreLocation "cert:\\LocalMachine\My" -HashAlgorithm "SHA256" -Provider 'Microsoft Enhanced RSA and AES Cryptographic Provider'    
        Export-Certificate -Cert $cert -FilePath $env:USERPROFILE\Downloads\${applicationID}.cer    
        Set-ReadPermissionsForCert $cert
    }
    function Set-ReadPermissionsForCert([System.Security.Cryptography.X509Certificates.X509Certificate]$Cert, [string]$Username = $env:USERNAME) {
        $keyPath = "C:\ProgramData\Microsoft\Crypto\RSA\MachineKeys\"    
        $fullPath =$keyPath+$Cert.PrivateKey.CspKeyContainerInfo.UniqueKeyContainerName
        $acl = Get-Acl -Path $fullPath    
        $permission = $Username,"Read","Allow"    
        $accessRule = New-Object System.Security.AccessControl.FileSystemAccessRule $permission    
        $acl.AddAccessRule($accessRule)     
        Set-Acl $fullPath $acl
    } 
    #Edit the string below to specify the appropriate ApplicationID you received from the Application Configuration Center
    Create-HealthVaultCert("Insert Your ApplicationID Here")
    ```
2.  On previous versions of Windows

    1.  Open a Visual Studio Developer Command Prompt as an Administrator.
    2.  Execute the following command, replacing <span style="COLOR: #c00">this GUID</span> with your own application ID:

    ```cmd
    makecert -a sha256 -n "CN=WildcatApp-6f147b94-56d5-4e10-a44e-3a4bea89d878" -sr LocalMachine -ss My -sky signature -pe -len 2048 
     "%USERPROFILE%\Downloads\6f147b94-56d5-4e10-a44e-3a4bea89d878.cer" 
    ```

3.  These commands will install the private key on your machine and write the public key to the specified certificate file. You will find the signed certificate in the Downloads folder for the currently logged in user.

Exporting your private key and installing it on your application server
-----------------------------------------------------------------------

Once the CER has been uploaded and associated with your application, install the PFX on your application server(s).

To install the PFX:

1.  Export Instructions (on machine where you generated the certificate):
    1.  Use the Certificates MMC console, and open the folder containing the certificate. For information about opening the Certificates MMC console, see [How to: View Certificates with the MMC Snap-in](https://msdn.microsoft.com/library/ms788967).
    2.  Right-click your new certificate.
    3.  From the context menu, select **All Tasks&gt;Export**.
    4.  Click **Next**
    5.  Select **Yes, Export the Private Key**.
    6.  Follow the remaining steps: Enter an output filename and choose a password to protect installation of this private key.
2.  Import Instructions (on App server):
    1.  Open the Certificates MMC console for the local machine.
    2.  If the machine currently has a certificate with the same certificate name, delete the existing certificate before importing the new one.
    3.  Under **Certificates (Local Computer)\\Personal**, right-click **Certificates**.
    4.  Select All Tasks &gt; **Import**.
    5.  Use the file that you exported In Step 1.
    6.  Select to load this cert into **Personal**.
3.  Use WinHttpCertCfg to grant the NetworkService account the permission it needs to utilize this private key:

    `WinHttpCertCfg.exe -g -a NetworkService -c Local_Machine\My -s "WildcatApp-<AppId>"`

Deleting an old key
-------------------

-   Open the Certificates MMC console for the local machine store. For information about opening the Certificates MMC console, see [How to: View Certificates with the MMC Snap-in](https://msdn.microsoft.com/library/ms788967).
-   Open the Personal folder, and then open the Cetificates subfolder.
-   Right-click the old certificate and select **Delete**.

Old certificates are not cleanly deleted if a process currently has them open. You may need to shut off any web server instances that are currently running.


### See also
- [How to view certificates with MMC](https://msdn.microsoft.com/en-us/library/ms788967)

