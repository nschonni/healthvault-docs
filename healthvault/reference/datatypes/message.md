---
uid: HV_72dc49e1-1486-4634-b651-ef560ed051e5
title: Message
---

# Message

## Overview

Property|Value
---|---
id|72dc49e1-1486-4634-b651-ef560ed051e5
name|Message
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## Details
The message is stored in two forms. The "FullMessage" blob contains the message in the native format. The text of the message is available in the blobs denoted by the 'html-blob-name" and "text-blob-name" element. Any attachments to the message are described in the "attachments" element. The data stored is intended to be compatible with the SendMail Multipart MIME format

<a name='message'></a>

### Root element: message

The Message type is used to store a multipart message, including message text and attachments.

The message is stored in two forms. The "FullMessage" blob contains the message in the native format. The text of the message is available in the blobs denoted by the 'html-blob-name" and "text-blob-name" element. Any attachments to the message are described in the "attachments" element. The data stored is intended to be compatible with the SendMail Multipart MIME format

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time of the message.|
headers|[message-header-item](#message-header-item)|0|unbounded|A collection of header information associated with this message.|
size|positiveInteger|1|1|The size of the message in bytes.|
summary|string|0|1|A summary of the message.|The summary contains the first 512 characters of the message in text format.
html-blob-name|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|The name of the blob that stores the message in HTML format.|
text-blob-name|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|The name of the blob that stores the message in text format.|
attachments|[message-attachment](#message-attachment)|0|unbounded|Attachments to the message.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='message-header-item'></a>
>
> ### message-header-item
>
> An item of header information.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|The name of the header item.|
> value|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|The value of the header item.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='message-attachment'></a>
>
> ### message-attachment
>
> An attachment to the message.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|The name of the attachment.|
> blob-name|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|The name of the blob storing the attachment|
> inline-display|boolean|1|1|If true the attachment is intended to be displayed inline with the text.|
> content-id|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|Defines the content identifier for attachments that will be displayed inline with the text.|If this attachment is inline and the message text is available as HTML, the HTML contains an img tag reference to this content id in the location where the attachment should be displayed.
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/message.xsd)
[!code-xml[XSD schema](../xsd/message.xsd)]
