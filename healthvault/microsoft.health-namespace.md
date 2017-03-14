This documentation is archived and is not being maintained.

**HealthVault**

<span></span>
The members of the Microsoft.Health namespace provide general access to HealthVault services.

<span class="LW_CollapsibleArea_TitleAhref"><span class="cl_CollapsibleArea_expanding LW_CollapsibleArea_Img"></span><span class="LW_CollapsibleArea_Title">Classes</span></span>
<a href="/en-us/library/microsoft.health.aspx#Anchor_0" class="LW_CollapsibleArea_Anchor_Img" title="Right-click to copy and share the link for this section"></a>

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
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.activerecordauthorization.aspx">ActiveRecordAuthorization</a></td>
<td><div class="summary">
Provides information about a person who has access to a HealthVault record.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.anonymousconnection.aspx">AnonymousConnection</a></td>
<td><div class="summary">
Represents a connection for an application to the HealthVault service for operations that require neither user authentication nor application identifier verification.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.applicationbinaryconfiguration.aspx">ApplicationBinaryConfiguration</a></td>
<td><div class="summary">
Represents configuration data for an application which can be read from a file or stream and has an associated content type.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.applicationconnection.aspx">ApplicationConnection</a></td>
<td><div class="summary">
Base class that represents a connection of an application to the HealthVault service for either online or offline operations.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.applicationinfo.aspx">ApplicationInfo</a></td>
<td><div class="summary">
Defines the configuration for a HealthVault application.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.applicationsettings.aspx">ApplicationSettings</a></td>
<td><div class="summary">
Application specific settings for the user.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.authenticatedconnection.aspx">AuthenticatedConnection</a></td>
<td><div class="summary">
Represents an authenticated interface to the HealthVault service. Most operations performed against the service require authentication.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.authorizationrule.aspx">AuthorizationRule</a></td>
<td><div class="summary">
This class defines an authorization rule in the HealthVault service.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.authorizationsetdefinition.aspx">AuthorizationSetDefinition</a></td>
<td><div class="summary">
Defines the interface for interacting with sets of health record items for authorization purposes. This class is abstract.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.blob.aspx">Blob</a></td>
<td><div class="summary">
Represents binary data that can be associated with a person's health record.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.blobhashinfo.aspx">BlobHashInfo</a></td>
<td><div class="summary">
Represents hash information about a <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.blob.aspx">Blob</a>.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.blobsignatureitem.aspx">BlobSignatureItem</a></td>
<td><div class="summary">
Represents information about a BLOB that is part of a digital signature.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.blobstore.aspx">BlobStore</a></td>
<td><div class="summary">
A collection of the BLOBs associated with a health record item.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.blobstream.aspx">BlobStream</a></td>
<td><div class="summary">
A stream for sending and receiving binary data associated with a health record item.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.cachedserviceinfoprovider.aspx">CachedServiceInfoProvider</a></td>
<td><div class="summary">
A cached provider for service info retrieved from the HealthVault web-service.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.certificatevalidationexception.aspx">CertificateValidationException</a></td>
<td><div class="summary">
Represents the exception thrown when a failure occurs during a certificate validation.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.commonitemdata.aspx">CommonItemData</a></td>
<td><div class="summary">
Represents data that is common for all types of health record items.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.conversionfailureexception.aspx">ConversionFailureException</a></td>
<td><div class="summary">
Represents the exception thrown when a failure occurs during a conversion operation.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.culturespecificbytearraydictionary.aspx">CultureSpecificByteArrayDictionary</a></td>
<td><div class="summary">
Dictionary for storing localized byte array values.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/dd726442.aspx">CultureSpecificDictionary<span class="languageSpecificText" xmlns="http://www.w3.org/1999/xhtml"><span class="cs">&lt;</span><span class="vb">(Of </span><span class="cpp">&lt;</span><span class="nu">(</span><span class="fs">&lt;'</span></span>TValue<span class="languageSpecificText" xmlns="http://www.w3.org/1999/xhtml"><span class="cs">&gt;</span><span class="vb">)</span><span class="cpp">&gt;</span><span class="nu">)</span><span class="fs">&gt;</span></span></a></td>
<td><div class="summary">
Dictionary for storing localized values.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.culturespecificstringdictionary.aspx">CultureSpecificStringDictionary</a></td>
<td><div class="summary">
Dictionary for storing localized string values.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.culturespecificurldictionary.aspx">CultureSpecificUrlDictionary</a></td>
<td><div class="summary">
Dictionary for storing localized string values.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.daterange.aspx">DateRange</a></td>
<td><div class="summary">
Represents the range of time between two dates.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.daterangesetdefinition.aspx">DateRangeSetDefinition</a></td>
<td><div class="summary">
Defines a set of health record items for authorization purposes whose effective date falls within a specified range.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.getauthorizedpeoplesettings.aspx">GetAuthorizedPeopleSettings</a></td>
<td><div class="summary">
The settings for retrieving a set of <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.personinfo.aspx">PersonInfo</a> objects through <a href="https://msdn.microsoft.com/en-us/library/dd724612.aspx">GetAuthorizedPeople(GetAuthorizedPeopleSettings)</a>
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthapplicationconfiguration.aspx">HealthApplicationConfiguration</a></td>
<td><div class="summary">
Gives access to the configuration file for the application and exposes some of the settings directly.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthclientapplication.aspx">HealthClientApplication</a></td>
<td><div class="summary">
Represents a HealthVault client application.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthclientauthorizedconnection.aspx">HealthClientAuthorizedConnection</a></td>
<td><div class="summary">
Represents an authorized connection between a HealthVault client application and the HealthVault service.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordaccessor.aspx">HealthRecordAccessor</a></td>
<td><div class="summary">
Represents the API set used to access a health record for an individual.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordauthorizationnotpossible.aspx">HealthRecordAuthorizationNotPossible</a></td>
<td><div class="summary">
The exception representing an error while trying to log a user on to an application without a health record that meets the minimum authorization requirements for the application.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordauthorizationrequiredexception.aspx">HealthRecordAuthorizationRequiredException</a></td>
<td><div class="summary">
The exception representing an error while trying to log a user on to an application without a health record being authorized for that application.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordexporter.aspx">HealthRecordExporter</a></td>
<td><div class="summary">
Exports HealthVault record items.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordfilter.aspx">HealthRecordFilter</a></td>
<td><div class="summary">
Defines a filter for use with <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordsearcher.aspx">HealthRecordSearcher</a> searches.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordinfo.aspx">HealthRecordInfo</a></td>
<td><div class="summary">
Represents the APIs and information about a health record for an individual.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditem.aspx">HealthRecordItem</a></td>
<td><div class="summary">
Represents a health record item.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemcollection.aspx">HealthRecordItemCollection</a></td>
<td><div class="summary">
Defines a group of results that gets returned from the <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordsearcher.aspx">HealthRecordSearcher</a>.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemdatatable.aspx">HealthRecordItemDataTable</a></td>
<td><div class="summary">
Represents a data table that populates itself with HealthVault data.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemdeserializationexception.aspx">HealthRecordItemDeserializationException</a></td>
<td><div class="summary">
Represents the exception thrown when the deserialization of a type-specific health record item fails.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemextension.aspx">HealthRecordItemExtension</a></td>
<td><div class="summary">
Represents an extension to a health record item.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemkey.aspx">HealthRecordItemKey</a></td>
<td><div class="summary">
Uniquely identifies a health record item in the system.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemrelationship.aspx">HealthRecordItemRelationship</a></td>
<td><div class="summary">
Represents a loose relationship between health record item instances.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemserializationexception.aspx">HealthRecordItemSerializationException</a></td>
<td><div class="summary">
Represents the exception thrown when the serialization of a type-specific health record item fails or if a mandatory element in the health record item is missing.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemsignature.aspx">HealthRecordItemSignature</a></td>
<td><div class="summary">
Represents a digital signature of the HealthRecordItem.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemtypedefinition.aspx">HealthRecordItemTypeDefinition</a></td>
<td><div class="summary">
Describes the schema and structure of a health record item type.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemtypepermission.aspx">HealthRecordItemTypePermission</a></td>
<td><div class="summary">
Provides online and offline access permissions to persons for a health record item type (<a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemtypedefinition.aspx">HealthRecordItemTypeDefinition</a>) in a health record in the context of an application.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemtypeversioninfo.aspx">HealthRecordItemTypeVersionInfo</a></td>
<td><div class="summary">
Represents the version information for a health record item type.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordpermissions.aspx">HealthRecordPermissions</a></td>
<td><div class="summary">
Provides the permission inforamtion that the current authenticated person has for the record when using the current application.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordreauthorizationrequired.aspx">HealthRecordReauthorizationRequired</a></td>
<td><div class="summary">
The exception representing an error while trying to log a user on to an application that has an authorized record which no longer meets the minimum requirements for that application or the application has changed its minimum authorization requirements.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordsearcher.aspx">HealthRecordSearcher</a></td>
<td><div class="summary">
Searches for health record items in HealthVault records.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordupdateinfo.aspx">HealthRecordUpdateInfo</a></td>
<td><div class="summary">
Encapsulates information about an updated record and the person associated with that record.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordview.aspx">HealthRecordView</a></td>
<td><div class="summary">
Defines a result view for use with <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordsearcher.aspx">HealthRecordSearcher</a> searches.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceaccessdeniedexception.aspx">HealthServiceAccessDeniedException</a></td>
<td><div class="summary">
The exception representing a HealthVault error code of <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicestatuscode.aspx">AccessDenied</a>
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceapplicationduplicatecredentialexception.aspx">HealthServiceApplicationDuplicateCredentialException</a></td>
<td><div class="summary">
The exception representing a HealthVault error code of <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicestatuscode.aspx">DuplicateCredentialFound</a>.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceassemblyinfo.aspx">HealthServiceAssemblyInfo</a></td>
<td><div class="summary">
Provides information about the HealthVault assemblies.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceaudit.aspx">HealthServiceAudit</a></td>
<td><div class="summary">
Represents an audit trail of creations or updates to information in the HealthVault service.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceauthenticatedsessiontokenexpiredexception.aspx">HealthServiceAuthenticatedSessionTokenExpiredException</a></td>
<td><div class="summary">
The exception representing a HealthVault error code of <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicestatuscode.aspx">AuthenticatedSessionTokenExpired</a>.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceconnection.aspx">HealthServiceConnection</a></td>
<td><div class="summary">
Simplifies access to the HealthVault service. This class is abstract.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicecredentialtokenexpiredexception.aspx">HealthServiceCredentialTokenExpiredException</a></td>
<td><div class="summary">
The exception representing a HealthVault error code of <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicestatuscode.aspx">CredentialTokenExpired</a>.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceemailnotvalidatedexception.aspx">HealthServiceEmailNotValidatedException</a></td>
<td><div class="summary">
The exception representing a HealthVault error code of <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicestatuscode.aspx">EmailNotValidated</a>.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceerrorcontext.aspx">HealthServiceErrorContext</a></td>
<td><div class="summary">
Contains the error context of the service when the error occurred.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceexception.aspx">HealthServiceException</a></td>
<td><div class="summary">
Represents the base class for all HealthVault exceptions thrown by the SDK.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceinstance.aspx">HealthServiceInstance</a></td>
<td><div class="summary">
Provides information about a single deployment of HealthVault services and health record storage.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceinvalidapplicationauthorizationexception.aspx">HealthServiceInvalidApplicationAuthorizationException</a></td>
<td><div class="summary">
The exception representing a HealthVault error code of <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicestatuscode.aspx">InvalidApplicationAuthorization</a>.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceinvalidpersonexception.aspx">HealthServiceInvalidPersonException</a></td>
<td><div class="summary">
The exception representing a HealthVault error code of <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicestatuscode.aspx">InvalidPerson</a>.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceinvalidrecordexception.aspx">HealthServiceInvalidRecordException</a></td>
<td><div class="summary">
The exception representing a HealthVault error code of <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicestatuscode.aspx">InvalidRecord</a>.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicelocation.aspx">HealthServiceLocation</a></td>
<td><div class="summary">
Provides methods that retrieve URLs of important locations for the HealthVault service.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicemailaddressmalformedexception.aspx">HealthServiceMailAddressMalformedException</a></td>
<td><div class="summary">
The exception representing a HealthVault error code of <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicestatuscode.aspx">MailAddressMalformed</a>.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicemeaningfuluseinfo.aspx">HealthServiceMeaningfulUseInfo</a></td>
<td><div class="summary">
Provides configuration information for Meaningful Use features.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicemethodinfo.aspx">HealthServiceMethodInfo</a></td>
<td><div class="summary">
Provides information about the HealthVault methods.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicemethodversioninfo.aspx">HealthServiceMethodVersionInfo</a></td>
<td><div class="summary">
Provides information about the supported versions of a HealthVault service web method.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceotherdatasizelimitexceededexception.aspx">HealthServiceOtherDataSizeLimitExceededException</a></td>
<td><div class="summary">
The exception representing a HealthVault error code of <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicestatuscode.aspx">OtherDataItemSizeLimitExceeded</a>
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicepasswordnotstrongexception.aspx">HealthServicePasswordNotStrongException</a></td>
<td><div class="summary">
The exception representing a HealthVault error code of <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicestatuscode.aspx">PasswordNotStrong</a>.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicerecordquotaexceededexception.aspx">HealthServiceRecordQuotaExceededException</a></td>
<td><div class="summary">
The exception representing a HealthVault error code of <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicestatuscode.aspx">RecordQuotaExceeded</a>.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicerequest.aspx">HealthServiceRequest</a></td>
<td><div class="summary">
Represents an individual request to a HealthVault service. The class wraps up the XML generation and web request/response.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicerequestcancelledexception.aspx">HealthServiceRequestCancelledException</a></td>
<td><div class="summary">
The exception indicating that the application requested the HealthVault request be cancelled.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceresponsedata.aspx">HealthServiceResponseData</a></td>
<td><div class="summary">
Contains the response information from the HealthVault service after processing a request.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceresponseerror.aspx">HealthServiceResponseError</a></td>
<td><div class="summary">
Contains error information for a response that has a code other than <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicestatuscode.aspx">Ok</a>.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceshellinfo.aspx">HealthServiceShellInfo</a></td>
<td><div class="summary">
Provides information about the HealthVault Shell.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceshellredirecttoken.aspx">HealthServiceShellRedirectToken</a></td>
<td><div class="summary">
Represents the redirect information that can be supplied along with the Shell redirect URL to access specific functionalities in the Shell.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthvaultplatform.aspx">HealthVaultPlatform</a></td>
<td><div class="summary">
Provides low-level access to the HealthVault service.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.inactiverecordauthorization.aspx">InactiveRecordAuthorization</a></td>
<td><div class="summary">
Provides information about a person who has not yet accepted an invitation to share a HealthVault record.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.incompatibleversionexception.aspx">IncompatibleVersionException</a></td>
<td><div class="summary">
Indicates version incompatibility.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.invalidconfigurationexception.aspx">InvalidConfigurationException</a></td>
<td><div class="summary">
Represents the exception thrown when a configuration file has invalid values.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.itemtypedatacolumn.aspx">ItemTypeDataColumn</a></td>
<td><div class="summary">
Describes the schema of a column of health record item data when transformed by the single-type item transform or multi-type item transform.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.itemtypemanager.aspx">ItemTypeManager</a></td>
<td><div class="summary">
Manages the mapping of a health record item type ID to a class representing the type-specific data for an item and the method used to deserialize it.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.location.aspx">Location</a></td>
<td><div class="summary">
A location defined by country and state/province ISO 3166 codes.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.locationcollection.aspx">LocationCollection</a></td>
<td><div class="summary">
A location defined by country and state/province ISO 3166 codes.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.mailrecipient.aspx">MailRecipient</a></td>
<td><div class="summary">
Represents an email address that can be used when calling SendInsecureMessageFromApplication.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.otheritemdata.aspx">OtherItemData</a></td>
<td><div class="summary">
Represents data, typically binary data, that extends the XML of the health record item.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.personinfo.aspx">PersonInfo</a></td>
<td><div class="summary">
Provides information about a person's HealthVault account.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.recordauthorization.aspx">RecordAuthorization</a></td>
<td><div class="summary">
Provides information about a person who has access or who has been invited to share a HealthVault record.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.serviceinfo.aspx">ServiceInfo</a></td>
<td><div class="summary">
Provides information about the HealthVault service to which you are connected.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.shellredirectparameters.aspx">ShellRedirectParameters</a></td>
<td><div class="summary">
Parameters for constructing a HealthVault Shell redirect URL.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.signaturefailureexception.aspx">SignatureFailureException</a></td>
<td><div class="summary">
Represents the exception thrown when a failure occurs during a signature operation.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.typehandleralreadyregisteredexception.aspx">TypeHandlerAlreadyRegisteredException</a></td>
<td><div class="summary">
Indicates that a health record item type handler has already been registered for the specified item type.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.typeidsetdefinition.aspx">TypeIdSetDefinition</a></td>
<td><div class="summary">
Defines a set of health record items of the specified type for authorization purposes.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.usertagsetdefinition.aspx">UserTagSetDefinition</a></td>
<td><strong>Obsolete.</strong>
<div class="summary">
Defines a set of health record items for authorization purposes whose user tags are within a specified set.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.vocabulary.aspx">Vocabulary</a></td>
<td><div class="summary">
Vocabulary list
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.vocabularyauthorization.aspx">VocabularyAuthorization</a></td>
<td><div class="summary">
This class defines an authorization to use a single <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.vocabulary.aspx">Vocabulary</a> or a family of Vocabularies in HealthVault.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.vocabularyitem.aspx">VocabularyItem</a></td>
<td><div class="summary">
Represents an item in the HealthVault <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.vocabularyitem.vocabulary.aspx">Vocabulary</a>.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.vocabularyitemcollection.aspx">VocabularyItemCollection</a></td>
<td><div class="summary">
A collection of vocabulary items belonging to a particular vocabulary.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.vocabularyitemdataconverter.aspx">VocabularyItemDataConverter</a></td>
<td><div class="summary">
Represents the converter class that converts values between different vocabulary items.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.vocabularykey.aspx">VocabularyKey</a></td>
<td><div class="summary">
Represents a key for identifying a Vocabulary in the HealthLexicon.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.vocabularysearchhelper.aspx">VocabularySearchHelper</a></td>
<td><div class="summary">
Represents an API set to create URLs that will handle HTTP GET queries for searches on a specified vocabulary.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public class" alt="Public class" id="pubclass" class="cl_IC29808" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.vocabularysearchparameters.aspx">VocabularySearchParameters</a></td>
<td><div class="summary">
The set of search parameters are used with the Vocabulary Search feature to specify the vocabulary etc.
</div></td>
</tr>
</tbody>
</table>

<span class="LW_CollapsibleArea_TitleAhref"><span class="cl_CollapsibleArea_expanding LW_CollapsibleArea_Img"></span><span class="LW_CollapsibleArea_Title">Interfaces</span></span>
<a href="/en-us/library/microsoft.health.aspx#Anchor_1" class="LW_CollapsibleArea_Anchor_Img" title="Right-click to copy and share the link for this section"></a>

------------------------------------------------------------------------

<span id="interfaceToggle"></span>
<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th> </th>
<th>Interface</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public interface" alt="Public interface" id="pubinterface" class="cl_IC141795" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.imarshallable.aspx">IMarshallable</a></td>
<td><div class="summary">
Defines the HealthVault interface used to perform versioned serialization of objects.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public interface" alt="Public interface" id="pubinterface" class="cl_IC141795" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.iserviceinfoprovider.aspx">IServiceInfoProvider</a></td>
<td><div class="summary">
Exposes functionality to retrieve service information from the HealthVault web-service.
</div></td>
</tr>
</tbody>
</table>

<span class="LW_CollapsibleArea_TitleAhref"><span class="cl_CollapsibleArea_expanding LW_CollapsibleArea_Img"></span><span class="LW_CollapsibleArea_Title">Delegates</span></span>
<a href="/en-us/library/microsoft.health.aspx#Anchor_2" class="LW_CollapsibleArea_Anchor_Img" title="Right-click to copy and share the link for this section"></a>

------------------------------------------------------------------------

<span id="delegateToggle"></span>
<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th> </th>
<th>Delegate</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public delegate" alt="Public delegate" id="pubdelegate" class="cl_IC11304" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordclientfilterhandler.aspx">HealthRecordClientFilterHandler</a></td>
<td><div class="summary">
Defines the method signature for client side filtering of HealthRecordItems.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public delegate" alt="Public delegate" id="pubdelegate" class="cl_IC11304" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicerequest.webresponsestreamhandler.aspx">HealthServiceRequest<span class="languageSpecificText" xmlns="http://www.w3.org/1999/xhtml"><span class="cs">.</span><span class="vb">.</span><span class="cpp">::</span><span class="nu">.</span><span class="fs">.</span></span>WebResponseStreamHandler</a></td>
<td><div class="summary">
Defines a delegate for handling the response stream for a request.
</div></td>
</tr>
</tbody>
</table>

<span class="LW_CollapsibleArea_TitleAhref"><span class="cl_CollapsibleArea_expanding LW_CollapsibleArea_Img"></span><span class="LW_CollapsibleArea_Title">Enumerations</span></span>
<a href="/en-us/library/microsoft.health.aspx#Anchor_3" class="LW_CollapsibleArea_Anchor_Img" title="Right-click to copy and share the link for this section"></a>

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
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.applicationoptions.aspx">ApplicationOptions</a></td>
<td><div class="summary">
Optional configuration settings for HealthVault applications.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.authorizationruledisplayflags.aspx">AuthorizationRuleDisplayFlags</a></td>
<td><div class="summary">
A class representing the display strategies for optional rules
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.authorizedrecordstate.aspx">AuthorizedRecordState</a></td>
<td><div class="summary">
Defines the state of a HealthVault record authorization.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.blobformat.aspx">BlobFormat</a></td>
<td><div class="summary">
Determines how BLOB information will be returned when fetching a <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditem.aspx">HealthRecordItem</a>.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.blobhashalgorithm.aspx">BlobHashAlgorithm</a></td>
<td><div class="summary">
Defines the set of supported blob hash algorithms.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.certificatetype.aspx">CertificateType</a></td>
<td><div class="summary">
Supported certificate types.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordauthorizationstatus.aspx">HealthRecordAuthorizationStatus</a></td>
<td><div class="summary">
The record's current authorization status.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemdatatableview.aspx">HealthRecordItemDataTableView</a></td>
<td><div class="summary">
Defines the possible views for the <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemdatatable.aspx">HealthRecordItemDataTable</a>.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemflags.aspx">HealthRecordItemFlags</a></td>
<td><div class="summary">
Represents access restrictions for a <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditem.aspx">HealthRecordItem</a>.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditempermissions.aspx">HealthRecordItemPermissions</a></td>
<td><div class="summary">
Provides values that indicate the rights associated with access to a health record item.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemsections.aspx">HealthRecordItemSections</a></td>
<td><div class="summary">
The section that will be or were retrieved when accessing a <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditem.aspx">HealthRecordItem</a>.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemsignaturemethod.aspx">HealthRecordItemSignatureMethod</a></td>
<td><div class="summary">
Defines the HealthRecordItem digital signature methods.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemstate.aspx">HealthRecordItemState</a></td>
<td><div class="summary">
Represents the state of the <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditem.aspx">HealthRecordItem</a>.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemstates.aspx">HealthRecordItemStates</a></td>
<td><div class="summary">
The states of the health record item to search for.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecorditemtypesections.aspx">HealthRecordItemTypeSections</a></td>
<td><div class="summary">
Enumeration used to specify the sections of health record item type definition that should be returned.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthrecordstate.aspx">HealthRecordState</a></td>
<td><div class="summary">
The state of a record.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceauditaccessavenue.aspx">HealthServiceAuditAccessAvenue</a></td>
<td><div class="summary">
The avenue used to perform the operation.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthserviceauditaction.aspx">HealthServiceAuditAction</a></td>
<td><div class="summary">
Indicates the operation that was performed.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthservicestatuscode.aspx">HealthServiceStatusCode</a></td>
<td><div class="summary">
Status codes for various conditions occurring in the SDK. Contains status codes returned by HealthVault methods as Response.Code and codes to represent errors in the SDK itself.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.healthvaultmethods.aspx">HealthVaultMethods</a></td>
<td><div class="summary">
The public HealthVault methods that are available for applications to call.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.itemretrievalintentions.aspx">ItemRetrievalIntentions</a></td>
<td><div class="summary">
The usage intentions for items being retrieved.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.relationshiptype.aspx">RelationshipType</a></td>
<td><div class="summary">
Defines the interpersonal relationship between the authorized person and the person to whom the record belongs.
</div></td>
</tr>
<tr class="odd">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.serviceinfosections.aspx">ServiceInfoSections</a></td>
<td><div class="summary">
Represents the categories of information that can be specified when creating a <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.serviceinfo.aspx">ServiceInfo</a> object via <a href="https://msdn.microsoft.com/en-us/library/dn268998.aspx">GetServiceDefinition(HealthServiceConnection, ServiceInfoSections)</a> or <a href="https://msdn.microsoft.com/en-us/library/dn269040.aspx">GetServiceDefinition(HealthServiceConnection, ServiceInfoSections, DateTime)</a>. If any categories are specified, only the information corresponding to those categories will be filled out in the <a href="https://msdn.microsoft.com/en-us/library/microsoft.health.serviceinfo.aspx">ServiceInfo</a> object; otherwise, all information will be filled out.
</div></td>
</tr>
<tr class="even">
<td><img src="https://i-msdn.sec.s-msft.com/areas/global/content/clear.gif" title="Public enumeration" alt="Public enumeration" id="pubenumeration" class="cl_IC134134" /></td>
<td><a href="https://msdn.microsoft.com/en-us/library/microsoft.health.vocabularysearchtype.aspx">VocabularySearchType</a></td>
<td><div class="summary">
Defines the types of search operations that can be performed on HealthVault vocabularies.
</div></td>
</tr>
</tbody>
</table>

<span>Show:</span> Inherited Protected
