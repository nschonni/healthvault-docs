---
uid: HV_52bf9104-2c5e-4f1f-a66d-552ebcc53df7
title: Allergy
---

# Allergy

## Overview

Property|Value
---|---
id|52bf9104-2c5e-4f1f-a66d-552ebcc53df7
name|Allergy
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Allergy](https://go.microsoft.com/fwlink/?LinkID=136035)

## Related data types

- [Allergic episode](xref:HV_d65ad514-c492-4b59-bd05-f3f6cb43ceb3)
- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
- [Medication](xref:HV_30cafccc-047d-4288-94ef-643571f7919d)

## Related articles

- [Emergency Preparedness](http://go.microsoft.com/fwlink/?LinkId=513260)

## Details
This thing type describes an allergy a person has. The allergic-episode type defines an occurrence of that episode resulting in symptoms.

<a name='allergy'></a>

### Root element: allergy

Information related to an allergy.

This thing type describes an allergy a person has. The allergic-episode type defines an occurrence of that episode resulting in symptoms.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The name of the allergy.||
reaction|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|A description of a typical reaction to the allergen.||[icd9cm](xref:HV_2f2cbd57-24b2-443b-bcd1-fb7f6e11530d)
first-observed|approx-date-time|0|1|The approximate date and time when the allergy was first observed.||
allergen-type|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The allergen type provides a general category of the source of the allergic reaction.|Examples include medication (penicillin, sulfonamides, etc.), food (peanuts, shell fish, wheat, etc.), animal (bee stings, canine, feline, etc.), plants (ragweed, birch, etc.), environmental (smoke, smog, dust, etc.).|[allergen-type](xref:HV_e8243650-d084-4944-a93c-a826c16c944a)
allergen-code|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The clinical allergen code.||[icd9cm](xref:HV_2f2cbd57-24b2-443b-bcd1-fb7f6e11530d)
treatment-provider|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|Information about the treatment provider for this allergy.||
treatment|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The possible treatment description for this allergy.||
is-negated|boolean|0|1|True if the allergic reation is negated with treatment.||

## Example
[!code-xml[Example](sample-xml/52bf9104-2c5e-4f1f-a66d-552ebcc53df7.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/allergy.xsd)
[!code-xml[XSD schema](xsd/allergy.xsd)]
