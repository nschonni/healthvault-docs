---
uid: HV_92ba621e-66b3-4a01-bd73-74844aed4f5b
title: Personal demographic information
---

# Personal demographic information

## Overview

Property|Value
---|---
id|92ba621e-66b3-4a01-bd73-74844aed4f5b
name|Personal demographic information
immutable|False
singleton|True
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Personal](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.personal)
- [Microsoft.HealthVault.ItemTypes.Personal](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.personal)

## Related data types

- [Basic demographic information](xref:HV_3b3e6b16-eb69-483c-8d7e-dfe116ae6092)
- [Personal contact information](xref:HV_162dd12d-9859-4a66-b75f-96760d67072b)
- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Personal picture](xref:HV_a5294488-f865-4ce3-92fa-187cd3b58930)

## Details
This data is more sensitive than the "basic" thing type data and may not be disclosed as freely as the "basic" thing type.

<a name='personal'></a>

### Root element: personal

Personal demographic information this is more sensitve in nature.

This data is more sensitive than the "basic" thing type data and may not be disclosed as freely as the "basic" thing type.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
name|[name](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#name)|0|1|A more complete representation of the person's name.||
birthdate|[date-time](xref:HV_File_dates#date-time)|0|1|The date and time of the person's birth, or as close as possible.||
blood-type|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|ABO and Rhesus +/- blood type.|Or as much as is known about the blood type.|[blood-types](xref:HV_b365d7f9-88a3-4506-9062-cfe5e9f7f3a3)
ethnicity|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The person's ethnicity.|This value should come from the Microsoft Health Lexicon vocabulary 'ethnicity-types'.|ethnicity
ssn|string|0|1|Use this element to store the deployment-specific national identifier.||
marital-status|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|A person's marital status.|This value should come from the Microsoft Health Lexicon vocabulary 'marital-status'.|[marital-status](xref:HV_bff128b7-110a-41f9-93a2-e1cf52346c81)
employment-status|string|0|1|A free-form representation of the person's employment status.||
is-deceased|boolean|0|1|True if person is deceased.||
date-of-death|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|A date and time of death, if deceased.||
religion|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|A person's religion.|This value should come from the Microsoft Health Lexicon vocabulary 'religion'.|[religion](xref:HV_6a17396c-f164-4ce9-b2e9-2c20ada2f95d)
is-veteran|boolean|0|1|True if person is veteran.||
highest-education-level|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|A free-form representation of the person's highest level of education.|This value should come from the Microsoft Health Lexicon vocabulary 'education-level'.|[education-level](xref:HV_28868b97-e476-47a0-8fc0-7d4565605e31)
is-disabled|boolean|0|1|True if person has a disability.||
organ-donor|string|0|1|A free-form representation of the person's organ donor status.||

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/personal.xsd)
[!code-xml[XSD schema](../xsd/personal.xsd)]
