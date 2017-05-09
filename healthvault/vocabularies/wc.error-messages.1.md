---
uid: HV_c3064bfa-6ab2-4a03-830a-b421b234a674
title: error-messages
---

# error-messages

## Overview

Property|Value
---|--- 
Name|error-messages 
Family|wc 
Version|1

## Examples

ID|Name
---|--- 
CreateAuthTokensAppCannotFederate|The application is not permitted to perform federation. 
CreateAuthTokensAppIdMismatch|The authentication token does not match the invoking application id. 
RxSearchUnexpectedErrorSoundex|An unexpected error occurred while using the soundex on the UMLS database. 
RxSearchUnexpectedError|An unexpected error occurred while reading from the UMLS database. 
NYI|Not yet implemented. 
VocabularyItemNotFound|The vocabulary item could not be found for the specified culture. 
AppMethodAccessIsDenied|The application does not have permission to call the specified method. 
AppMethodBadMethodMask|The application method mask contains invalid methods. 
PersonMethodAccessIsDenied|The person does not have permission to call the specified method. 
InternalError|An unexpected error occurred while processing the request. 
CredentialAlreadyExists|An account with this name already exists. 
SetPersonStateEmptyPersonId|The state of person account cannot be set for a person with health ID '00000000-0000-0000-0000-000000000000'. 
PasswordNotStrong|The password does not meet the complexity requirements. 
ParentGroupNotFound|The parent group identifier could not be found. 
GroupIdNotValid|The group identifier cannot be '00000000-0000-0000-0000-000000000000'. 
ParentGroupIdNotValid|The parent group identifier cannot be '00000000-0000-0000-0000-000000000000'. 
GroupNotFound|The group could not be found. 
GroupAlreadyHasParent|A group can only be the member of one group. The specified group is already a member of a group. 
GroupMembershipCycle|The person or group is already a member of the group either directly or through membership in another group. 
GroupMemberPersonNotFound|The person could not be found to be added as a member to the group. 
GetAppSearchFilterEmpty|Either a search string or application identifier must be provided. 
AppAuthNotRequired|Authorization is not required by this application. 
InvalidRecordName|The record name cannot be null or empty. 
RecordAlreadyAuthorizedForApp|The record has already been authorized for the application. 
RecordAlreadyAuthorizedForPerson|The record has already been authorized for the person. 
RecordNotFound|The record could not be found. 
InvalidPersonStateParameter|The specified person state is not a supported person state. 
AuthenticationTokenParseError|The authentication token is not in the proper format. 
AuthenticatedSessionTokenExpired|The authenticated session token has expired. 
CredentialTokenExpired|The credential token has expired. 
AccessIsDenied|Access is denied. 
CacheServerWriteBackFailed|Failed to write back to the cache server at the end of a request. 
CacheInitRecordSessionUnexpectedResults|Unexpected results getting write lock and clearing record session. Acquire Write Lock Result: {0}. Get Group Result: {1}. Clear Group Result: {2}. 
CacheInitRecordSessionFailed|An error occurred initializing the record session from the cache server. 
ThingNotFound|The thing could not be found. 
VersionStampMissing|The version stamp was not specified. 
VersionStampMismatch|The version stamp did not match the current thing version. To update an existing instance, you must first get the instance, modify the data, and then call HealthVault to update. 
SingletonVersionStampMissing|The item specified is of a singleton type for which an instance already exists. To update the existing instance, first get the instance, modify the data, and then call HealthVault to update. 
SigValidationFailedInvalidDigestMethod|The signature of the request could not be validated. The digest method is not supported. 
SigValidationFailedInvalidSignMethod|The signature of the request could not be validated. The signature method is not supported. 
SigValidationFailedPublicKeyNotFound|The signature of the request could not be validated. The public key for the application could not be found. 
SigValidationFailedMissingThumbprint|The signature of the request could not be validated. The public key thumbprint is missing. 
SigValidationFailedSigNotValid|The signature of the request does not match the request parameters. 
AppNotFound|The application could not be found. 
AccountNotActive|The account is not active. 
AppAuthorizationNotFound|The account is not authorized to use the specified application. 
AppAcceptNotFound|The application requires that an End-user License Agreement be accepted before using the application. 
FederatingCredentialAppIdMismatch|The application id in the federating credential token does not match the application id of the requesting application. 
FederatingCredentialAppCannotFederate|The requesting application cannot federate. 
FederatingCredentialFederatedTokenExpired|The federating credential token is expired. 
PersonNotFound|The person could not be found. 
OQBadMethod|The method used for the open query is not allowed. 
OQNoMethod|The method to be used for the open query is not specified. 
BadTransform|The transformation file or fragment specified was invalid. 
InvalidRequestFormat|The XML request format is invalid. 
InvalidMethodRequestFormat|The XML request format does not match the format required by the method. 
MissingMandatoryParameter|One or more mandatory parameters were not specified. 
AddAppMissingId|The application identifier must be specified. 
AddAppMissingName|The application name must be specified. 
AddAppMissingPublicKey|The application public key must be specified. 
AddAppMissingAuth|The application authorization must be specified. 
AddAppMissingMethodAuth|The application method authorization must be specified. 
AddGroupMemberIdEmpty|The group identifier cannot be '00000000-0000-0000-0000-000000000000'. 
AddGroupMemberMemberIdEmpty|The group member identifier cannot be '00000000-0000-0000-0000-000000000000'. 
AddPermissionPGIDMissing|The target person or group identifier must be specified. 
AuthorizeRecordRemoveLastCustodian|The last record custodian cannot be removed. 
AuthorizeRecordPersonIdEmpty|The person identifier cannot be '00000000-0000-0000-0000-000000000000'. 
AuthorizeRecordRecordIdEmpty|The record identifier cannot be '00000000-0000-0000-0000-000000000000'. 
InvalidCredType|The specified credential type is invalid. 
GroupAlreadyExists|The specified group already exists. 
CreateAccountLoginMissing|The login name must be specified to create an account. 
CreateAccountPasswordMissing|The password must be specified to create an account. 
CreateAccountNameMissing|The account name must be specified to create an account. 
CreateAccountEmailMissing|The contact email address must be specified to create an account. 
GetAuthorizationsTargetIdMissing|The target identifier must be specified. 
InvalidRecordState|The operation cannot be performed on the specified record because it is not active. 
GetThingsTooManyGroupsInQuery|The number of groups specified exceeds the maximum limit. 
GetThingsFilterMissing|At least one valid filter must be specified. 
InvalidThingId|The unique identifier '{0}' is not a valid thing identifier. 
GetThingsFilterChildMissing|Each filter must contain at least one valid filter clause. 
GetThingsInvalidFilterElement|One or more of the filter clauses is invalid. 
PutThingsMultipleDataXml|More than one 'data-xml' element provided. 
PutThingsDataXmlMissing|The 'data-xml' element is missing for a new thing. 
PutThingsInvalidParameter|Invalid PutThings parameter specified: '{0}'. 
PutThingsIdSpecifiedForNewThing|The 'thing-id' or 'version-stamp' was specified for a new thing. 
PutThingsDuplicateThingIds|An attempt was made to update the same thing more than once in one PutThings call. 
InvalidClientThingId|The specified client thing id is invalid. 
NoInputProvided|The {0} method input parameters are not specified or missing. 
CodeSetNotFound|A matching code-set could not be found. 
VocabularyNotFound|A matching vocabulary could not be found. 
RemoveGroupMemberMemberIdEmpty|The member identifier must be specified. 
SendInsecureMessageRecordIdEmpty|The record identifier must be specified. 
SetPasswordExistingInvalid|The existing password could not be validated. 
RecordIdRequired|The record-id element of the request is required for this method. 
RecordCannotBeUpdated|The record cannot be updated. 
RecordCannotBeUpdatedToState|The record cannot be updated to the specified state. 
EmailNotValidated|The email address must be validated to send the person a message. 
EmailAddressFormatError|The email address is not properly formatted. 
DomainNameNotSet|The domain name for the application has not been set. 
SetContactInfoFailed|The contact information for {0} could not be set. 
MessageNotSent|The message could not be sent. 
ThingTypeIdEmpty|The unique identifier for the thing type cannot be '00000000-0000-0000-0000-000000000000'. 
ThingTypeNotFound|The specified thing type '{0}' could not be found. 
ThingTypeMismatch|The thing type specified in the update '{0}', does not match the thing type for the existing instance. 
ThingTypeVersionDemotion|The '{0}' data type has been versioned by HealthVault. The application cannot save the data because the existing instance of this data uses version {1} of the '{0}' data type whereas the application uses version {2}. 
ThingTypeUncreatable|New things of this type cannot be created. 
ThingTypeImmutable|The thing type is immutable. 
ResultTransformFailed|The server was unable to perform the specified transform on the result. 
TransformNotFound|The specified transform was not found. 
PersonIdNotFound|The specified unique identifier [{0}] for the person cannot be found. 
PersonOrGroupIdNotFound|The specified unique identifier [{0}] for the person or group cannot be found. 
RecordIdNotFound|The specified unique identifier [{0}] for the record cannot be found. 
ApplicationSpecificRecordIdNotFound|The application specified record id for the record {0} and app {1} cannot be found. 
InvalidPersonId|The unique identifier for the person cannot be '00000000-0000-0000-0000-000000000000'. 
InvalidRecordId|The unique identifier for the record cannot be '00000000-0000-0000-0000-000000000000'. 
InvalidAppId|The unique identifier for the application cannot be '00000000-0000-0000-0000-000000000000'. 
InvalidApplication|No active application with the specified application id exists. 
InvalidRelationshipType|{0} is an invalid relationship type. 
RecordAlreadyAuthorized|The record is already validated for {0}. 
MethodRequiresAppropriateAuthentication|The requested authentication level is not supported for this method. 
MethodRequiresAuthToken|The authentication token element of the request is required for this method. 
OfflineMethodInvocationNotAllowed|This method cannot be invoked when the person is offline. 
EmptyValidationToken|The validation token cannot be '00000000-0000-0000-0000-000000000000'. 
InvalidValidationToken|The validation token is invalid. 
RequestTimedOut|The request has reached its time to live and is now expired. 
CreatePromotionEmailMissing|The contact email address must be specified to create a promotion token. 
CreatePromotionSponsorMissing|The sponsor email address must be specified to create a promotion token. 
InvalidRecordAuthorizationToken|The record authorization token is invalid. 
ExpiredRecordAuthorizationToken|The record authorization token has expired. 
InvalidPromotionToken|The promotion code is invalid. 
EmailAddressNotAuthorizedForRecord|The email address is not authorized for the record. 
PersonNotAuthorizedForRecord|The person is not authorized for the record. 
RecordAuthorizationDoesNotExist|The person has not authorized the application for the record. 
AssociateCredentialLoginMissing|The login name must be specified to associate the new credential. 
AssociateCredentialPasswordMissing|The password must be specified to associate the new credential. 
AssociateCredentialUserAuthenticationFailed|There is a username and password mismatch for the primary credential. 
AssociateCredentialPersonIdMismatch|The target person ID is not the same as the logged in person ID. 
GrantAuthzExceedsDefault|Authorization to be granted cannot exceed default authorization. 
InvalidGetApplicationParams|Either a (partial) name or at least 1 application identifier must be provided. 
MissingSharedSecret|The credential did not supply a shared secret as part of the credential request. 
GetThingsXPathFilterContainsRecursiveChars|The filter contains an XPath clause that contains recursive directives. Only simple relative or absolute paths are allowed. Most XPath filters should start with '/thing/data-xml' followed by the type specific information you are looking for. 
CannotDeleteSingletonThing|The thing type of this thing is singleton and hence it cannot be deleted. 
RequestSizeLimitExceeded|The request has exceeded maximum allowed request size. 
ResponseSizeLimitExceeded|The response has exceeded maximum allowed size. 
BogusHttpRequest|A malformed http request has been supplied. 
DateMinGreaterThanDateMax|The minimum date must be less than the maximum date. 
UserTagsEmpty|At least one user tag must be specified. 
CardSpaceMissingTokenEncryptionMethod|Cannot find token EncryptedMethod. 
CardSpaceMissingKeyEncryptionMethod|Cannot find key EncryptedMethod. 
CardSpaceMissingKeyIdentifier|Cannot find Key Identifier. 
CardSpaceMissingSymmetricKey|Cannot find symmetric key. 
CardSpaceMissingEncryptedSecurityToken|Cannot find encrypted security token. 
CardSpaceCannotDetermineSymmetricAlgorithm|Could not determine Symmetric Algorithm. 
CardSpaceMissingValueTypeAttribute|Cannot find ValueType attribute. 
CardSpaceUnsupportedValueTypeAttribute|The ValueType in KeyInfo is unsupported. 
InvalidPublicKey|Public key #{0} is invalid. 
OQRecordIdAndNoOfflinePerson|Open query execution needs a valid offline person id. A record id is present and only the application is authenticated. 
PersonForCredIsDeletedOrSuspended|A person corresponding to this credential exists and is currently suspended or deleted. 
InvalidDateTime|The DateTime parameter was out of bounds. 
RecordQuotaExceeded|The current thing will make the record exceed its size quota. 
UnknownMethodVersion|Unknown method version: {0} {1}. 
MethodTypeNotFound|Type not found for method version: {0} {1}. 
ThingSigValidationFailedSigNotValid|The signature of the thing does not match the content. 
ThingSigValidationFailedElementMissing|The required signature element {0} is missing. 
ThingSigValidationFailedAttributeNotSupported|The required attribute {0} of element {1} is missing or the value is not supported. 
ThingSigValidationFailedXmlException|An XmlException occurred while validating the signature. {0}. 
ThingSigValidationBlobHashMismatch|A blob hash mismatch was detected while validating the signature. The blob hash for blob with name {0} does not match the blob hash in the blob signature info. blob hash = {1}. blob signature info blob hash = {2}. 
ThingSigningFailed|The thing could not be signed. 
ThingCertValidationFailedCertNotValid|The certificate in the signature of the thing cannot be validated. 
ThingCertValidationFailedCertMissing|Could not find an X509 certificate in the signature of the thing. There must be exactly one key info clause with exactly one X509 certificate. 
InvalidVerificationQuestion|The verification question cannot be empty or blank. 
InvalidVerificationAnswer|The verification answer cannot be empty or blank. 
InvalidIdentityCode|The identity code was not correct. 
RetryLimitExceeded|Retry limit exceeded. 
ValidateConnectRequestInvalidParameter|Invalid ValidateConnectRequest parameter specified: '{0}'. 
CultureNotSupported|The culture specified in the request header is not supported. 
MissingAuthTokenOrOfflinePerson|This method requires that either the user authentication token or an offline person identifier be specified in the request. 
FileExtensionNotSupported|The specified file extension '{0}' is not supported. 
FileNameNotSupported|The specified file name '{0}' is not supported. 
BaseAuthExceedsMax|The base authorization exceeds the allowed maximum. 
ConnectRequestPersonIdMismatch|The supplied person id does not match the person id that answered the verification question. 
AppNameRequired|You must provide a default application name. 
PrivacyStatementAndTermsOfUseRequired|You must provide either the action url or both the privacy statement and the terms of use. 
ConnectRequestAlreadyExists|The connect request already exists, and cannot be recreated. 
MissingLocalizedName|The localized name is missing for thing type '{0}' and token ID '{1}'. 
CannotRetrieveBaseThingTypeSchema|For namespace '{0}', you cannot retrieve the schema set for the base thing type '{1}'. 
InvalidSpecialAccountType|The requested special account type is invalid. 
InvalidTypeId|The type identifier cannot be '00000000-0000-0000-0000-000000000000'. 
UnknownTypeId|The specified type identifier is not known. 
InvalidStringTokenId|String token identifiers may not be '00000000-0000-0000-0000-000000000000'. 
ThingTypeAlreadyExists|A type with the specified identifier already exists. '{0}' 
InvalidConnectPackageContents|The package's data-other cannot be empty. 
InvalidSaltLength|The salt must be at least {0} bytes. 
UnsupportedKeyLengthForAlgo|The key length for the {0} algorithm is invalid. Please ensure the key length is {1} 
EncryptionAlgorithmRequired|The package contents must be encrypted. Please specify an encryption algorithm. 
ConnectRequestAlreadyAuthorized|The connect request has already been authorized and cannot be re-authorized. 
CredentialNotFound|The requested credential was not found. 
CannotRemoveLastCredential|Cannot remove the last credential associated with an account. 
NullCacheKeySpecified|The cache key specified is null. 
NullCacheKeyAndOrObjectSpecified|The cache key and/or the object specified is null. 
NullCacheKeyOrNullObjectOrInvalidObjectSpecified|The cache key is null, or the object specified is null or invalid. 
TypeNotSupportedByDbCache|The type '{0}' is not supported for use by the database cache. 
FailedToAddItemToDbCache|Failed to add the specified item to the database cache. 
FailedToRemoveItemFromDbCache|Failed to remove the specified item from the database cache. 
FailedToUpdateItemInDbCache|Failed to update the specified item in the database cache. 
CredentialsLimitExceeded|The maximum number of allowed credentials has been exceeded. 
KeyAlreadyExistsInTheCollection|The item identified by key '{0}' already exists in the cache. 
InvalidMethodName|The specified method name is invalid. {0} 
InvalidStoreAccountInstance|Invalid StoreAccount instance specified. 
InvalidStoreContainerInstance|Invalid StoreContainer instance specified. 
InvalidHttpWebResponse|Invalid HttpWebResponse instance specified. 
InvalidWebException|Invalid WebException instance specified. 
InvalidStoreMetadataInstance|Invalid StoreMetadata instance specified. 
InvalidStoreItemInstance|Invalid StoreItem instance specified. 
InvalidStoreItemHeaderInstance|Invalid StoreItemHeader instance specified. 
InvalidUriInstance|Invalid Uri instance specified. 
InvalidRedDogUri|Invalid or malformed Uri specified. 
InvalidStreamInputsForCopyOperation|Invalid Stream instances specified for the copy operation. 
InvalidStorePropertiesInstance|Invalid StoreProperties instance specified. 
InvalidStoreItemChunkInstance|Invalid StoreItemChunk instance specified. 
InvalidBlockListInstance|Invalid StoreBlockList instance specified. 
InvalidStoreProviderConfiguration|Invalid store provider configuration. 
StoreProviderNotDefinedInConfiguration|Store provider is not defined in configuration. 
InternalAppNoDeAuth|Healthvault internal applications cannot deauthorize themselves. 
InvalidExternalIdLength|The external id must be less than or equal to 256 characters. 
ActionUrlMustBeURI|The action URL must be a valid URL. 
IpAddressOutOfRange|IP address is out of range. 
InvalidToken|The token is invalid. 
RefreshCachierSuccess|Refresh cachier success. 
InvalidPasscode|The pass code is invalid. 
PutThingsNoTransformDataXml|The 'data-xml' element provided should be raw xml and not transformed. 
GetThingsCannotGetStreamedData|The 'other-data' put in to HealthVault via streaming API cannot be retrieved as a string via the OtherDataSection in the GetThings method. 
PutThingsOtherDataByteAndTokenTogether|Both other-data and other-data-stream nodes should not be simultaneously supplied. Please supply other-data node for bytes sent in via the XML call and other-data-stream node for bytes streamed in. 
ThingTypeVersionUpdateNoDataXml|The thing type version of the thing {0} cannot be modified to the type {1} without supplying a data xml section for validation. 
ChildAppMethodsExceedMasterCeiling|The method mask requested exceeds those allowed by the master application. 
GetAppInfoDenied|The calling application must be the master application of the specified child-app-id to get the application's info. 
ContentEncodingDataMismatch|The content encoding specified for the blob does not match the blob data. 
ContentEncodingUnsupported|The content encoding specified is not supported. 
AuthRulesMustBeProvided|At least one authorization rule must be provided in either the online or offline base authorization rules. 
MasterAppExpected|The specified application is not a master application. 
SodaAppExpected|The specified master application is not a SODA application. 
SodaAppNotMaster|The Soda Application is not a master application and does not have a master application configured. 
DuplicateAppId|The specified application id '{0}' already exists. 
ChildAppMismatch|Child applications must be the same type as their master. 
ApplicationLimitExceeded|The maximum number of applications for this person has been exceeded. 
InvalidBinaryContentId|The unique identifier for the binary content cannot be '00000000-0000-0000-0000-000000000000'. 
ContentIdNotFound|The unique identifier for the binary content was not found. 
InvalidVocabularyId|The unique identifier for the vocabulary cannot be '00000000-0000-0000-0000-000000000000'. 
ConnectRequestIncomplete|The connect request was found, but its contents have not yet been uploaded. 
CreatePackageExists|The package request already has a package attached. 
InvalidSignupCode|The signup code was not correct. 
SodaEmptyAppId|The Soda instance id must not be empty. 
SodaEmptyMasterAppId|The Soda master app id must not be empty. 
SodaPublicKeysRequired|At least one public key is required to create a Soda Application. 
InvalidEntityManagerAuth|The entity manager authorization was not found. 
BlobSizeTooLargeForInline|The blob is too large and cannot be returned inline. 
DuplicateBlob|A blob with the same name is present in the request. 
BlobTokenCommitted|The blob token associated with the blob {0} is for a blob already committed and it cannot be reused. 
BlobTokenNotCompleted|The blob token associated with the blob {0} is for a blob that was not marked completed through the streaming interface. 
BlobRefUrlInvalid|The blob reference URL associated with the blob {0} is invalid. 
ThingPotentiallyIncomplete|The thing (id = {0}) contains data items such as named blobs. The client is not in a position to receive this data and interpret it. The update can cause a potential data corruption. 
InvalidSignatureAlgorithm|The signature algorithm {0} is invalid. 
SignatureDataInvalid|The signature data is missing or invalid. 
BlobHashAlgorithmInvalid|The hash algorithm {0} is invalid. 
BlobHashBlockSizeMissing|The hash block size was not specified. 
BlobHashBlockSizeUnsupported|The hash block size {0} is not supported. 
BlobHashInvalid|The specified blob hash is invalid. 
BlobSigInfoInvalid|The blob signature info is missing or invalid. 
BlobSigInfoCountMismatch|The blob signature info blob count doesn't match the blob count. 
BlobSigInfoNameMismatch|The blob signature info is missing a blob name. 
BlobSigInfoContentTypeMismatch|The blob signature info content type {0} doesn't match the blob content type {1}. 
BlobSigInfoHashInfoMissing|The blob signature info's hash info is missing. 
BlobSigInfoHashAlgorithmMismatch|The blob signature info's hash algorithm {0} does not match the blob's hash algorithm {1}. 
BlobSigInfoHashBlockSizeMismatch|The blob signature info's hash block size {0} does not match the blob's hash block size {1}. 
SignatureMethodNotSupported|The signature method {0} is not supported in the context specified. 
PackageBlobNotCommitted|The blob '{0}' is associated with a connect package that is not yet created. 
InvalidIpAddressMask|The specified IP address prefixes are not in the correct format. 
ApplicationStateTransitionNotSupported|Changing the application state from deleted is not supported. 
DuplicateEntityManagerInvite|The entity manager invite already exists. 
EntiyManagerInviteNotFound|The entity manager invite to re-send does not exist. 
InvalidEntityManagerToken|The entity management invite token is invalid. 
ResendEntityManagerInviteFailed|The entity management invite resend failed. 
EntityManagerAlreadyExists|The entity manager already exists. 
ApplicationManagementStateRangeError|Invalid application management state. 
InvalidPackageContents|The contents of the connect package are not valid xml. 
InvalidRelatedThing|The specified related thing node is invalid. It must contain either a valid client id or a valid thing id 
ContentTypeNotSupported|The content type {0} is not supported. 
InvalidPersonIdNotFound|The unique identifier {0} for the person cannot be found. 
ConnectPackageValidationRequired|The contents of the connect package must be validated before they are put into a health record. 
ThingStateNotDeleted|The specified thing is not in a deleted state. 
TooManyThingsSpecified|The number of things specified exceeds the maximum limit. 
PersonalAccessNotAuthorized|Access to personal flags not authorized. 
InvalidEntityType|The entity type is invalid. 
InvalidDirectoryItem|The directory item is invalid. 
InvalidDirectoryType|The directory type is invalid. 
InvalidDirectoryState|The directory state is invalid. 
ChildAppAuthVocabsExceedMasterCeiling|The authorized vocabularies exceed the limit allowed by the master. 
InvalidVocabularyInVocabularyAuthorization|The vocabulary family={0},name={1} in the vocabulary authorization does not exist. 
InvalidVocabularyAuthorizationXml|The authorized vocabularies xml is invalid. 
InvalidFieldValue|The directory item contains invalid field value for field {0}. 
VocabularyAccessDenied|Access to the requested vocabulary is denied. 
PersonalFlagNotSupported|Personal Flag not supported on singleton types. 
MethodDisabled|The method has been disabled. 
SubscriptionNotFound|The subscription was not found. 
SubscriptionNotificationKeyBadFormat|The subscription notification key is invalid. 
SubscriptionNotificationKeyInvalidLength|The subscription notification key length is invalid. 
SubscriptionUriBadFormat|The subscription delivery url is invalid. 
SubscriptionUriInvalidScheme|The subscription delivery url must be https. 
SubscriptionUriInvalidDomain|The subscription delivery url must use the same domain as the application. 
SubscriptionApplicationHostUriSingleDomain|Subscribing application action urls must include at top level domain and at least one sub domain. 
SubscriptionThingTypeInvalid|The subscription ThingFilter uses an unknown thing type id. 
InvalidSubscriptionId|The subscription identifier cannot be '00000000-0000-0000-0000-000000000000'. 
UnexpectedSubcriptionId|The subscription id must be null or '00000000-0000-0000-0000-000000000000' 
SubscriptionLimitExceeded|The application has exceeded the maximum number of subscriptions. 
InvalidApplicationCreationToken|The supplied application creation token is invalid. 
ApplicationSharedKeyNotFound|Could not find application shared key. 
SharingRequestingApplicationNotFound|Could not find the application requesting this sharing invitation. 
AutoReconcileStatusText|This note indicates that information was automatically added from the related document to this HealthVault record. Please don't remove this note. 
EncryptedCredentialExpired|The credential has expired. 
AlternateIdDuplicate|The alternate id is already used by this application. 
AlternateIdNotFound|The alternate id was not found. 
AlternateIdsLimitExceeded|The maximum number of allowed alternate ids has been exceeded. 
RecordAuditNotFound|The record audit was not found. 
AlternateIdMissing|The alternate id must be specified. 
RecordSharingInvitePinMismatch|Incorrect PIN for record sharing invitation. 
RecordSharingMaximumNumberOfAttemptsExceeded|The maximum number of attempts to accept/reject this sharing invitation has been exceeded. 
ConcurrencyViolation|The update failed due to concurrency violation. 
AppDoesntSupportRecordLocation|The record location is not supported by the application. 
TooManyMessages|Message limit exceeded. Only {0} messages can be added per request. 
CouldNotEnqueue|There was an error adding the messages to the queue. 
RemoveLocationsInvalidAuthAllowedWithWarningMessages|Auth. allowed with warning messages are not required. 
ChildAppSupportedRecordLocationsExceedMasterCeiling|The supported record locations exceed those allowed by the master. 
DuplicateAppLocationInfo|The app location or localized warning message could not be added because it already exists. 
GetAppLocationsInvalidSearchFilter|The application ID is either empty or invalid. Please provide a valid application ID. 
MaintenanceAccessDenied|Access is denied. The service is currently undergoing maintenance. 
InvalidChildApp|Could not find valid child application with identifier '{0}'. 
InvalidInstanceId|The specified instance identifier is invalid '{0}'. 
ChildAppSupportedInstancesExceedMaster|The supported instances exceed those allowed by the master.'{0}' 
LocationOrCredentialRequired|Either an account location or a credential must be provided. 
CannotCreateImmutableThingForType|Cannot create read-only instance for restricted types. 
CannotUnsetThingImmutableFlag|Cannot change read-only flag to false if it is already true. 
CannotUpdateImmutableThing|Cannot update read-only thing instance. 
InvalidMSATicket|MSA ticket invalid. 
MaxRecordCountExceeded|The maximum number of records has been reached for this account. 
CredentialExistsOnOtherInstance|The credential is in use on another instance of HealthVault. 
InvalidPersonWithTicketForApplication|This person is not authorized to use the application. 
CannotSetThingImmutableFlagOnUpdate|Cannot set read-only flag to true on update. 
CommunicationPreferencesAccessTokenExpired|The communication preferences access token has expired. 
SamlTokenExpired|SAML token expired. 
InvalidSamlTokenSignature|SAML token signature invalid. 
InvalidSamlToken|SAML token is invalid. 
MeaningfulUseDisabled|Invalid operation when Meaningful Use feature is disabled. 
ApplicationCacheRequestDuplicateKey|A key was specified more than once in the request. 
ApplicationCacheRequestInvalidItem|One or more cache items are invalid. A cache item with force-overwrite set to true cannot specify an old-version-id. 
ApplicationCacheRequestTooLarge|Cache operation has failed due to capacity limits. 
DuplicateDirectAddress|Duplicate direct address detected. 
InvalidDirectAddress|Invalid direct address. 
MaxDirectAddressesExceeded|Maximum number of allowed direct addresses exceeded. 
DirectAddressNotFound|Direct address not found. 
BaseMeaningfulUseSourceExceedsMax|The list of Meaningful Use sources contains one or more invalid sources that are not a subset of the master application's ceiling. 
MeaningfulUseSourceDuplicate|The list of Meaningful Use sources contains one or more duplicate sources. 
AppNotEnabledForMeaningfulUse|Meaningful Use sources cannot be specified when application is not enabled for Meaningful Use. 
ChildAppsNotEnabledForMeaningfulUse|Meaningful Use sources ceiling cannot be specified when child applications are not enabled for Meaningful Use 
MigrationSourceInstanceCannotBeSpecifiedOnNewApp|The migration source instance cannot be specified when creating a new application.