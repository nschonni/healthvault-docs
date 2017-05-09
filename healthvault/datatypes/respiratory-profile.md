---
uid: HV_5fd15cb7-b717-4b1c-89e0-1dbcf7f815dd
title: Respiratory profile
---

# Respiratory profile

## Overview

Property|Value
---|---
id|5fd15cb7-b717-4b1c-89e0-1dbcf7f815dd
name|Respiratory profile
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Respiratory profile](https://go.microsoft.com/fwlink/?LinkID=136227)

## Related data types

- [Cardiac profile](xref:HV_adaf49ad-8e10-49f8-9783-174819e97051)
- [Peak flow](xref:HV_5d8419af-90f0-4875-a370-0f881c18f6b3)
- [Vital signs](xref:HV_73822612-C15F-4B49-9E65-6AF369E55C65)

## Details
A person's respiratory profile is made up of a set of answers to common questions and measurements that indicate the respiratory condition of the person.

<a name='respiratory-profile'></a>

### Root element: respiratory-profile

A summary of a person's respiratory condition.

A person's respiratory profile is made up of a set of answers to common questions and measurements that indicate the respiratory condition of the person.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|date-time|1|1|The date/time when the respiratory profile answers and measurements were taken.|
expiratory-flow-red-zone-upper-boundary|[flow-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#flow-value)|0|1|The upper zone boundary for the red zone.|This zone covers flow between 0 and the specified value (measured in L/s).
expiratory-flow-orange-zone-upper-boundary|[flow-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#flow-value)|0|1|The upper zone boundary for the orange zone.|This zone covers flow between the red zone upper boundary and the specified value (measured in L/s).
expiratory-flow-yellow-zone-upper-boundary|[flow-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#flow-value)|0|1|The upper zone boundary for the yellow zone.|This zone covers flow between the orange zone upper boundary and the specified value (measured in L/s).

## Example
[!code-xml[Example](sample-xml/5fd15cb7-b717-4b1c-89e0-1dbcf7f815dd.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/respiratory-profile.xsd)
[!code-xml[XSD schema](xsd/respiratory-profile.xsd)]
