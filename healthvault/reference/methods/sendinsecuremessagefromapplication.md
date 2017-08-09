---
uid: HV_File_sendinsecuremessagefromapplication
title: SendInsecureMessageFromApplication
---

# SendInsecureMessageFromApplication

## Request Overview

Sends an insecure email message originating from the application to the specified recipients.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
from-mailbox|[FromMailbox](#FromMailbox)|1|1|The mailbox name is an application specified string which identifies the sender within the application.|This mailbox name will be appended to the app's domain name to form the message's From email address.
rcpt-address|[RcptAddress](xref:HV_File_types#RcptAddress)|0|unbounded|The email address(es) to send the message to.|
rcpt-person|[RcptPerson](xref:HV_File_types#RcptPerson)|0|unbounded|The Microsoft Health account(s) to send the message to.|
rcpt-record|[RcptRecord](xref:HV_File_types#RcptRecord)|0|1|Specifies that custodians of the health record identifier in the request envelope, should be sent the message.|The recordId is passed in the request header. The application making the request and the person through which the authorization was obtained must be authorized for the record. The person must be either authenticated, or if the person is offline, their person Id specified through the offline person info in the request header.
subject|string|1|1|The subject of the message.|This will show up in the subject field of the email message.
text-body|string|0|1|A textual representation of the message.|The message can consist of two parts. One part of the message can consist of richly formatted text using HTML and the other must be plain text to support email programs that don't support the rich views or those where rich viewing has been disabled.
html-body|string|0|1|An HTML representation of the message.|The message can consist of two parts. One part of the message can consist of richly formatted text using HTML and the other must be plain text to support email programs that don't support the rich views or those where rich viewing has been disabled.

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='FromMailbox'></a>
>
> ### FromMailbox
>
> This specifies a mailbox within the application that is sending the message.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> mailbox-name|[string255](xref:HV_File_types#string255)|1|1|The app specified name of the mailbox from which the message is being sent.|This is appended to the domain name of the application to form the From email address. This parameter should only contain the characters before the @ symbol of the email address.
> name|[string255](xref:HV_File_types#string255)|1|1|The display name of the sender|
>
>

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-sendinsecuremessagefromapplication.xsd)
[!code-xml[XSD schema](../xsd/method-sendinsecuremessagefromapplication.xsd)]

