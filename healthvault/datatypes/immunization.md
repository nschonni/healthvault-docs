---
uid: HV_cd3587b5-b6e1-4565-ab3b-1c3ad45eb04f
title: Immunization
---

# Immunization

## Overview

Property|Value
---|---
id|cd3587b5-b6e1-4565-ab3b-1c3ad45eb04f
name|Immunization
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Immunization](https://go.microsoft.com/fwlink/?LinkID=136479)

## Related data types

- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
- [Medication](xref:HV_30cafccc-047d-4288-94ef-643571f7919d)

## Details
An immunization to prevent a disease or condition.

<a name='immunization'></a>

### Root element: immunization

Information related to an immunization.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The name of the immunization.||[vaccines-cvx](xref:HV_edd20c44-281b-40ce-9639-5c74b129cd32)
administration-date|approx-date-time|0|1|The date and time the immunization.||
administrator|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|The name of the administrator of the immunization.||
manufacturer|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The manufacturer of the immunization medication.||[vaccine-manufacturers-mvx](xref:HV_41719b55-1640-4655-9aab-7f771fcadb5b)
lot|string|0|1|The manufacturing lot of the immunization medication.||
route|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The route of medication.||[medication-routes](xref:HV_e043c73c-289b-474a-aea2-17f691dd374e)
expiration-date|approx-date|0|1|The expiration date of the immunization medication.||
sequence|string|0|1|The sequence the immunization was administered.||
anatomic-surface|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The anatomic surface to which immunization was administered.||
adverse-event|string|0|1|A description of any adverse event related to the immunization.||
consent|string|0|1|The consent description for the immunization.||

## Example
[!code-xml[Example](sample-xml/cd3587b5-b6e1-4565-ab3b-1c3ad45eb04f.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/immunization.xsd)
[!code-xml[XSD schema](xsd/immunization.xsd)]
