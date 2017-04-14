---
title: Alternate user identifiers
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Apps with offline access to a user's data may want to associate the user's record with the primary key of their own database. Learn how to use AlternateIds to achieve this. 
---

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
