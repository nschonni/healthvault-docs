---
uid: HV_adaf49ad-8e10-49f8-9783-174819e97051
title: Cardiac profile
---

# Cardiac profile

## Overview

Property|Value
---|---
id|adaf49ad-8e10-49f8-9783-174819e97051
name|Cardiac profile
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.CardiacProfile](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.cardiacprofile)
- [Microsoft.HealthVault.ItemTypes.CardiacProfile](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.cardiacprofile)

## Related data types

- [Blood pressure](xref:HV_ca3c57f4-f4c1-4e15-be67-0a3caf5414ed)
- [Defibrillator episode](xref:HV_a3d38add-b7b2-4ccd-856b-9b14bbc4e075)
- [Family history](xref:HV_4a04fcc8-19c1-4d59-a8c7-2031a03f21de)
- [Heart rate](xref:HV_b81eb4a6-6eac-4292-ae93-3872d6870994)
- [Respiratory profile](xref:HV_5fd15cb7-b717-4b1c-89e0-1dbcf7f815dd)
- [Vital signs](xref:HV_73822612-C15F-4B49-9E65-6AF369E55C65)

## Details
A person's cardiac profile is made up of a set of answers to common questions and measurements that indicate the cardiac condition of the person.

<a name='cardiac-profile'></a>

### Root element: cardiac-profile

A summary of a person's cardiac condition.

A person's cardiac profile is made up of a set of answers to common questions and measurements that indicate the cardiac condition of the person.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|date-time|1|1|The date/time when the cardiac profile answers and measurements were taken.|
on-hypertension-diet|boolean|0|1|Whether the person is on a hypertension correcting diet or not.|True if the person is on a hypertension correcting diet or false otherwise. This value, along with on-hypertension-medication, renal-failure-diagnosed, and diabetes-diagnosed can be used to determine a person's blood pressure zones.
on-hypertension-medication|boolean|0|1|Whether the person is on a hypertension correcting medication or not.|True if the person is on a hypertension correcting medication or false otherwise. This value, along with on-hypertension-diet, renal-failure-diagnosed, and diabetes-diagnosed can be used to determine a person's blood pressure zones.
renal-failure-diagnosed|boolean|0|1|Whether the person has been diagnosed with renal failure.|True if the person has been diagnosed with renal failure or false otherwise. This value, along with on-hypertension-diet, on-hypertension-medication, and diabetes-diagnosed can be used to determine a person's blood pressure zones.
diabetes-diagnosed|boolean|0|1|Whether the person has been diagnosed with diabetes.|True if the person has been diagnosed with diabetes or false otherwise. This value, along with on-hypertension-diet, on-hypertension-medication, and renal-failure-diagnosed can be used to determine a person's blood pressure zones.
has-family-heart-disease-history|boolean|0|1|Whether the person's family has a history of heart disease.|True if there has been heart disease diagnosed for a family member, or false otherwise.
has-family-stroke-history|boolean|0|1|Whether the person's family has a history of stroke.|True if there has been stroke diagnosed for a family member, or false otherwise.
has-personal-heart-disease-history|boolean|0|1|Whether the person has been diagnosed with heart disease.|True if the person has been diagnosed with heart disease, or false otherwise.
has-person-stroke-history|boolean|0|1|Whether the person has been diagnosed with a stroke.|True if the person has had a stroke, or false otherwise.

## Example
[!code-xml[Example](sample-xml/adaf49ad-8e10-49f8-9783-174819e97051.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/cardiac-profile.xsd)
[!code-xml[XSD schema](xsd/cardiac-profile.xsd)]
