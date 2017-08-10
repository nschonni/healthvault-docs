---
uid: HV_02EF57A2-A620-425A-8E92-A301542CCA54
title: Discharge summary
---

# Discharge summary

## Overview

Property|Value
---|---
id|02EF57A2-A620-425A-8E92-A301542CCA54
name|Discharge summary
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.DischargeSummary](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.dischargesummary)
- [Microsoft.HealthVault.ItemTypes.DischargeSummary](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.dischargesummary)

## Related data types

- [Appointment](xref:HV_4B18AEB6-5F01-444C-8C70-DBF13A2F510B)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
- [Explanation of benefits (EOB)](xref:HV_356fbba9-e0c9-4f4f-b0d9-4594f2490d2f)
- [Insurance plan](xref:HV_9366440c-ec81-4b89-b231-308a4c4d70ed)

## Details
This thing type describes the discharge summary of a person.

<a name='discharge-summary'></a>

### Root element: discharge-summary

Information related to the discharge summary.

This thing type describes the discharge summary of a person.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time the report.||
type|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The clinical type for discharge summary.||
category|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The clinical category for discharge summary.||
setting|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The clinical setting for discharge summary.||[note-setting](xref:HV_9ce8fcf8-a62b-4169-8289-2219ff3e569c)
specialty|string|0|1|The medical specialty for discharge summary.||[medical-specialties](xref:HV_a6863dae-4758-4249-9c4c-a27d164ab538)
text|string|0|1|The discharge summary textual content.||
primary-provider|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|The primary provider for discharge summary.||
primary-provider-endorsement|[date-time](xref:HV_File_dates#date-time)|0|1|The primary provider endorsement for discharge summary.||
secondary-provider|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|The secondary provider for discharge summary.||
secondary-provider-endorsement|[date-time](xref:HV_File_dates#date-time)|0|1|The secondary provider endorsement for discharge summary.||
discharge-date-time|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|The date and time of discharge.||
admitting-diagnosis|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The admitting diagnosis for discharge summary.||[icd9cm](xref:HV_2f2cbd57-24b2-443b-bcd1-fb7f6e11530d)
principal-diagnosis|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The principal diagnonsis for discharge summary.||[icd9cm](xref:HV_2f2cbd57-24b2-443b-bcd1-fb7f6e11530d)
additional-diagnosis|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|unbounded|Additional diagnosis for discharge summary.||[icd9cm](xref:HV_2f2cbd57-24b2-443b-bcd1-fb7f6e11530d)
principal-procedure-physician|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|The primary procedure physician for discharge summary.||
principal-procedure|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The principal procedure for discharge summary.||
additional-procedure|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|unbounded|Any additional procedure for discharge summary.||

## Example
[!code-xml[Example](../sample-xml/02EF57A2-A620-425A-8E92-A301542CCA54.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/discharge-summary.xsd)
[!code-xml[XSD schema](../xsd/discharge-summary.xsd)]
