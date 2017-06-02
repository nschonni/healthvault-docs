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

Only the first 100 items are displayed. 

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