---
uid: HV_6D39F894-F7AC-4FCE-AC78-B22693BF96E6
title: Family history
---

# Family history

## Overview

Property|Value
---|---
id|6D39F894-F7AC-4FCE-AC78-B22693BF96E6
name|Family history
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Old.FamilyHistoryV1](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.old.familyhistoryv1)

## Details
Note: Please use the new version of this data type instead of this version. <br /> This thing type describes the family history of a person.

<a name='family-history'></a>

### Root element: family-history

Information related to a family history.

Note: Please use the new version of this data type instead of this version. <br /> This thing type describes the family history of a person.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
condition|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The condition for the family history entry.||[icd9cm](xref:HV_2f2cbd57-24b2-443b-bcd1-fb7f6e11530d)
relationship|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The relationship for the family history entry.||[personal-relationship](xref:HV_9e22e9c5-a032-4375-8999-20c9d00954b9)
age-of-onset|[nonNegativeInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeInt)|0|1|The age of onset for the family history entry.||
date-of-birth|[approx-date](xref:HV_File_dates#approx-date)|0|1|The date of birth for the family history entry.||
age-of-resolution|[nonNegativeInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeInt)|0|1|The age of resolution for the family history entry.||
duration|[duration-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#duration-value)|0|1|The duration for the family history entry.||
severity|string|0|1|The severity for the family history entry.||
is-recurring|boolean|0|1|True if condition is recurring.||
status|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The status for the family history entry.||

## Example
[!code-xml[Example](../sample-xml/6D39F894-F7AC-4FCE-AC78-B22693BF96E6.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/family-history.1.xsd)
[!code-xml[XSD schema](../xsd/family-history.1.xsd)]
