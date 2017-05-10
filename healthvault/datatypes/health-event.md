---
uid: HV_1572af76-1653-4c39-9683-9f9ca6584ba3
title: Health event
---

# Health event

## Overview

Property|Value
---|---
id|1572af76-1653-4c39-9683-9f9ca6584ba3
name|Health event
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## Related data types

- [Appointment](xref:HV_4B18AEB6-5F01-444C-8C70-DBF13A2F510B)
- [Health journal entry](xref:HV_21d75546-8717-4deb-8b17-a57f48917790)

## Details
A health event is a health-related occurence for the owner of the record. For children, it might be used to record the date that the child first crawls or talks. For adults, it might be used to record the date of an accident or progress through a rehabilitation.

<a name='health-event'></a>

### Root element: health-event

Represents a health event.

A health event is a health-related occurence for the owner of the record. For children, it might be used to record the date that the child first crawls or talks. For adults, it might be used to record the date of an accident or progress through a rehabilitation.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|approx-date-time|1|1|The date and time the event occurred.||
event|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The name of the health event.|The name should be a description that can be understood by the user. If possible, the health event name should be coded using one of the preferred vocabularies.|[event-pediatric-developmental-movement](xref:HV_adf4cbd2-fde7-4a66-82bc-b3f239905a3b), event-pediatric-developmental-motorskills, [event-pediatric-developmental-speech](xref:HV_11d0262c-4762-4573-be97-5914ebc3d87a), [event-pediatric-developmental-observations](xref:HV_7c47f731-5bf2-4c7c-b4a3-ff02a6a99e09), [event-pediatric-developmental-dental](xref:HV_9edadd4d-ea2b-4dae-9282-54ea0b698dc8)
category|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The category of the health event.|The category can be used to group related events together. For example, 'pediatric'.|[event-categories](xref:HV_f902ae12-fef5-4589-816c-d00e4feacde8)

## Example
[!code-xml[Example](sample-xml/1572af76-1653-4c39-9683-9f9ca6584ba3.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/health-event.xsd)
[!code-xml[XSD schema](xsd/health-event.xsd)]
