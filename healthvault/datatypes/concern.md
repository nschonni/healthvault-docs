---
uid: HV_AEA2E8F2-11DD-4A7D-AB43-1D58764EBC19
title: Concern
---

# Concern

## Overview

Property|Value
---|---
id|AEA2E8F2-11DD-4A7D-AB43-1D58764EBC19
name|Concern
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Concern](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.concern)
- [Microsoft.HealthVault.ItemTypes.Concern](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.concern)

## Related data types

- [Condition](xref:HV_7ea7a1f9-880b-4bd4-b593-f5660f20eda8)
- [Emotional state](xref:HV_4b7971d6-e427-427d-bf2c-2fbcf76606b3)

## Details
Concerns are more general than conditions, and are about the person's feelings. Examples include "concerned about managing a chronic condition", "family issues", "emotional issues", etc.

<a name='concern'></a>

### Root element: concern

A concern that a person has about a condition or life issue.

Concerns are more general than conditions, and are about the person's feelings. Examples include "concerned about managing a chronic condition", "family issues", "emotional issues", etc.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
description|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|Description of the concern.||concern-description
status|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The state of the concern.|Examples include active or inactive.|[concern-status](xref:HV_6b3c456a-07c6-4bab-93ac-c93695fa7e04)

## Example
[!code-xml[Example](sample-xml/AEA2E8F2-11DD-4A7D-AB43-1D58764EBC19.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/concern.xsd)
[!code-xml[XSD schema](xsd/concern.xsd)]
