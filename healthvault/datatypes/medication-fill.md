---
uid: HV_167ecf6b-bb54-43f9-a473-507b334907e0
title: Medication fill
---

# Medication fill

## Overview

Property|Value
---|---
id|167ecf6b-bb54-43f9-a473-507b334907e0
name|Medication fill
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Medication fill](https://go.microsoft.com/fwlink/?LinkID=136194)

## Related data types

- [Daily medication usage](xref:HV_A9A76456-0357-493e-B840-598BBB9483FD)
- [Medication](xref:HV_30cafccc-047d-4288-94ef-643571f7919d)

## Details
This type contains information related to filling a medication, and is related to the medication type. Instances of this type are typically linked to a medication instance using related items. For example, if the medication is prescribed, the medication fill describes typical information that a pharmacy would add.

<a name='medication-fill'></a>

### Root element: medication-fill

Information related to filling a medication.

This type contains information related to filling a medication, and is related to the medication type. Instances of this type are typically linked to a medication instance using related items. For example, if the medication is prescribed, the medication fill describes typical information that a pharmacy would add.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|Name and clinical code for the medication.|This name should be understandable to the person taking the medication, such as the brand name.|Rxnorm, NDC
date-filled|approx-date-time|0|1|Date the prescription was filled.||
days-supply|[positiveInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveInt)|0|1|Number of days supply of medication.||
next-refill-date|date|0|1|The date on which a prescription can be refilled.||
refills-left|[nonNegativeInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeInt)|0|1|Number of medication refills left.||
pharmacy|[Organization](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#Organization)|0|1|Pharmacy.||
prescription-number|string|0|1|Free form prescription number.||
lot-number|string|0|1|The lot number for the medication.||

## Example
[!code-xml[Example](sample-xml/167ecf6b-bb54-43f9-a473-507b334907e0.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/medication-fill.xsd)
[!code-xml[XSD schema](xsd/medication-fill.xsd)]
