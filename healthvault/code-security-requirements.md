ASP.NET code security permissions
=================================

The HealthVault SDK assemblies require certain Code Access Security permissions in order to work properly in an ASP.NET application. In medium trust or partial trust configurations, the code permissions granted to an ASP.NET application are determined by a Code Access Security (CAS) policy file on the Web server.

Many Web hosting providers run ASP.NET applications in a medium trust environment. Medium trust does not provide all the permissions required by the Microsoft.Health.dll and Microsoft.Health.Web.dll assemblies. You may need to negotiate with your hosting provider to get additional permissions for your application. (If you manage your own ASP.NET server but do not want to run your application with full trust, you will need to configure the CAS permissions yourself. For more information, see Chapter 9 of "Improving Web Application Security: Threats and Countermeasures", [Using Code Access Security with ASP.NET](https://msdn.microsoft.com/en-us/library/aa302425)).

Required permissions
--------------------

The following permissions are always required by Microsoft.Health.Web.dll:

-   [System.Web<span class="languageSpecificText" xmlns="http://www.w3.org/1999/xhtml"><span class="cs">.</span><span class="vb">.</span><span class="cpp">::</span><span class="nu">.</span><span class="fs">.</span></span>AspNetHostingPermission](http://msdn2.microsoft.com/en-us/library/w3ht8sy3)
-   [System.Security.Permissions<span class="languageSpecificText" xmlns="http://www.w3.org/1999/xhtml"><span class="cs">.</span><span class="vb">.</span><span class="cpp">::</span><span class="nu">.</span><span class="fs">.</span></span>EnvironmentPermission](http://msdn2.microsoft.com/en-us/library/eh3hcfha)
-   [System.Security.Permissions<span class="languageSpecificText" xmlns="http://www.w3.org/1999/xhtml"><span class="cs">.</span><span class="vb">.</span><span class="cpp">::</span><span class="nu">.</span><span class="fs">.</span></span>FileIOPermission](http://msdn2.microsoft.com/en-us/library/6485ct6t)
-   [System.Security.Permissions<span class="languageSpecificText" xmlns="http://www.w3.org/1999/xhtml"><span class="cs">.</span><span class="vb">.</span><span class="cpp">::</span><span class="nu">.</span><span class="fs">.</span></span>ReflectionPermission](http://msdn2.microsoft.com/en-us/library/079csk9t)
-   [System.Security.Permissions<span class="languageSpecificText" xmlns="http://www.w3.org/1999/xhtml"><span class="cs">.</span><span class="vb">.</span><span class="cpp">::</span><span class="nu">.</span><span class="fs">.</span></span>RegistryPermission](http://msdn2.microsoft.com/en-us/library/88b6xhxd)
-   [System.Security.Permissions<span class="languageSpecificText" xmlns="http://www.w3.org/1999/xhtml"><span class="cs">.</span><span class="vb">.</span><span class="cpp">::</span><span class="nu">.</span><span class="fs">.</span></span>KeyContainerPermission](http://msdn2.microsoft.com/en-us/library/bk0z5tde)
-   [System.Security.Permissions<span class="languageSpecificText" xmlns="http://www.w3.org/1999/xhtml"><span class="cs">.</span><span class="vb">.</span><span class="cpp">::</span><span class="nu">.</span><span class="fs">.</span></span>SecurityPermission](http://msdn2.microsoft.com/en-us/library/k820e6k8)

Additional permissions
----------------------

Certain features exposed through Microsoft.Health.Web.dll and Microsoft.Health.dll require additional permissions or security demands.

### Microsoft.Health.dll

All HealthVault exceptions are serializable using the [ISerializable<span class="languageSpecificText" xmlns="http://www.w3.org/1999/xhtml"><span class="cs">.</span><span class="vb">.</span><span class="cpp">::</span><span class="nu">.</span><span class="fs">.</span></span>GetObjectData](http://msdn2.microsoft.com/en-us/library/27cxsdk6) virtual method, which requires a [LinkDemand](https://msdn.microsoft.com/en-us/library/3ky50t49) for the [SecurityPermissionAttribute<span class="languageSpecificText" xmlns="http://www.w3.org/1999/xhtml"><span class="cs">.</span><span class="vb">.</span><span class="cpp">::</span><span class="nu">.</span><span class="fs">.</span></span>SerializationFormatter](http://msdn2.microsoft.com/en-us/library/176fk2k2) property.

In addition, the [HealthRecordItem<span class="languageSpecificText" xmlns="http://www.w3.org/1999/xhtml"><span class="cs">.</span><span class="vb">.</span><span class="cpp">::</span><span class="nu">.</span><span class="fs">.</span></span>ValidateCertificate](https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditem.validatecertificate.aspx) and [HealthRecordItem<span class="languageSpecificText" xmlns="http://www.w3.org/1999/xhtml"><span class="cs">.</span><span class="vb">.</span><span class="cpp">::</span><span class="nu">.</span><span class="fs">.</span></span>IsSignatureValid](https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditem.issignaturevalid.aspx) methods require full trust in order to run. Calls to these methods will fail in partial trust environments.

### Microsoft.Health.Web.dll

In a Minimal trust environment, both a **LinkDemand** and an [InheritanceDemand](https://msdn.microsoft.com/en-us/library/x4yx82e6) are required for the [HealthRecordItemDataGrid](https://msdn.microsoft.com/en-us/library/microsoft.health.web.healthrecorditemdatagrid.aspx) and [HealthServicePage](https://msdn.microsoft.com/en-us/library/microsoft.health.web.healthservicepage.aspx) classes.

### Integrating with HealthVault

Web development

-   <a href="web-connectivity.md" id="RightRailLinkListSection_14028_7">Web connections</a>
-   <a href="shell-redirect-interface.md" id="RightRailLinkListSection_14028_8">Shell redirect interface</a>
-   <a href="code-security-requirements.md" id="RightRailLinkListSection_14028_9">Code access security permissions</a>
-   <a href="action-url.md" id="RightRailLinkListSection_14028_10">Interacting with ActionUrl</a>
-   <a href="action-url-custom-redirection.md" id="RightRailLinkListSection_14028_11">Customizing redirection</a>

