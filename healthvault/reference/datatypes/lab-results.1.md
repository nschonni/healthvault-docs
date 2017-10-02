---
uid: HV_F57746AF-9631-49DC-944E-2C92BEE0D1E9
title: Lab results
---

# Lab results

## Overview

Property|Value
---|---
id|F57746AF-9631-49DC-944E-2C92BEE0D1E9
name|Lab results
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.LabTestResults](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.labtestresults)
- [Microsoft.HealthVault.ItemTypes.LabTestResults](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.labtestresults)

## Related data types

- [Blood glucose](xref:HV_879e7c04-4e8a-4707-9ad3-b054df467ce4)
- [Cholesterol](xref:HV_98f76958-e34f-459b-a760-83c1699add38)
- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Microbiology lab test result](xref:HV_B8FCB138-F8E6-436A-A15D-E3A2D6916094)
- [Radiology result](xref:HV_E4911BD3-61BF-4E10-AE78-9C574B888B8F)

## Details
A series of lab test results.

<a name='lab-test-results'></a>

### Root element: lab-test-results

A series of lab test results.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|The date and time of the results.|
lab-group|[lab-test-results-group-type](#lab-test-results-group-type)|1|unbounded|A set of lab results.|
ordered-by|[Organization](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#Organization)|0|1|The person or organization that ordered the lab tests.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='lab-test-results-group-type'></a>
>
> ### lab-test-results-group-type
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> group-name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The name for this set of lab test results.||Contact the HealthVault team to help define this vocabulary.
> laboratory-name|[Organization](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#Organization)|0|1|Name of the laboratory that performed the tests.||
> status|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The overall status of this group and any sub-groups.|Examples of status include complete and pending.|Contact the HealthVault team to help define this vocabulary.
> sub-groups|[lab-test-results-group-type](#lab-test-results-group-type)|0|unbounded|Lab test results sub-groups.|If there is more than one group of results, they should be stored in the sub-groups.|
> results|[lab-test-result-type](#lab-test-result-type)|0|unbounded|A set of results for this group.|If there is a single set of results, they should be stored in results. If there are multiple ones, results should be omitted and the test results should be stored in sub-groups.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='lab-test-result-type'></a>
>
> ### lab-test-result-type
>
> A single laboratory test.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> when|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|The date of the laboratory test.||
> name|string|0|1|The name of the laboratory test.||
> substance|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The substance tested.||Contact the HealthVault team to help define this vocabulary.
> collection-method|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The collection method for the laboratory test.||Contact the HealthVault team to help define this vocabulary.
> clinical-code|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The clinical code for the laboratory test.||[LOINC](xref:HV_dd56c2b6-cbdd-4588-af7c-ae26df0521e3)
> value|[lab-test-result-value-type](#lab-test-result-value-type)|0|1|A clinical value within a laboratory result.|This type is define a clinical value within a laboratory result, including value, unit, reference and toxic ranges.|
> status|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The status of the laboratory result.|Examples of status include complete and pending.|[lab-status](xref:HV_3ab6ab27-a536-4209-b098-644b8dd835bb)
> note|string|0|1|A note that augments the laboratory result.|There are two scenarios in which a note is typically added: A note may provide additional information about interpreting the result beyond what is stored in the ranges associated with the value. Or, a note may be use to provide the textual result of a lab test that does not have a measured value.|[lab-status](xref:HV_3ab6ab27-a536-4209-b098-644b8dd835bb)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='lab-test-result-value-type'></a>
>
> ### lab-test-result-value-type
>
> A clinical value within a laboratory result.
>
> This type is define a clinical value within a laboratory result, including value, unit, reference and toxic ranges.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> measurement|[general-measurement](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#general-measurement)|1|1|The value of the laboratory result.||Contact the HealthVault team to help define this vocabulary.
> ranges|[test-result-range](#test-result-range)|0|unbounded|Ranges that are associated with this result.|Each test result can contain multiple ranges that are useful to interpret the result value. <br /> Examples include reference range and therapeutic range.|
> flag|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|unbounded|Flag for laboratory results.|Example values are normal, critical, high and low.|lab-results-flag
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='test-result-range'></a>
>
> ### test-result-range
>
> A range related to a specific test result
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> type|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The type of the range.||Contact the HealthVault team to help define this vocabulary.
> range|[double-range](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#double-range)|1|1|The minimum and maximum of the range.||
>
>

## Example
[!code-xml[Example](../sample-xml/F57746AF-9631-49DC-944E-2C92BEE0D1E9.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/lab-test-results.1.xsd)
[!code-xml[XSD schema](../xsd/lab-test-results.1.xsd)]
