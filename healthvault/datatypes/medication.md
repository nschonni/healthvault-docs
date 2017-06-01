---
uid: HV_30cafccc-047d-4288-94ef-643571f7919d
title: Medication
---

# Medication

## Overview

Property|Value
---|---
id|30cafccc-047d-4288-94ef-643571f7919d
name|Medication
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Medication](https://go.microsoft.com/fwlink/?LinkID=136191)

## Related data types

- [Allergy](xref:HV_52bf9104-2c5e-4f1f-a66d-552ebcc53df7)
- [Asthma inhaler](xref:HV_ff9ce191-2096-47d8-9300-5469a9883746)
- [Asthma inhaler usage](xref:HV_03efe378-976a-42f8-ae1e-507c497a8c6d)
- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Contraindication](xref:HV_046d0ad7-6d7f-4bfd-afd4-4192ca2e913d)
- [Daily medication usage](xref:HV_A9A76456-0357-493e-B840-598BBB9483FD)
- [Immunization](xref:HV_cd3587b5-b6e1-4565-ab3b-1c3ad45eb04f)
- [Medication fill](xref:HV_167ecf6b-bb54-43f9-a473-507b334907e0)

## Related articles

- [Emergency Preparedness](http://go.microsoft.com/fwlink/?LinkId=513260)

## Details
This type contains information describing a medication, and is related to the medication fill type. Instances of the medication fill type are linked to instances of this type using related items. For example, if the medication is prescribed, the medication fill describes typical information that a pharmacy would add.

<a name='medication'></a>

### Root element: medication

Information related to a medication.

This type contains information describing a medication, and is related to the medication fill type. Instances of the medication fill type are linked to instances of this type using related items. For example, if the medication is prescribed, the medication fill describes typical information that a pharmacy would add.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|Name and clinical code for the medication.|This name should be understandable to the person taking the medication, such as the brand name.|Rxnorm, NDC
generic-name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Generic name and clinical code for the medication.|The generic name is often the drug name rather than the brand name.|Rxnorm, NDC
dose|[general-measurement](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#general-measurement)|0|1|Dose of the medication|Examples: 1 tablet, 50 ml.|
strength|[general-measurement](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#general-measurement)|0|1|Strength of medication.|Example: 500mg, 10 mg/ml|
frequency|[general-measurement](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#general-measurement)|0|1|How often the medication is taken.|Example: 1 tablet per day, 2 every 6 hours, as needed.|
route|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Route of medication.||[medication-routes](xref:HV_e043c73c-289b-474a-aea2-17f691dd374e)
indication|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Indication for medication.||
date-started|approx-date-time|0|1|Date medication was started.||
date-discontinued|approx-date-time|0|1|Date medication was discontinued.||
prescribed|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The source of the prescription|A medication that is prescribed by a physician should code "prescribed" into this element.|[medication-prescribed](xref:HV_d0efa08f-0b77-44a7-be53-45f96cb1eee6)
prescription|[Prescription](#Prescription)|0|1|Details of a prescribed medication.||

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Prescription'></a>
>
> ### Prescription
>
> Information related to a medication prescription.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> prescribed-by|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|1|1|The person who prescribed this medication.||
> date-prescribed|approx-date-time|0|1|Date medication was prescribed.||
> amount-prescribed|[general-measurement](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#general-measurement)|0|1|Amount of medication prescribed||
> substitution|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Whether a substitution is permitted.|Example: Dispense as written, substitution allowed|[medication-substitution](xref:HV_cd4bd80c-022e-432b-928f-f84e1bae7cb0)
> refills|[nonNegativeInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeInt)|0|1|Number of medication refills.||
> days-supply|[positiveInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveInt)|0|1|Number of days supply of medication.||
> prescription-expiration|date|0|1|Date the prescription expires.||
> instructions|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Medication instructions.||
>
>

## Example
[!code-xml[Example](sample-xml/30cafccc-047d-4288-94ef-643571f7919d.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/medication.xsd)
[!code-xml[XSD schema](xsd/medication.xsd)]
