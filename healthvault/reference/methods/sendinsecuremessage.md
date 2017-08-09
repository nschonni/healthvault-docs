---
uid: HV_File_sendinsecuremessage
title: SendInsecureMessage
---

# SendInsecureMessage

## Request Overview

Sends an insecure email message to the specified recipients.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
rcpt-address|[RcptAddress](xref:HV_File_types#RcptAddress)|0|unbounded|The email address(es) to send the message to.|
rcpt-person|[RcptPerson](xref:HV_File_types#RcptPerson)|0|unbounded|The Microsoft Health account(s) to send the message to.|
rcpt-record|[RcptRecord](xref:HV_File_types#RcptRecord)|0|1|The health record custodians to send the message to.|
subject|string|1|1|The subject of the message.|This will show up in the subject field of the email message.
text-body|string|0|1|A textual representation of the message.|The message can consist of two parts. One part of the message can consist of richly formatted text using HTML and the other must be plain text to support email programs that don't support the rich views or those where rich viewing has been disabled.
html-body|string|0|1|An HTML representation of the message.|The message can consist of two parts. One part of the message can consist of richly formatted text using HTML and the other must be plain text to support email programs that don't support the rich views or those where rich viewing has been disabled.

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-sendinsecuremessage.xsd)
[!code-xml[XSD schema](../xsd/method-sendinsecuremessage.xsd)]

