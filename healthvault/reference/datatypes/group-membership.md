---
uid: HV_66ac44c7-1d60-4e95-bb5b-d21490e91057
title: Group membership
---

# Group membership

## Overview

Property|Value
---|---
id|66ac44c7-1d60-4e95-bb5b-d21490e91057
name|Group membership
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.GroupMembership](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.groupmembership)
- [Microsoft.HealthVault.ItemTypes.GroupMembership](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.groupmembership)

## Related data types

- [Group membership activity](xref:HV_e75fa095-31ed-4b30-b5f7-463963b5e734)

## Details
Memberships of the record owner.

<a name='group-membership'></a>

### Root element: group-membership

Memberships of the record owner.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
membership|[group-membership-type](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#group-membership-type)|0|unbounded|A list of memberships held by the record owner.|
expires|[date-time](xref:HV_File_dates#date-time)|0|1|The expiration date of the memberships.|

## Example
[!code-xml[Example](../sample-xml/66ac44c7-1d60-4e95-bb5b-d21490e91057.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/group-membership.xsd)
[!code-xml[XSD schema](../xsd/group-membership.xsd)]
