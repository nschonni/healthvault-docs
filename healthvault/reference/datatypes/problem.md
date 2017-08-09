---
uid: HV_5E2C027E-3417-4CFC-BD10-5A6F2E91AD23
title: Medical problem
---

# Medical problem

## Overview

Property|Value
---|---
id|5E2C027E-3417-4CFC-BD10-5A6F2E91AD23
name|Medical problem
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Problem](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.problem)
- [Microsoft.HealthVault.ItemTypes.Problem](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.problem)

## Related data types

- [Condition](xref:HV_7ea7a1f9-880b-4bd4-b593-f5660f20eda8)

## Details
Note: We are in the process of merging the problem and condition types, and recommend that applications use the condition type instead of the problem type. This thing type describes the medical problem of a person.

<a name='problem'></a>

### Root element: problem

Information related to a medical problem (please see remarks).

Note: We are in the process of merging the problem and condition types, and recommend that applications use the condition type instead of the problem type. This thing type describes the medical problem of a person.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time of the medical problem.||
diagnosis|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|unbounded|Medical diagnosis.||[icd9cm](xref:HV_2f2cbd57-24b2-443b-bcd1-fb7f6e11530d)
duration|[duration-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#duration-value)|0|unbounded|Duration for a medical problem.||
importance|[importance](#importance)|0|1|||

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='importance'></a>
>
> ### importance
>
> ### Restriction
>
> Base type: [positiveInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveInt)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> maxInclusive|5||
>
>

## Example
[!code-xml[Example](../sample-xml/5E2C027E-3417-4CFC-BD10-5A6F2E91AD23.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/problem.xsd)
[!code-xml[XSD schema](../xsd/problem.xsd)]
