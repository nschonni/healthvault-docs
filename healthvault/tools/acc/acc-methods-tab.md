This documentation is archived and is not being maintained.

**HealthVault**

<span></span>
The default set of methods selected are Basic Set and Hosted Web Application, except for SODA applications. These two method groups should be sufficient for most web applications. Some of the optional methods may require additional review by the HealthVault team or additional terms in your HealthVault Solution Provider Agreement.

<span id="Content"></span>
<span class="label">Basic Set</span>: Selected and disabled by default. Common methods used by all applications except SODA.

<span class="label">Hosted Web Application</span>: Selected and disabled by default. This allows a web application (non-desktop application) to communicate with HealthVault.

<span class="label">Application requires access to ConnectPackage methods</span>: Optional. This method set allows access to connect to the HealthVault platform from back-end clinical systems and is required for Patient Connect and DOPU applications.

<span class="label">Application requires access to create an OpenQuery</span>: Optional. This method allows your application to use OpenQuery. When selected, this item may require additional review.

<span class="label">Application requires access to be Master (should remain checked for master app) for application provisioning</span>: Optional. This method set allows a master application access to provision child applications and to get authorized connect requests for child applications. For more information, see <span>[Master and Child Applications](master-and-child-applications.md)</span>.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Note" alt="JJ551284.alert_note(en-us,MSDN.10).gif" id="alert_note" class="cl_IC101471" /> <strong>Note</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>In order to go live with a Master application, your HealthVault Solution Provider Agreement must include a specific addendum which covers this functionality.</p></td>
</tr>
</tbody>
</table>

<span class="label">Application requires access to Signup methods</span>: Optional. In special instances we do support creating HealthVault accounts from outside the U.S. and by enabling this; application will be able to create signup code, which is required during HealthVault account creation.

<span class="label">Application requires access to Eventing methods</span>: Optional. HealthVault Eventing is a framework that enables HealthVault applications to subscribe to and receive notification of selected events that occur within the HealthVault platform. This method selection will enable your HealthVault application to consume the HealthVault evening feature. For more information about eventing, see <span>[HealthVault eventing](healthvault-eventing.md)</span>.

<span class="label">Application requires access to send e-mail through HealthVault</span>: Optional. This method allows your application to send email to HealthVault account owners through the HealthVault platform. When this is selected, the Domain sending e-mail is required. This item may require additional review.

<span class="label">Application requires access to REST APIs:</span> Optional. This allows your application to call the REST endpoints described at <https://developer.healthvault.com>.

<span class="label">Application requires access to onboarding APIs:</span> Optional. This allows your application to send invitation messages to end-users via the Onboarding API.

<span>Show:</span> Inherited Protected
