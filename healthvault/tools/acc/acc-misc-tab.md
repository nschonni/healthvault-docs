This documentation is archived and is not being maintained.

**HealthVault**

<span></span>
This collection of options allows you to enable additional customizations for your application.

<span id="Content"></span>
<span class="label">Automatic user sign-in</span>: This is used to enable or disable the <span class="label">Keep me signed in for future visits</span> check box on the HealthVault login page.

<span class="label">Automatic user sign-in duration in seconds</span>: You can specify the length of time in seconds to persist a user token for the above.

<span class="label">Client Token (GUID)</span>: This value is used to search vocabularies directly from web applications, provided they are authorized to do so. See ApplicationInfo.ClientServiceToken for more information.

<span class="label">ApplicationType</span>: By default the value will be <span class="label">Default</span> and you can change it to <span class="label">Master</span> or <span class="label">SODA</span>. Changing the application type to <span class="label">Master</span> or <span class="label">SODA</span> is irreversible.

<span class="label">Application Attributes</span>: You can specify the application attribute type here. By default none of the attributes are selected.

-   <span class="label">HIPAA</span>: If your organization is HIPAA certified and you don't want to have terms of use or privacy outside of that, please mark <span class="label">HIPAA</span> as your application attribute.

-   <span class="label">Clinical Trial</span>: If your organization is covered under clinical trials and you don't want to have terms of use or privacy outside of that, please mark <span class="label">Clinical Trial</span> as your application attribute.

<span class="label">Supported instances for PPE</span>: Specifies the HealthVault global instances where the application is available in HealthVault's pre-production environment (PPE). If "Support all current and future instances" is selected, the individual selections are not used.

<span class="label">Supported instances for Production</span>: Specifies the HealthVault global instances where the application is available in HealthVault's production environment. If "Support all current and future instances" is selected, the individual selections are not used. This information is used during the go-live process to provision the application in the desired production HealthVault instances. Changing this setting, will require a push to production in order for the settings to take effect in production.

<span class="label">Supported locations</span>: Specifies the countries/regions where the application is available.

<span>Show:</span> Inherited Protected
