---
uid: HV_d33a32b2-00de-43b8-9f2a-c4c7e9f580ec
title: Status
---

# Status

## Overview

Property|Value
---|---
id|d33a32b2-00de-43b8-9f2a-c4c7e9f580ec
name|Status
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## Details
Each status is related to one or more health record items which are stored as related items. For example, the HealthVault shell creates a status item to indicate that a CCR or CCD document has been reconciled, and that document is linked using a related item.

<a name='status'></a>

### Root element: status

Stores status information about a specific health record item.

Each status is related to one or more health record items which are stored as related items. For example, the HealthVault Shell creates a status item to indicate that a CCR or CCD document has been reconciled, and that document is linked using a related item.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
status-type|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The specific type of status.||[status-types](xref:HV_0cffe3d9-042d-4950-bf45-8d7aeddb5e52)
text|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|Additional information about the status.||

## Example
[!code-xml[Example](sample-xml/d33a32b2-00de-43b8-9f2a-c4c7e9f580ec.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/status.xsd)
[!code-xml[XSD schema](xsd/status.xsd)]
