HealthVault Root Certificate Migration
======================================

What is Changing?
-----------------

As part of our ongoing commitment to security, we are making a change to our SSL certificate chain. Microsoft is changing to the Baltimore CyberTrust Root for all public facing HTTPs services.  If your application does not accept certificates chained to Baltimore CyberTrust Root, please take action prior to June 11th, 2015. While we seek to minimize the need for customers to take specific action based on changes we make to the HealthVault platform, we believe this is an important security improvement. We expect to continue to use the Baltimore CyberTrust Root for the foreseeable future, however, as part of our commitment to security we will continue to make changes as industry security standards and threat mitigations evolve

<span style="FONT-SIZE: 9pt; FONT-FAMILY: 'Segoe UI',sans-serif; COLOR: #333333">The Baltimore CyberTrust Root can be downloaded from </span><a href="https://cacert.omniroot.com/bc2025.crt" id="PageContent_15820_0">https://cacert.omniroot.com/bc2025.crt.</a>

Customer Impact
---------------

The Baltimore CyberTrust Root is widely trusted by a number of operating systems including Windows, Windows Phone, Android and iOS, and by browsers such as Internet Explorer, Safari, Chrome, Firefox, and Opera. We expect that the vast majority of customers will not experience any issues due to this change. However, some customers may experience certificate validation failures if their custom applications do not include the Baltimore CyberTrust Root in their trusted root lists. Customers with such applications must modify these applications to accept the Baltimore CyberTrust Root. Customers who do not have the Baltimore CyberTrust root in their trusted root lists and do not take the prescribed action will receive certificate validation errors, which may affect the availability of their services.

Error Messages
--------------

<span style="FONT-SIZE: 9pt; FONT-FAMILY: 'Segoe UI',sans-serif; COLOR: #333333">If you are impacted by this certificate update then the error messages you receive will be dependent on the type of environment you are running in and which scenario you are impacted by.  You should check Windows Application event logs, CAPI2 event logs, and custom application logs.  Here is an example of an error message you may receive in the Application event logs:</span>

<span style="FONT-SIZE: 9pt; FONT-FAMILY: 'Segoe UI',sans-serif; COLOR: #333333">An operation failed because the following certificate has validation errors:\\n\\nSubjectName: CN=accesscontrol.windows.net\\nIssuer Name: CN=MSIT Machine Auth CA 2,DC=redmond, DC=corp, DC=microsoft, DC=com\\nThumbprint:XXXXXXB2583B8E4AA74E4E6C07A0A419B1XXXXXX\\n\\nErrors:\\n\\n The root of the certificate chain is not a trusted root authority.</span>

