---
uid: HV_A9A76456-0357-493e-B840-598BBB9483FD
title: Daily medication usage
---

# Daily medication usage

## Overview

Property|Value
---|---
id|A9A76456-0357-493e-B840-598BBB9483FD
name|Daily medication usage
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Daily medication usage](https://go.microsoft.com/fwlink/?LinkID=136092)

## Related data types

- [Medication](xref:HV_30cafccc-047d-4288-94ef-643571f7919d)
- [Medication fill](xref:HV_167ecf6b-bb54-43f9-a473-507b334907e0)

## Details
This health record item type enables a user to keep a record of the actual doses taken for prescription medications, over-the-counter drugs and regular dietary supplements.

<a name='daily-medication-usage'></a>

### Root element: daily-medication-usage

A record of taking a medication or dietary supplement.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|date|1|1|Date on which the medication was taken.||
drug-name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|Name of the medication, drug or supplement taken.|For example, 'ventolin' or 'albuterol.' This element allows for completely free-text input of names.|
number-doses-consumed-in-day|[int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)|1|1|Number of units of the medication taken.|Ties to the 'single-dose-description' element to determine actual dosage taken.|
purpose-of-use|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Textual description of the purpose of use for this drug.|Examples include 'high blood pressure' or 'diabetes.' Users may select from the existing vocabulary or use their own descriptions.|[dose-purpose](xref:HV_85fb2674-17e6-4270-85ab-7a94c2e42600)
number-doses-intended-in-day|[int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)|0|1|Number of units called for by prescription or intent for the drug.|Intend for this to be used to ensure that patient is keeping track of their usage in comparison to the prescribed usage. Will enable an application to easily alert the user in instances where the patient has come short or is taking too much.|
medication-usage-schedule|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|General schedule for the usage of the medication in quesiton.|This will be used to distinguish between drugs that are taken daily vs. those that are taken 'as needed.' User may select from the existing values or use their own.|[usage-schedule](xref:HV_e2602cd1-ac84-45b8-bddc-01f204ead0d4)
drug-form|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Form in which the drug is administered.|For example, pill, powder, capsule, etc. User may select from the existing values or use their own.|[medication-routes](xref:HV_e043c73c-289b-474a-aea2-17f691dd374e)
prescription-type|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Means through which the drug was determined to be needed.|For example, Unknown, MedicallyPrescribed, or SelfChosen.|[prescription-type](xref:HV_7427ca34-832d-45fa-bef8-dce26adb79c2)
single-dose-description|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Description that defines what a 'single dose' of the medication constitutes.|This element qualifies the 'number-units-consumed' element. It allows control over the definition of a dosage. The intent is to allow for free-form text to enable the user or provider to have complete control over the definition of a 'unit' for a specific drug. Examples include '3 200mg tablets,' '1 Tablespoon full' or '2.5 tablets.' User may select from the existing values or use their own.|[medication-dose-units](xref:HV_d4e33180-037d-4d61-8602-2d9e8d245367)

## Example
[!code-xml[Example](sample-xml/A9A76456-0357-493e-B840-598BBB9483FD.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/daily-medication-usage.xsd)
[!code-xml[XSD schema](xsd/daily-medication-usage.xsd)]
