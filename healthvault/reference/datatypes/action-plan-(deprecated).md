---
uid: HV_10291bcd-6c33-4297-86df-167fedefd6d8
title: Action plan (deprecated)
---

# Action plan (deprecated)

## Overview

Property|Value
---|---
id|10291bcd-6c33-4297-86df-167fedefd6d8
name|Action plan (deprecated)
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.ActionPlanWrapper](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.actionplanwrapper)
- [Microsoft.HealthVault.ItemTypes.ActionPlanWrapper](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.actionplanwrapper)

## Details
This class is deprecated. Applications should interact with action plan data through the action plan methods in the HealthVault REST APIs. new types.

<a name='action-plan'></a>

### Root element: action-plan

Defines action plan for a user, including plan, task, and tracking.

The action plan entity is stored in "value" blob as base64 encoded json format. The data stored is intended to be a generic way for multiple types of entities related to action plan, such as plan, task and task tracking.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
headers|[headers](#headers)|0|1|A collection of header information associated with this entity.|
type|string|1|1|Full type name of wrapped object.|
value|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|Base 64 encoded json serialization of action plan entity.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='headers'></a>
>
> ### headers
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> header|[HeaderItem](#HeaderItem)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='HeaderItem'></a>
>
> ### HeaderItem
>
> An item of header information.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|The name of the header item.|
> value|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|The value of the header item.|
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/action-plan.xsd)
[!code-xml[XSD schema](../xsd/action-plan.xsd)]
