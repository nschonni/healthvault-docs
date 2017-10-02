---
uid: HV_162dd12d-9859-4a66-b75f-96760d67072b
title: Personal contact information
---

# Personal contact information

## Overview

Property|Value
---|---
id|162dd12d-9859-4a66-b75f-96760d67072b
name|Personal contact information
immutable|False
singleton|True
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Contact](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.contact)
- [Microsoft.HealthVault.ItemTypes.Contact](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.contact)

## Related data types

- [Basic demographic information](xref:HV_3b3e6b16-eb69-483c-8d7e-dfe116ae6092)
- [Care plan](xref:HV_415c95e0-0533-4d9c-ac73-91dc5031186c)
- [Contact](xref:HV_25c94a9f-9d3d-4576-96dc-6791178a8143)
- [Personal demographic information](xref:HV_92ba621e-66b3-4a01-bd73-74844aed4f5b)

## Details
This data should not be confused with the 'person' type which is contact information for an emergency contact or someone else related to the health record.

<a name='contact'></a>

### Root element: contact

This is the contact information for the person owning a health record in Microsoft HealthVault.

This data should not be confused with the 'person' type which is contact information for an emergency contact or someone else related to the health record.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
contact|[Contact](xref:HV_25c94a9f-9d3d-4576-96dc-6791178a8143)|1|1|Contact information for the person owning the health record in Microsoft HealthVault.|

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/contact.xsd)
[!code-xml[XSD schema](../xsd/contact.xsd)]
