This documentation is archived and is not being maintained.

**HealthVault**

<span></span>
The Authentication namespace contains members specific to HealthVault authentication.

<span class="LW_CollapsibleArea_TitleAhref"><span class="cl_CollapsibleArea_expanding LW_CollapsibleArea_Img"></span><span class="LW_CollapsibleArea_Title">Classes</span></span>
<a href="/en-us/library/microsoft.health.authentication.aspx#Anchor_0" class="LW_CollapsibleArea_Anchor_Img" title="Right-click to copy and share the link for this section"></a>

------------------------------------------------------------------------

<span id="classToggle"></span>
<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th> </th>
<th>Class</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.authentication.applicationtokencreationinfo.aspx">ApplicationTokenCreationInfo</a></td>
<td><div class="summary">
Contains the information about an application needed to construct a user's credential for that application.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.authentication.createauthenticationtokenresult.aspx">CreateAuthenticationTokenResult</a></td>
<td><div class="summary">
Encapsulates the authentication token creation results.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.authentication.credential.aspx">Credential</a></td>
<td><div class="summary">
Provides base functionality for all Microsoft HealthVault service authentication credential types. This class is abstract.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.authentication.cryptoconfiguration.aspx">CryptoConfiguration</a></td>
<td><div class="summary">
Provides access to both application-level settings and methods to both specify and construct cryptographic primitives.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.authentication.cryptohash.aspx">CryptoHash</a></td>
<td><div class="summary">
Encapsulates a cryptographic hash primitive and provides additional functionality to communicate the hash state via XML.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.authentication.cryptohashfinalized.aspx">CryptoHashFinalized</a></td>
<td><div class="summary">
Represents finalized hash states that are sent via XML requests.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.authentication.cryptohmacfinalized.aspx">CryptoHmacFinalized</a></td>
<td><div class="summary">
Represents finalized Hash Message Authentication Code (HMAC) states that are sent via XML requests.
</div></td>
</tr>
</tbody>
</table>

<span class="LW_CollapsibleArea_TitleAhref"><span class="cl_CollapsibleArea_expanding LW_CollapsibleArea_Img"></span><span class="LW_CollapsibleArea_Title">Enumerations</span></span>
<a href="/en-us/library/microsoft.health.authentication.aspx#Anchor_1" class="LW_CollapsibleArea_Anchor_Img" title="Right-click to copy and share the link for this section"></a>

------------------------------------------------------------------------

<span id="enumerationToggle"></span>
<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th> </th>
<th>Enumeration</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.authentication.applicationrecordauthorizationaction.aspx">ApplicationRecordAuthorizationAction</a></td>
<td><div class="summary">
Enumeration of the application record authorization action codes.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.authentication.authenticationtokencreationstatus.aspx">AuthenticationTokenCreationStatus</a></td>
<td><div class="summary">
Provides authentication token creation status codes.
</div></td>
</tr>
</tbody>
</table>

<span>Show:</span> Inherited Protected
