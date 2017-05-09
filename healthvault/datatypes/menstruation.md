---
uid: HV_caff3ff3-812f-44b1-9c9f-c1af13167705
title: Menstruation
---

# Menstruation

## Overview

Property|Value
---|---
id|caff3ff3-812f-44b1-9c9f-c1af13167705
name|Menstruation
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## Related data types

- [Pregnancy](xref:HV_46d485cf-2b84-429d-9159-83152ba801f4)

## Related articles

- []()

## Details
A single assessment of menstrual flow.

<a name='menstruation'></a>

### Root element: menstruation

A single assessment of menstrual flow including heaviness and whether the menstruation is the start of a new cycle/period.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|date-time|1|1|The date and time of the menstrual flow.||
is-new-cycle|boolean|0|1|Indicates whether this instance represents the start of a new menstrual cycle, e.g., the first day of a period.||
amount|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The amount of discharged fluid (e.g., light, medium, heavy or spotting).||[menstrual-flow-amount](xref:HV_353da08b-ebd6-4fc2-8b77-ed45168494f8)

## Example
[!code-xml[Example](sample-xml/caff3ff3-812f-44b1-9c9f-c1af13167705.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/menstruation.xsd)
[!code-xml[XSD schema](xsd/menstruation.xsd)]
