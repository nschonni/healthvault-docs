---
uid: HV_E4911BD3-61BF-4E10-AE78-9C574B888B8F
title: Radiology result
---

# Radiology result

## Overview

Property|Value
---|---
id|E4911BD3-61BF-4E10-AE78-9C574B888B8F
name|Radiology result
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.RadiologyLabResults](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.radiologylabresults)
- [Microsoft.HealthVault.ItemTypes.RadiologyLabResults](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.radiologylabresults)

## Related data types

- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
- [Lab results](xref:HV_5800eab5-a8c2-482a-a4d6-f1db25ae08c3)
- [Microbiology lab test result](xref:HV_B8FCB138-F8E6-436A-A15D-E3A2D6916094)

## Details
This thing type describes the radiology lab results a person has.

<a name='radiology-lab-results'></a>

### Root element: radiology-lab-results

Information related to a radiology lab-results.

This thing type describes the radiology lab results a person has.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time the lab results.|
title|string|0|1|Free form title for radiology lab results.|
anatomic-site|string|0|1|The anatomic site description in a radiology lab results.|
result-text|string|0|1|The textual content for radiology lab results.|

## Example
[!code-xml[Example](../sample-xml/E4911BD3-61BF-4E10-AE78-9C574B888B8F.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/radiology-lab-results.xsd)
[!code-xml[XSD schema](../xsd/radiology-lab-results.xsd)]
