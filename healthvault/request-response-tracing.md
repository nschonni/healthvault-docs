Request-response tracing
========================

The following may be useful for low-level debugging of the traffic between your application and the HealthVault servers.

1.  Make sure the account under which the ASP.NET worker process is running (w3wp.exe for W2K3 and Vista, aspnet\_wp.exe for XP) has write access to the application directory.
2.  Open the web.config file.
3.  Add the following (if the system.diagnostics section already exists, just add the inner elements to the existing section):

        <system.diagnostics>
            <sources>
                <source name="HealthVaultTraceSource"
                        switchName="HealthVaultTraceSourceSwitch"
                        switchType="System.Diagnostics.SourceSwitch" >
                    <listeners>
                        <add name="fileListener"
                            type="System.Diagnostics.TextWriterTraceListener"
                            initializeData="sdk.log" />
                        <remove name ="Default" />
                    </listeners>
                </source>
            </sources>
            <switches>
                <!-- You can set the level at which tracing is to occur -->
                <add name="HealthVaultTraceSourceSwitch" value="All" />
                <!-- You can turn tracing off -->
                <!--add name="HealthVaultTraceSourceSwitch" value="Off" -->
            </switches>
        </system.diagnostics>

4.  Run the scenario, and look at the sdk.log file that is generated in the application directory. You may need to shut down the application to get the complete set of data from the tracing infrastructure.
5.  If the log file is not created and you are sure a request was made to HealthVault, change “sdk.log” to be the complete path to a directory that the ASP.NET worker process has write access to, and try again.

### Integrating with HealthVault

See also

-   <a href="status-codes.md" id="RightRailLinkListSection_14013_7">Status codes</a>
-   <a href="connection-troubleshooting.md" id="RightRailLinkListSection_14013_8">Troubleshooting connection problems</a>

