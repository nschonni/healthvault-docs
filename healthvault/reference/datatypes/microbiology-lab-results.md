---
uid: HV_B8FCB138-F8E6-436A-A15D-E3A2D6916094
title: Microbiology lab test result
---

# Microbiology lab test result

## Overview

Property|Value
---|---
id|B8FCB138-F8E6-436A-A15D-E3A2D6916094
name|Microbiology lab test result
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.MicrobiologyLabResults](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.microbiologylabresults)
- [Microsoft.HealthVault.ItemTypes.MicrobiologyLabResults](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.microbiologylabresults)

## Related data types

- [Lab results](xref:HV_5800eab5-a8c2-482a-a4d6-f1db25ae08c3)
- [Radiology result](xref:HV_E4911BD3-61BF-4E10-AE78-9C574B888B8F)

## Details
This thing type describes the microbiology lab test results of a person.

<a name='microbiology-lab-results'></a>

### Root element: microbiology-lab-results

Information related to a microbiology lab test.

This thing type describes the microbiology lab test results of a person.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time of the report.|
lab-tests|[lab-test-type](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#lab-test-type)|0|unbounded|Type of microbiology lab test.|
sensitivity-agent|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Free form description of agent for a sensitivity type.|
sensitivity-value|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Free form description of value for a sensitivity type.|
sensitivity-interpretation|string|0|1|Free form description of interpretation for a sensitivity type.|
specimen-type|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Free form description of specimen type for a microbiology lab test.|
organism-name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Free form description of organism name for a microbiology lab test.|
organism-comment|string|0|1|Free form organism comment for a microbiology lab test.|

## Example
[!code-xml[Example](../sample-xml/B8FCB138-F8E6-436A-A15D-E3A2D6916094.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/microbiology-lab-results.xsd)
[!code-xml[XSD schema](../xsd/microbiology-lab-results.xsd)]
