---
uid: HV_046d0ad7-6d7f-4bfd-afd4-4192ca2e913d
title: Contraindication
---

# Contraindication

## Overview

Property|Value
---|---
id|046d0ad7-6d7f-4bfd-afd4-4192ca2e913d
name|Contraindication
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Contraindication](https://go.microsoft.com/fwlink/?LinkID=136086)

## Related data types

- [Condition](xref:HV_7ea7a1f9-880b-4bd4-b593-f5660f20eda8)
- [Medication](xref:HV_30cafccc-047d-4288-94ef-643571f7919d)

## Details
This thing type is used to store substances (such as food or drugs) that interacts badly with a specific condition or drugs a patient is already taking.

<a name='contraindication'></a>

### Root element: contraindication

Information related to an contraindication.

This thing type is used to store substances (such as food or drugs) that interacts badly with a specific condition or drugs a patient is already taking.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
substance|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The substance that is contraindicated.|
status|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The status of the contraindication.|A contraindication can be inactive or active.
source|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The source of the contraindication.|For example, a contraindication against leafy green vegetables might have as a source the blood thinner Warfarin, which would be coded here using an appropriate medication vocabulary.
documenter|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|The person who documented this issue (physician, pharmacist, etc.)|
documented-date|approx-date-time|0|1|The date the contraindication was documented.|

## Example
[!code-xml[Example](sample-xml/046d0ad7-6d7f-4bfd-afd4-4192ca2e913d.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/contraindication.xsd)
[!code-xml[XSD schema](xsd/contraindication.xsd)]
