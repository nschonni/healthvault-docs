---
uid: HV_074e122a-335a-4a47-a63d-00a8f3e79e60
title: Meal definition
---

# Meal definition

## Overview

Property|Value
---|---
id|074e122a-335a-4a47-a63d-00a8f3e79e60
name|Meal definition
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.MealDefinition](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.mealdefinition)
- [Microsoft.HealthVault.ItemTypes.MealDefinition](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.mealdefinition)

## Related data types

- [Daily dietary intake](xref:HV_9c29c6b9-f40e-44ff-b24e-fba6f3074638)
- [Food & drink](xref:HV_089646a6-7e25-4495-ad15-3e28d4c1a71d)

## Details
This type should not be used for storing consumption data; it is intended only to define the contents of what a meal may contain.

<a name='meal-definition'></a>

### Root element: meal-definition

Information related to a meal.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|Name of the meal.|This can refer to a user-defined name or specific meals from standard meal plans.
meal-type|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Represents the type of meal, such as breakfast or lunch.|Uses dietary-intake-meals vocab.
description|string1024nw|0|1|Description of the meal.|
dietary-items|[DietaryItems](#DietaryItems)|0|1|List of items included in the meal.|This section does not contain consumption information. To record meal consumption, an application should store DietaryIntake things on the record for each item included in this section.

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DietaryItems'></a>
>
> ### DietaryItems
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> dietary-item|[DietaryIntake](xref:HV_089646a6-7e25-4495-ad15-3e28d4c1a71d#DietaryIntake)|1|unbounded|Dietary information of an item in a meal.|
>
>

## Example
[!code-xml[Example](sample-xml/074e122a-335a-4a47-a63d-00a8f3e79e60.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/meal-definition.xsd)
[!code-xml[XSD schema](xsd/meal-definition.xsd)]
