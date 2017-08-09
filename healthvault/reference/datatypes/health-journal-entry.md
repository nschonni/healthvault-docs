---
uid: HV_21d75546-8717-4deb-8b17-a57f48917790
title: Health journal entry
---

# Health journal entry

## Overview

Property|Value
---|---
id|21d75546-8717-4deb-8b17-a57f48917790
name|Health journal entry
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## Related data types

- [Appointment](xref:HV_4B18AEB6-5F01-444C-8C70-DBF13A2F510B)
- [Health event](xref:HV_1572af76-1653-4c39-9683-9f9ca6584ba3)

## Details
An entry of a health journal or diary.

<a name='health-journal-entry'></a>

### Root element: health-journal-entry

Information related to a health journal entry.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[approx-date-time](xref:HV_File_dates#approx-date-time)|1|1|The date and time associated with the journal entry.|
content|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|The text content of this health journal entry.|
category|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The category of the health journal entry.|The category can be used to group related journal entries together. For example, 'mental health'.

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/health-journal-entry.xsd)
[!code-xml[XSD schema](../xsd/health-journal-entry.xsd)]
