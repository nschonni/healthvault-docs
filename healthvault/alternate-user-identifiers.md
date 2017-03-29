Alternate user identifiers
==========================

For current versions of HealthVault, offline applications must store the correspondence between the application’s concept of a user identity (typically some sort of id) and the HealthVault identity of a user (person id and record id). In many cases this is straightforward but some applications may not have a convenient place to store this information. Alternate ID support provides a way for applications to store this correlation in HealthVault.

Using alternate identifiers
---------------------------

Applications that are using PatientConnect can use the following code to create this association

```c#
void CreateNewAssociations(Guid applicationId, string healthServiceUrl)
{    
    OfflineWebApplicationConnection offlineConnection = new OfflineWebApplicationConnection(applicationId, healthServiceUrl, Guid.Empty);
    Collection<ValidatedPatientConnection> patientConnections = PatientConnection.GetValidatedConnections(offlineConnection);    
    foreach(ValidatedPatientConnection patientConnection in patientConnections)    
    {        
        OfflineWebApplicationConnection personConnection = new OfflineWebApplicationConnection(            
            applicationId,            
            healthServiceUrl,            
            patientConnection.PersonId);        
        HealthRecordAccessor accessor = new HealthRecordAccessor(            
            personConnection,            
            patientConnection.RecordId);        
        Collection<string> currentAssociatedIds = accessor.GetAlternateIds();        
        if (currentAssociatedIds.Count == 0)        
        {            
            accessor.AssociateAlternateId( patientConnection.ApplicationPatientId);        
        }    
    }
} 
```
Once the association is created, an application can easily go from an alternate ID to an accessor that can be used to perform operations on a record as following code shows.

```c#
    HealthRecordInfo GetAccessorForAlternateId(ApplicationConnection connection, string alternateId)
    {
        HealthRecordInfo info = HealthRecordInfo.GetFromAlternateId(connection, alternateId);
        return info;
    }
```

The alternate id is up to 255 characters in length and is case sensitive. The id string must be unique for a given application, though multiple alternate ids may be registered for a single record.

Applications that wish to remove the association can use HealthRecordAccessor.DisassociateAlternateId().

### Integrating with HealthVault

Connections

-   <a href="connectivity.md" id="RightRailLinkListSection_14071_12">Establishing connectivity</a>
-   <a href="web-connectivity.md" id="RightRailLinkListSection_14071_13">Web connections</a>
-   <a href="patient-connect.md" id="RightRailLinkListSection_14071_14">Patient Connect</a>
-   <a href="dopu.md" id="RightRailLinkListSection_14071_15">Drop-off-and-pick-up (DOPU)</a>
-   <a href="direct-messaging.md" id="RightRailLinkListSection_14071_16">Direct Messaging</a>
-   <a href="mobile-devices.md" id="RightRailLinkListSection_14071_17">Mobile devices (SODA)</a>
-   <a href="soda-walkthrough.md" id="RightRailLinkListSection_14071_18">SODA example</a>
-   <a href="connection-troubleshooting.md" id="RightRailLinkListSection_14071_19">Troubleshooting connections</a>

Authorization

-   <a href="authentication-and-authorization.md" id="RightRailLinkListSection_14071_7">Authentication and authorization</a>
-   <a href="offline-access.md" id="RightRailLinkListSection_14071_8">Offline access</a>
-   <a href="optional-authorization.md" id="RightRailLinkListSection_14071_9">Optional authorization</a>
-   <a href="authorization-changes.md" id="RightRailLinkListSection_14071_10">Authorization changes</a>
-   <a href="alternate-user-identifiers.md" id="RightRailLinkListSection_14071_11">Alternate user IDs</a>
-   <a href="multi-record-applications.md" id="RightRailLinkListSection_14071_20">Multi-record applications</a>

