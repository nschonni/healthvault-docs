---
uid: HV_9f4e0fcd-10d7-416d-855a-90514ce2016b
title: Comment
---

# Comment

## Overview

Property|Value
---|---
id|9f4e0fcd-10d7-416d-855a-90514ce2016b
name|Comment
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## Details
A comment associated with another data item.

<a name='comment'></a>

### Root element: comment

A comment associated with another data item.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[approx-date-time](xref:HV_File_dates#approx-date-time)|1|1|The date and time associated with the comment.|
content|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|The text content of this comment.|
category|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The category of the comment.|The category can be used to group related comments together.

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/comment.xsd)
[!code-xml[XSD schema](../xsd/comment.xsd)]
