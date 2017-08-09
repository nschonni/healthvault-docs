---
uid: HV_88ac89e9-33c2-4a71-828d-c82b98c366b8
title: audit-log-messages
---

# audit-log-messages

## Overview

Property|Value
---|--- 
Name|audit-log-messages 
Family|wc 
Version|1

## Examples

ID|Name
---|--- 
GetSpecialAccountByType|Getting special accounts by type: {0} 
GetSpecialAccountById|Getting special accounts by id 
CreateThingTypeStarted|Thing type creation started for type:{0} version:{1} 
CreateThingTypeCompleted|Thing type creation completed for type:{0} version:{1} 
CreateThingTypeFailed|Thing type creation failed for type:{0} version:{1}. {2} 
RemoveSpecialAccountStarted|Special account removal started for {0}. 
RemoveSpecialAccountCompleted|Special account removal completed for {0}. 
RemoveSpecialAccountFailed|Special account removal failed for {0}. {1} 
CreateAdminAccountStarted|Admin account creation started for {0}. 
CreateAdminAccountCompleted|Admin account creation completed for {0}. 
CreateAdminAccountFailed|Admin account creation failed for {0}. {1} 
UpdateAdminAccountStarted|Admin account update started for {0}. 
UpdateAdminAccountCompleted|Admin account update completed for {0}. 
UpdateAdminAccountFailed|Admin account update failed for {0}. {1} 
SetPersonAccountStateStarted|Set person account state to {0} started for {1}. 
SetPersonAccountStateCompleted|Set person account state to {0} completed for {1}. 
SetPersonAccountStateFailed|Set person account state to {0} failed for {1}. {2} 
RemoveBinaryContentStarted|Remove binary content started {0}. {1} 
RemoveBinaryContentCompleted|Remove binary content completed {0}. {1} 
RemoveBinaryContentFailed|Remove binary content failed {0}. {1} 
RepsertBinaryContentStarted|Repsert binary content started {0}. {1} 
RepsertBinaryContentCompleted|Repsert binary content completed {0}. {1} 
RepsertBinaryContentFailed|Repsert binary content failed {0}. {1} 
RemoveVocabularyStarted|Remove vocabulary started {0}. {1} 
RemoveVocabularyCompleted|Remove vocabulary completed {0}. {1} 
RemoveVocabularyFailed|Remove vocabulary failed {0}. {1} 
RepsertVocabularyStarted|Repsert vocabulary started {0}. 
RepsertVocabularyCompleted|Repsert vocabulary completed {0}. 
RepsertVocabularyFailed|Repsert vocabulary failed {0}. 
CreateApplicationStarted|Application creation started:{1} id:{0} 
CreateApplicationCompleted|Application creation completed:{1} id:{0} 
CreateApplicationFailed|Application creation failed:{1} id:{0}. {2} 
ReplaceApplicationStarted|Replace application started:{1} id:{0} 
ReplaceApplicationCompleted|Replace application completed:{1} id:{0} 
ReplaceApplicationFailed|Replace application failed:{1} id:{0}. {2} 
SetApplicationStateStarted|Set application state started, id: {0}, state: {1} 
SetApplicationStateCompleted|Set application state completed, id: {0}, state: {1} 
SetApplicationStateFailed|Set application state failed, id: {0}, state: {1}. {2} 
RemoveEntityManagerStarted|Remove entity manager started, personid: {0}, entity id: {1}, entity type: {2}. 
RemoveEntityManagerFailed|Remove entity manager failed, personid: {0}, entity id: {1}, entity type: {2}. 
RemoveEntityManagerSuccess|Remove entity manager succeeded, personid: {0}, entity id: {1}, entity type: {2}. 
AcceptingEntityInviteStarted|Accept entity manager invite started, personid: {0}, token: {1}. 
AcceptingEntityInviteFailed|Accept entity manager invite failed, personid: {0}, token: {1}. {2} 
AcceptingEntityInviteSucceeded|Accept entity manager invite succeeded, personid: {0}, token: {1}, entity id: {2}, entity type: {3}. 
AddEntityManagerInviteStarted|Add entity manager invite started, granter personid: {0}, entity id: {1}, entity type: {2}, grantee e-mail: {3}. 
AddEntityManagerInviteFailed|Add entity manager invite failed, granter personid: {0}, entity id: {1}, entity type: {2}, grantee e-mail: {3}. 
AddEntityManagerInviteSucceeded|Add entity manager invite succeeded, granter personid: {0}, entity id: {1}, entity type: {2}, grantee e-mail: {3}. 
ResendEntityManagerInviteStarted|Resend entity manager invite started, granter personid: {0}, entity id: {1}, entity type: {2}, email: {3}. 
ResendEntityManagerInviteFailed|Resend entity manager invite failed, granter personid: {0}, entity id: {1}, entity type: {2}. 
ResendEntityManagerInviteSuccceeded|Resend entity manager invite succeeded, grantor personid: {0}, entity id: {1}, entity type: {2}. 
SetApplicationManagementStateStarted|Set application state started, appId: {0}, state: {1}. 
SetApplicationManagementStateFailed|Set application state failed, appId: {0}, state: {1}. 
SetApplicationManagementStateSucceeded|Set application state succeeded, appId: {0}, state: {1}. 
GetSpecialAccountByLoginName|Getting special accounts by login name 
RemoveDirectoryItemStarted|Remove directory item started, entity_id: {0}. 
RemoveDirectoryItemFailed|Remove directory item failed, entity_id: {0}. 
RemoveDirectoryItemSuccess|Remove directory item succeeded, entity_id: {0}. 
RepsertDirectoryItemSuccess|Repsert directory item succeeded, entity_id: {0} and entity_type: {1}. 
RepsertDirectoryItemFailed|Repsert directory item failed, entity_id: {0} and entity_type: {1}. 
GetAccountInfoByPersonId|Getting special accounts information for self.