---
uid: HV_3d817dbe-af42-4a9d-a553-d1298b4d08fc
title: Immunization
---

# Immunization

## Overview

Property|Value
---|---
id|3d817dbe-af42-4a9d-a553-d1298b4d08fc
name|Immunization
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.ImmunizationV1](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.immunizationv1)
- [Microsoft.HealthVault.ItemTypes.ImmunizationV1](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.immunizationv1)

## Related data types

- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
- [Medication](xref:HV_30cafccc-047d-4288-94ef-643571f7919d)

## Details
Note: Please use the new version of this data type instead of this version.

<a name='immunization'></a>

### Root element: immunization

Information related to an immunization.

Note: Please use the new version of this data type instead of this version.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The name of the immunization.|Codes for immunizations can be found in the Microsoft Health Lexicon vocabulary 'immunizations' by calling GetVocabulary.|[immunizations](xref:HV_bccc06cf-e9ac-489a-9bbd-f6b4a208c0cf)
administration-date|approx-date-time|1|1|The date and time the immunization.||
administrator|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|The name of the administrator of the immunization.||
manufacturer|string|0|1|The manufacturer of the immunization medication.||
lot|string|0|1|The manufacturing lot of the immunization medication.||
route|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Route of medication.||[medication-routes](xref:HV_e043c73c-289b-474a-aea2-17f691dd374e)
expiration-date|approx-date|0|1|The expiration date of the immunization medication.||
sequence|string|0|1|The sequence the immunization was administered.||
anatomic-surface|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The anatomic surface to which immunization was administered.||
adverse-event|string|0|1|A description of any adverse event to the immunization.||
consent|string|0|1|The consent description for the immunization.||

## Example
[!code-xml[Example](sample-xml/3d817dbe-af42-4a9d-a553-d1298b4d08fc.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/immunization.1.xsd)
[!code-xml[XSD schema](xsd/immunization.1.xsd)]
