---
uid: HV_822a5e5a-14f1-4d06-b92f-8f3f1b05218f
title: Advance directive
---

# Advance directive

## Overview

Property|Value
---|---
id|822a5e5a-14f1-4d06-b92f-8f3f1b05218f
name|Advance directive
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.Directive](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.directive)
- [Microsoft.HealthVault.ItemTypes.Directive](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.directive)

## Related data types

- [Continuity of Care Document (CCD)](xref:HV_9c48a2b8-952c-4f5a-935d-f3292326bf54)
- [Continuity of Care Record (CCR)](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195)
- [Contact](xref:HV_25c94a9f-9d3d-4576-96dc-6791178a8143)
- [Healthcare proxy](xref:HV_7EA47715-CBA4-47F0-99D2-EB0A9FB4A85C)

## Details
An advance directive (or advance health directive) is legal directive when dealing with health related issues. Examples include living wills and power of attorney for health care.

<a name='directive'></a>

### Root element: directive

A single advance directive.

An advance directive (or advance health directive) is legal directive when dealing with health related issues. Examples include living wills and power of attorney for health care.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
start-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|1|1|The date and time of the directive started.|
stop-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|1|1|The date and time of the directive stops.|
description|string|0|1|Display information about this directive.|This should be a short set of information like DNR (Do not resuscitate). More verbose information should go into the common/note section of the thing.
full-resuscitation|boolean|0|1|The full resuscitation directive value.|True for full resuscitation.
prohibited-interventions|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|unbounded|The list of prohibited interventions in this directive.|
additional-instructions|string|0|1|Additional directive instructions.|This provides a free form type for additional directive instructions.
attending-physician|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|The attending physician details.|
attending-physician-endorsement|[date-time](xref:HV_File_dates#date-time)|0|1|The attending physician endorsement date and time|
attending-nurse|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|The attending nurse details.|
attending-nurse-endorsement|[date-time](xref:HV_File_dates#date-time)|0|1|The attending nurse endorsement details.|
expiration-date|[date-time](xref:HV_File_dates#date-time)|0|1|The date and time of patient expired.|
discontinuation-date|[approx-date-time](xref:HV_File_dates#approx-date-time)|0|1|The date and time clinical support was discontinued.|
discontinuation-physician|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|The attending physician details.|
discontinuation-physician-endorsement|[date-time](xref:HV_File_dates#date-time)|0|1|The attending physician discontinuation endorsement date and time|
discontinuation-nurse|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|The attending nurse details.|
discontinuation-nurse-endorsement|[date-time](xref:HV_File_dates#date-time)|0|1|The attending nurse discontinuation endorsement date and time|

## Example
[!code-xml[Example](../sample-xml/822a5e5a-14f1-4d06-b92f-8f3f1b05218f.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/directive.xsd)
[!code-xml[XSD schema](../xsd/directive.xsd)]
