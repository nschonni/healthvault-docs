---
uid: HV_4B18AEB6-5F01-444C-8C70-DBF13A2F510B
title: Appointment
---

# Appointment

## Overview

Property|Value
---|---
id|4B18AEB6-5F01-444C-8C70-DBF13A2F510B
name|Appointment
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Appointment](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.appointment)
- [Microsoft.HealthVault.ItemTypes.Appointment](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.appointment)

## Related data types

- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
- [Discharge summary](xref:HV_02EF57A2-A620-425A-8E92-A301542CCA54)
- [Contact](xref:HV_25c94a9f-9d3d-4576-96dc-6791178a8143)
- [Health event](xref:HV_1572af76-1653-4c39-9683-9f9ca6584ba3)
- [Health journal entry](xref:HV_21d75546-8717-4deb-8b17-a57f48917790)
- [Insurance plan](xref:HV_9366440c-ec81-4b89-b231-308a4c4d70ed)

## Details
This thing type describes the appointment a person has.

<a name='appointment'></a>

### Root element: appointment

Information related to a medical appointment.

This thing type describes the appointment a person has.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time of the appointment.||
duration|[duration-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#duration-value)|0|1|The duration of the medical appointment.||
service|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The type of service provided by the medical appointment.||
clinic|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|The clinic information for the medical appointment.||
specialty|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The specialty for the medical appointment.||medical-specialties-
status|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The status of the medical appointment.||appointment-status-
care-class|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The care class for a medical appointment.||appointment-care-class-

## Example
[!code-xml[Example](../sample-xml/4B18AEB6-5F01-444C-8C70-DBF13A2F510B.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/appointment.xsd)
[!code-xml[XSD schema](../xsd/appointment.xsd)]
