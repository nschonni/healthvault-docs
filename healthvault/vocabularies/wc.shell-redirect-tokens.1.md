---
uid: HV_f98c73ac-64b7-4b01-ad99-35b3275905a9
title: shell-redirect-tokens
---

# shell-redirect-tokens

## Overview

Property|Value
---|--- 
Name|shell-redirect-tokens 
Family|wc 
Version|1

## Examples

ID|Name
---|--- 
AUTH|Redirects to the Shell authentication page. On successful authentication and verification of authorization the Shell will redirect to the application action URL with the target set to AppAuthSuccess. If authorization is declined by the user, then the Shell will redirect to the application action URL with the target set to AppAuthRejected. 
APPAUTH|Redirects to the Shell application authorization page. On successful authentication and verification of authorization the Shell will redirect to the application action URL with the target set to AppAuthSuccess. If authorization is declined by the user, then the Shell will redirect to the application action URL with the target set to AppAuthRejected. 
APPSIGNOUT|Redirects to Shell page for signing out a user from the Shell, after the user has been signed out from the application. On successful signout the Shell will redirect to the application action URL with the target set to SignOut. 
SHARERECORD|Redirects to the Shell page to initiate sharing a record with a person. The record identifier must be passed as the "extrecordid" query string parameter. If the sharing is successful, then the Shell will redirect to the application action URL with the target set to ShareRecordSuccess. If the sharing is unsuccessful, then the Shell will redirect to the application action URL with the target set to ShareRecordFailed. 
VERIFYLIVEID|Redirects to the Shell page for verifying a Windows Live ID ticket. The ticket must be base64 encoded and passed in the "LiveIdTicket" header. A shared secret must also be passed in the "SharedSecret" header. The application identifier must be passed as the "appid" query string parameter.