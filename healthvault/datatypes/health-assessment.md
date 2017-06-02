---
uid: HV_58fd8ac4-6c47-41a3-94b2-478401f0e26c
title: Health assessment
---

# Health assessment

## Overview

Property|Value
---|---
id|58fd8ac4-6c47-41a3-94b2-478401f0e26c
name|Health assessment
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.HealthAssessment](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.healthassessment)
- [Microsoft.HealthVault.ItemTypes.HealthAssessment](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.healthassessment)

## Details
Examples of health assessment include high blood pressure assessment and diabetes assessment.

<a name='health-assessment'></a>

### Root element: health-assessment

Contains the results of a health assessment.

Examples of health assessment include high blood pressure assessment and diabetes assessment.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|date-time|1|1|The date the assessment was completed.||
name|string|1|1|The application's name for the assessment.|Example: Fabrikam's Heart Risk Assessment.|
category|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The type of the assessment.|Examples: Heart assessment, diabetes assessment, colon cancer assessment. <br /> Contact the HealthVault team to help define the preferred vocabulary.|[health-assessment-category](xref:HV_760248f8-e2b5-4484-841f-3741f30c75d9)
result|[Assessment](#Assessment)|1|unbounded|The results for this assessment.|Example: High blood pressure, low risk.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Assessment'></a>
>
> ### Assessment
>
> A single assessment, containing the name and value of the assessed area.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The name of the assessed area.|Examples: Heart attack risk, high blood pressure. <br /> Contact the HealthVault team to help define the preferred vocabulary.|[health-assessment-name](xref:HV_9ac40637-0064-4123-94f8-ad03fd399e52)
> value|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|unbounded|The calculated value of the assessed area.|Values may be coded using a specific set of values. <br /> Example: Low/Medium/High risk. <br /> A list of vocabularies may be found in the preferred vocabulary. Contact the HealthVault team to help define the preferred vocabulary.|[health-assessment-value-sets](xref:HV_c91bb543-f16d-4c74-80fa-99b0205a3ea3)
> group|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Additional information that can be used to organize the results.|The group is used to specify which group a specific result is in. <br /> For example, the supporting assessments that follow a main assessment are coded to indicate that they are supporting by specifying the "supporting" code. <br /> Contact the HealthVault team to help define the preferred vocabulary.|[health-assessment-groups](xref:HV_2a145251-d62f-4f45-ad72-a1eac99bf05f)
>
>

## Example
[!code-xml[Example](sample-xml/58fd8ac4-6c47-41a3-94b2-478401f0e26c.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/health-assessment.xsd)
[!code-xml[XSD schema](xsd/health-assessment.xsd)]
