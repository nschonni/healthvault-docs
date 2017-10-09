---
uid: HV_5C5F1223-F63C-4464-870C-3E36BA471DEF
title: Medication
---

# Medication

## Overview

Property|Value
---|---
id|5C5F1223-F63C-4464-870C-3E36BA471DEF
name|Medication
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Old.MedicationV1](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.old.medicationv1)

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
Note: Please use the new version of this data type instead of this version. <br /> This thing type describes a medication a person has.

<a name='medication'></a>

### Root element: medication

Information related to a medication.

Note: Please use the new version of this data type instead of this version. <br /> This thing type describes a medication a person has.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
name|string|0|1|Name of medication.||
code|[nonNegativeInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeInt)|0|unbounded|Clinical code for medication.||
date-discontinued|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|Date medication was discontinued.||
date-filled|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|Date medication prescription was filled.||
date-prescribed|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|Date medication was prescribed.||
is-prescribed|boolean|0|1|True if medication was prescribed.||
indication|string|0|1|Free form indication for medication.||
amount-prescribed|string|0|1|Free form amount prescribed for medication.||
dose-value|[DoseValue](#DoseValue)|0|1|Doses of medication.||
dose-unit|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Dose unit of medication.||[medication-dose-units](xref:HV_d4e33180-037d-4d61-8602-2d9e8d245367)
strength-value|[nonNegativeInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeInt)|0|1|Strength of medication.||
strength-unit|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Free form strength unit of medication.||[medication-strength-unit](xref:HV_cb66c7ed-018b-4ffd-9501-62b750fb853c)
frequency|string|0|1|Free form frequency of medication.||
route|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Route of medication.||[medication-routes](xref:HV_e043c73c-289b-474a-aea2-17f691dd374e)
duration|string|0|1|Free form duration of medication.||
duration-unit|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Free form duration units of medication.||
refills|[nonNegativeInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeInt)|0|1|Number of medication refills.||
refills-left|[nonNegativeInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeInt)|0|1|Number of medication refills left.||
days-supply|[nonNegativeInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeInt)|0|1|Number of days supply of medication.||
prescription-duration|[duration-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#duration-value)|0|1|Duration of prescription.||
instructions|string|0|1|Free form medication instructions.||
substitution-permitted|boolean|0|1|True of substitution is permitted.||
pharmacy|[Contact](xref:HV_25c94a9f-9d3d-4576-96dc-6791178a8143)|0|1|Pharmacy.||
prescription-number|string|0|1|Free form prescription number.||

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DoseValue'></a>
>
> ### DoseValue
>
> Defines a medication dosage.
>
> The dose taken may be a fixed amount, like 2 (meaning 2 capsules, 2 tablets, etc.), or it may be a range, like 1/2 - 1, and it may also include free-form text.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> description|string|0|1|Free form text describing the dose that should be taken.|
> exact-dose|[positiveDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveDouble)|0|1|The dose value as an exact dose value.|The dosage to be taken is exactly specified.
> min-dose|[positiveDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveDouble)|0|1|The minimum dosage that should be taken.|The dosage to be taken is specified as a range with this value indicating the minimum dosage that should be taken.
> max-dose|[positiveDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveDouble)|0|1|The maximum dosage that should be taken.|The dosage to be taken is specified as a range with this value indicating the maximum dosage that should be taken.
>
>

## Example
[!code-xml[Example](../sample-xml/5C5F1223-F63C-4464-870C-3E36BA471DEF.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/medication.1.xsd)
[!code-xml[XSD schema](../xsd/medication.1.xsd)]
