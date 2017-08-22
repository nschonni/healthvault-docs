# Methods

Name|Version|Description
---|---|---
[AddApplication](/healthvault/reference/methods/addapplication)|1,2|Adds an application configuration. 
[AllocatePackageId](/healthvault/reference/methods/allocatepackageid)|1|The unique identity code (to access the package) or failure result. 
[AssociateAlternateId](/healthvault/reference/methods/associatealternateid)|1|Associates an alternate id with a person and record. 
[AuthorizeApplication](/healthvault/reference/methods/authorizeapplication)|1| 
[BeginPutBlob](/healthvault/reference/methods/beginputblob)|1|The authentication token to be supplied with a streaming put blob request. 
[BeginPutConnectPackageBlob](/healthvault/reference/methods/beginputconnectpackageblob)|1| 
[CreateAuthenticatedSessionToken](/healthvault/reference/methods/createauthenticatedsessiontoken)|1|Provides a way for clients to establish an authenticated session with Microsoft HealthVault. 
[CreateAuthenticatedSessionToken](/healthvault/reference/methods/createauthenticatedsessiontoken2)|2|Provides a way for clients to establish an authenticated session with Microsoft HealthVault. 
[CreateConnectPackage](/healthvault/reference/methods/createconnectpackage)|1|Creates a package containing a data that the user can claim using the identity code returned by this method 
[CreateConnectPackage](/healthvault/reference/methods/createconnectpackage2)|2|Creates a package containing a data that the user can claim using the identity code returned by this method 
[CreateConnectRequest](/healthvault/reference/methods/createconnectrequest)|1|Creates a connect request which will allow the user to tie their HealthVault account to the calling application once the user validates the connect request. 
[DeletePendingConnectPackage](/healthvault/reference/methods/deletependingconnectpackage)|1|Deletes the pending connect package. 
[DeletePendingConnectRequest](/healthvault/reference/methods/deletependingconnectrequest)|1|Deletes the pending connect request for the supplied external id. 
[DisassociateAlternateId](/healthvault/reference/methods/disassociatealternateid)|1|Disassociates an alternate id with a person and record. 
[GetAlternateIds](/healthvault/reference/methods/getalternateids)|1| 
[GetApplicationInfo](/healthvault/reference/methods/getapplicationinfo)|1,2|Gets the settings for the current application. 
[GetApplicationSettings](/healthvault/reference/methods/getapplicationsettings)|1|Gets the application specific settings for the person. 
[GetAuthorizedConnectRequests](/healthvault/reference/methods/getauthorizedconnectrequests)|1|Returns all found authorized connect requests associated with the calling application. 
[GetAuthorizedPeople](/healthvault/reference/methods/getauthorizedpeople)|1|Gets information about the people that are authorized for an application. 
[GetAuthorizedRecords](/healthvault/reference/methods/getauthorizedrecords)|1|Gets information about the specified health records for which the authenticated person is authorized to use with the calling application. 
[GetEventSubscriptions](/healthvault/reference/methods/geteventsubscriptions)|1|The response containing the entire collection of subscriptions for calling application. 
[GetMeaningfulUseTimelyAccessReport](/healthvault/reference/methods/getmeaningfulusetimelyaccessreport)|1|Gets the Meaningful Use Timely Access Report for an application. 
[GetMeaningfulUseVDTReport](/healthvault/reference/methods/getmeaningfulusevdtreport)|1|Gets the Meaningful Use VDT Report for an application. 
[GetPeopleForRecord](/healthvault/reference/methods/getpeopleforrecord)|1|Gets information about the people that have been authorized to a record or invited to share a record. 
[GetPersonAndRecordForAlternateId](/healthvault/reference/methods/getpersonandrecordforalternateid)|1|Gets the person and record ids associated with an alternate id. 
[GetPersonInfo](/healthvault/reference/methods/getpersoninfo)|1|Gets basic information about the authenticated person. 
[GetRecordOperations](/healthvault/reference/methods/getrecordoperations)|1|Gets all operations that have occurred on the record since a specified sequence number. 
[GetServiceDefinition](/healthvault/reference/methods/getservicedefinition)|1|This method is used to get information about Microsoft HealthVault and its related features. 
[GetServiceDefinition](/healthvault/reference/methods/getservicedefinition2)|1|This method is used to get information about Microsoft HealthVault and its related features. 
[GetThings](/healthvault/reference/methods/getthings)|1,2|Schema for the GetThings method request. 
[GetThings](/healthvault/reference/methods/getthings3)|3|Searches for things based on supplied criteria. 
[GetThingType](/healthvault/reference/methods/getthingtype)|1|Gets information about the thing types supported by the platform. 
[GetUpdatedRecordsForApplication](/healthvault/reference/methods/getupdatedrecordsforapplication)|1|Gets a list of records for an application with things that have been updated since a specified date. 
[GetUpdatedRecordsForApplication](/healthvault/reference/methods/getupdatedrecordsforapplication2)|1|The list of records and their corresponding person-ids for an application with things that have been updated since a specified date. 
[GetValidGroupMembership](/healthvault/reference/methods/getvalidgroupmembership)|1|Gets a list of valid things of type Group Membership. 
[GetVocabulary](/healthvault/reference/methods/getvocabulary)|1,2|Gets the code items associated with a vocabulary. 
[NewApplicationCreationInfo](/healthvault/reference/methods/newapplicationcreationinfo)|1|Gets information needed to authorize a new SODA application instance. 
[NewSignupCode](/healthvault/reference/methods/newsignupcode)|1|The unique signup code or failure result. 
[OverwriteThings](/healthvault/reference/methods/overwritethings)|1|Overwrites a thing even if the new data uses an older version of the thing schema. 
[OverwriteThings](/healthvault/reference/methods/overwritethings2)|2|Overwrites a thing even if the new data uses an older version of the thing schema. 
[PutThings](/healthvault/reference/methods/putthings)|1|Creates or updates one or more things. 
[PutThings](/healthvault/reference/methods/putthings2)|2|Creates or updates one or more things. 
[QueryPermissions](/healthvault/reference/methods/querypermissions)|1|Gets the permissions the authenticated person has for the specified thing type for the specified record. 
[RemoveApplicationRecordAuthorization](/healthvault/reference/methods/removeapplicationrecordauthorization)|1| 
[RemoveThings](/healthvault/reference/methods/removethings)|1|Deletes things from a record. 
[SearchVocabulary](/healthvault/reference/methods/searchvocabulary)|1|Searches a vocabulary and retrieves code items that match a given search criteria. 
[SelectInstance](/healthvault/reference/methods/selectinstance)|1|Gets the HealthVault instance that supports a specified geographic location. 
[SendInsecureMessage](/healthvault/reference/methods/sendinsecuremessage)|1|Sends an insecure email message to the specified recipients. 
[SendInsecureMessageFromApplication](/healthvault/reference/methods/sendinsecuremessagefromapplication)|1|Sends an insecure email message originating from the application to the specified recipients. 
[SetApplicationSettings](/healthvault/reference/methods/setapplicationsettings)|1|Sets the application specific settings for the person. 
[SubscribeToEvent](/healthvault/reference/methods/subscribetoevent)|1|Creates an event subscription for the calling application. 
[UnsubscribeToEvent](/healthvault/reference/methods/unsubscribetoevent)|1|Removes the subscription identified by the supplied id. 
[UpdateApplication](/healthvault/reference/methods/updateapplication)|1,2|Updates an application configuration. 
[UpdateEventSubscription](/healthvault/reference/methods/updateeventsubscription)|1|Updates an event subscription for the calling application. 
[UpdateExternalId](/healthvault/reference/methods/updateexternalid)|1|Updates the external id for a connect request.