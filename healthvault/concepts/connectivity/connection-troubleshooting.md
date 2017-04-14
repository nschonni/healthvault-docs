Troubleshooting connection problems
===================================

### Condition

Client is getting one of the following error messages with a WebException (these errors may not be exact quotes):

-   The connection was refused by the remote host.
-   The request timed out while waiting for a response.
-   For security reasons DTD is prohibited in this XML document. To enable DTD processing, set the ProhibitDtd property on XmlReaderSettings to false and pass the settings into XmlReader.Create method.

### Troubleshooting Steps

1.  Verify the HealthServiceUrl and ShellUrl in the application web.config.

    **Dev/test environment:**

    ```xml
    <add key="ShellUrl" value="https://www.healthvault-ppe.com/" />
    <add key="HealthServiceUrl" value="http://platform.healthvault-ppe.com/Platform/" />
    ```

    **Production:**

    ```xml
    <add key="ShellUrl" value="https://account.healthvault.com/" />
    <add key="HealthServiceUrl" value="https://platform.healthvault.com/Platform/" />
    ```

    If you are getting the “For security reasons DTD is prohibited in this XML document” error, the most likely cause is an incorrect HealthServiceUrl. This error occurs when the response to an SDK request is HTML.

2.  Gather proxy server configuration (if any):
    1.  Open Internet Explorer.
    2.  Go to **Tools&gt;Internet Options**.
    3.  Select the **Connections** tab.
    4.  Click **LAN settings**.
    5.  Under **Proxy server**, note the **Address** and **Port**, if present.
3.  If proxy settings were configured, verify that those proxy settings are present in the web.config:
    1.  Open the web.config for the application in an editor.
    2.  Scroll down to the &lt;system.net&gt; section.
    3.  Verify the &lt;defaultProxy&gt; element is present.
    4.  If the &lt;system.net&gt; or &lt;defaultProxy&gt; elements are missing, add them. Place the proxy server and port settings with those retrieved in step 1. If no port, leave off the “:port” portion of the address.

        ```xml
        <defaultProxy>
            <proxy usesystemdefault = "false"
                   proxyaddress=” http://proxyserver:port”           
                   bypassonlocal="true" />
        </defaultProxy>
        ```

4.  If connection errors continue to occur, other tools must be used to diagnose the problems.
    1.  Install Fiddler v2 from <http://www.fiddler2.com/Fiddler2/version.asp>.
    2.  Start Fiddler.
    3.  Configure Fiddler to decrypt HTTPS traffic.
        1.  In Fiddler, go to **Tools&gt;Fiddler Options**.
        2.  Select the **Decrypt HTTPS traffic** checkbox.
        3.  Click **OK**.
    4.  Run the scenario that causes the connection problem.
    5.  Analyze the Fiddler logs.
