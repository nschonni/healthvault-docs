---
uid: HV_bf516a61-5252-4c28-a979-27f45f62f78d
title: Basic demographic information
---

# Basic demographic information

## Overview

Property|Value
---|---
id|bf516a61-5252-4c28-a979-27f45f62f78d
name|Basic demographic information
immutable|False
singleton|True
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Basic](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.basic)
- [Microsoft.HealthVault.ItemTypes.Basic](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.basic)

## Related data types

- [Personal contact information](xref:HV_162dd12d-9859-4a66-b75f-96760d67072b)
- [Personal demographic information](xref:HV_92ba621e-66b3-4a01-bd73-74844aed4f5b)
- [Personal picture](xref:HV_a5294488-f865-4ce3-92fa-187cd3b58930)

## Details
Unlike the personal demographic information, this data is consider to be less sensitive in nature.

<a name='basic'></a>

### Root element: basic

Defines a set of data about the health record that is considered not to be personally-identifiable.

Unlike the personal demographic information, this data is consider to be less sensitive in nature.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
gender|[gender](#gender)|0|1||
birthyear|[birthyear](#birthyear)|0|1||
country|[country](#country)|0|1||
postcode|string|0|1|The country/region specific postal code.|
city|string|0|1|The city of residence.|
state|string|0|1|The state or province of residence.|
firstdow|[firstdow](#firstdow)|0|1||
language|[language](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#language)|0|unbounded|The language(s) a person speaks.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='gender'></a>
>
> ### gender
>
> The person's gender.
>
> [m]ale or [f]emale
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|m|Value indicating a male.|
> enumeration|f|Value indicating a female.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='birthyear'></a>
>
> ### birthyear
>
> The year the person was born.
>
> A year between 1000 and 3000.
>
> ### Restriction
>
> Base type: [int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minInclusive|1000||
> maxInclusive|3000||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='country'></a>
>
> ### country
>
> The country/region of residence as an ISO-3166 two character code.
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> pattern|[a-zA-Z][a-zA-Z]||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='firstdow'></a>
>
> ### firstdow
>
> The users preferred first day of the week.
>
> The user can define which day of the week they want calendars and weekly computations to start with. 1 = Sunday 2 = Monday 3 = Tuesday 4 = Wednesday 5 = Thursday 6 = Friday 7 = Saturday
>
> ### Restriction
>
> Base type: [int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minInclusive|1||
> maxInclusive|7||
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/basic.xsd)
[!code-xml[XSD schema](../xsd/basic.xsd)]
