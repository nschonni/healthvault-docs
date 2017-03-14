Creating a private key-public key pair
======================================

A HealthVault application uses a private key to encrypt the first handshake message that it sends to the platform service.  HealthVault then uses a public key to verify the sender.  The public key must be registered with HealthVault through the [Application Configuration Center](https://config.healthvault-ppe.com).  The private key is securely stored by the application and is never shared with HealthVault.

Best practices
--------------

Theft of the private key will allow an unauthorized agent to impersonate your application and make calls to HealthVault.

-   Store it somewhere safe.
-   Do not include it in any e-mail messages.
-   Limit access to the key to only those people who must have access.

Deleting an old key
-------------------

-   Open the Certificates MMC console for the local machine store. For information about opening the Certificates MMC console, see [How to: View Certificates with the MMC Snap-in](https://msdn.microsoft.com/library/ms788967).

-   Open the Personal folder, and then open the Cetificates subfolder.

-   Right-click the old certificate and select **Delete**.

Old certificates are not cleanly deleted if a process currently has them open. You may need to shut off any web server instances that are currently running.

Creating the key pair
---------------------

The MakeCert.exe utility creates a private certificate and loads it to the personal certificate store on the machine (LocalMachine\\My).  MakeCert also creates a corresponding public certificate that matches the private key.  The public certificate is stored in a file specified at the command line.  

If you lose the file that MakeCert generated, or if you generated your private key in a different way, you can export a DER-encoded public certificate using the Microsoft Management Console. The corresponding private key is wrapped in a certificate that has been installed in your LocalMachine\\My store.

To create the private/public key pair:

1.  Find makecert.exe in the bin directory of the Microsoft Visual Studio installation. It is also available in the Downloads section of the HealthVault MSDN site.
2.  Using the MakeCert command:

    <span class="code">makecert.exe "&lt;OutputPath&gt;\\&lt;CertFileName&gt;.cer" -a sha1 -n "CN=WildcatApp-&lt;AppId&gt;" -sr LocalMachine -ss My -sky signature -pe -len 2048</span>

    For example:

    <span class="code">makecert.exe "c:\\temp\\MyCert.cer" -a sha1 -n "CN=WildcatApp-6296418d-a6c7-418d-84ea-f4c04b9dd1b6" -sr LocalMachine -ss My -sky signature -pe -len 2048</span>

3.  Upload the resulting CER file and associated with your application using Application Configuration Center. This file contains the DER-encoded public key.

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

### Integrating with HealthVault

See also

-   <a href="https://msdn.microsoft.com/en-us/library/ms788967" id="RightRailLinkListSection_14010_7">How to view certificates with MMC</a>

