---
uid: HV_5800eab5-a8c2-482a-a4d6-f1db25ae08c3
title: Lab results
---

# Lab results

## Overview

Property|Value
---|---
id|5800eab5-a8c2-482a-a4d6-f1db25ae08c3
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
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
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
> note|string|0|1|A note that augments the laboratory result.|There are two scenarios in which a note is typically added: A note may provide additional information about interpreting the result beyond what is stored in the ranges associated with the value. Or, a note may be use to provide the textual result of a lab test that does not have a measured value. Formatting: Notes may come from systems that require a line-based approach to textual display. To support this, applications should render the spaces and newlines in the note, and use a fixed-width font. The form transform for this type shows one way to do this.|[lab-status](xref:HV_3ab6ab27-a536-4209-b098-644b8dd835bb)
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
> A range related to a specific test result.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> type|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The type of the range.||Contact the HealthVault team to help define this vocabulary.
> text|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The range expressed as text.|The text element is used in two different ways: When a numeric range is used, the text element should contain a textual version of the numeric range. When the range is non-numeric, the text element contains the range and the range value is omitted. The range may also be coded to a vocabulary. Examples: A color range (such as clear to yellow) would be coded using by setting the text element to "clear to yellow", and by assigning a code from an appropriate vocabulary. A numeric range (such as 0.5 - 1.6) would be stored in the minimum and maximum elements of the value, and additionally would be coded by setting the text element to "0.5 - 1.6".|Contact the HealthVault team to help define this vocabulary.
> value|[test-result-range-value](#test-result-range-value)|0|1|The minimum and maximum of the range.|The minimum or maximum value may be omitted to specify open-ended ranges. Example: The range "greater than 3.5" would be coded by setting the minimum to 3.5 and omitting the maximum.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='test-result-range-value'></a>
>
> ### test-result-range-value
>
> A pair of doubles used to create a range.
>
> The minimum or maximum value may be omitted to specify open-ended ranges.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> minimum-range|double|0|1|The minimum value for the range.|
> maximum-range|double|0|1|The maximum value for the range.|
>
>

## Example
[!code-xml[Example](../sample-xml/5800eab5-a8c2-482a-a4d6-f1db25ae08c3.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/lab-test-results.xsd)
[!code-xml[XSD schema](../xsd/lab-test-results.xsd)]
