---
uid: HV_03efe378-976a-42f8-ae1e-507c497a8c6d
title: Asthma inhaler usage
---

# Asthma inhaler usage

## Overview

Property|Value
---|---
id|03efe378-976a-42f8-ae1e-507c497a8c6d
name|Asthma inhaler usage
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.AsthmaInhalerUse](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.asthmainhaleruse)
- [Microsoft.HealthVault.ItemTypes.AsthmaInhalerUse](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.asthmainhaleruse)

## Related data types

- [Asthma inhaler](xref:HV_ff9ce191-2096-47d8-9300-5469a9883746)
- [Medical device](xref:HV_EF9CF8D5-6C0B-4292-997F-4047240BC7BE)
- [Medication](xref:HV_30cafccc-047d-4288-94ef-643571f7919d)

## Details
Note, this may wrap more than one "dose" if multiple puffs per use are prescribed.

<a name='asthma-inhaler-use'></a>

### Root element: asthma-inhaler-use

A single use of an inhaler.

Note, this may wrap more than one "dose" if multiple puffs per use are prescribed.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time when the inhaler was used.||
drug|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The name of the drug in the canister.|For example, 'ventolin' or 'albuterol'.|
strength|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The textual description of the drug strength.|For example, '44 mcg / puff'.|
dose-count|[int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)|0|1|The number of doses used.|A dose is one puff.|
device-id|string|0|1|The unique id or serial number for the canister.|The id can be used to correlate uses.|
dose-purpose|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|An enumeration of the possible purposes the inhaler usage is targeting.|Examples include; relief (the dose purpose is intended to relieve immediate asthma symptoms), prevention (the dose purpose is intended to prevent asthma symptoms), control (the dose purpose is intended to control the impact of current asthma symptoms), other (the dose purpose is known, but other than to relieve, prevent or control asthma symptoms), and undefined (there is not enough information about the inhaler usage to discern purpose).|[inhaler-dose-purpose](xref:HV_8b89f3d9-027c-4f0e-bb02-8f407275ec72)

## Example
[!code-xml[Example](../sample-xml/03efe378-976a-42f8-ae1e-507c497a8c6d.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/asthma-inhaler-use.xsd)
[!code-xml[XSD schema](../xsd/asthma-inhaler-use.xsd)]
