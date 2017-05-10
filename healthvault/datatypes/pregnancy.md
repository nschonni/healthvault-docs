---
uid: HV_46d485cf-2b84-429d-9159-83152ba801f4
title: Pregnancy
---

# Pregnancy

## Overview

Property|Value
---|---
id|46d485cf-2b84-429d-9159-83152ba801f4
name|Pregnancy
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Pregnancy](https://go.microsoft.com/fwlink/?LinkID=136215)

## Details
A record of a pregnancy and delivery.

<a name='pregnancy'></a>

### Root element: pregnancy

Record of a pregnancy.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
due-date|approx-date|0|1|The approximate due date.||
last-menstrual-period|date|0|1|The first day of the last menstrual cycle.||
conception-method|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The method of conception.||[conception-methods](xref:HV_b7d9fcb4-04f3-423e-a70b-93e0f55833bf)
fetus-count|[nonNegativeInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeInt)|0|1|The number of fetuses.||
gestational-age|[positiveInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveInt)|0|1|Number of weeks of pregnancy at the time of delivery.||
delivery|[Delivery](#Delivery)|0|unbounded|Details about the resolution for each fetus.||

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Delivery'></a>
>
> ### Delivery
>
> Details about the delivery.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> location|[Organization](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#Organization)|0|1|The place where the delivery occurred.||
> time-of-delivery|approx-date-time|0|1|The data and time of the delivery.||
> labor-duration|[positiveDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#positiveDouble)|0|1|The duration of the labor in minutes.||
> complications|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|unbounded|Any complications during labor and delivery.||[delivery-complications](xref:HV_12aad742-5949-49c6-baf8-a644fa567946)
> anesthesia|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|unbounded|The anesthesia used during labor and delivery.||[anesthesia-methods](xref:HV_b9e90ee6-85b6-4f01-a73f-7483835ed50d)
> delivery-method|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The method of the delivery.||[delivery-methods](xref:HV_fd9c5932-bbc9-4f63-be3d-aef3f7f44bc8)
> outcome|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The outcome for a fetus.||[pregnancy-outcomes](xref:HV_624ca521-3fa3-474b-b10b-c07e00b133c9)
> baby|[Baby](#Baby)|0|1|Details about the baby.||
> note|string|0|1|Additional information about the delivery.||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Baby'></a>
>
> ### Baby
>
> Details about the baby.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> name|[name](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#name)|0|1|The name of the baby.||
> gender|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The gender of the baby.||[gender-types](xref:HV_905c0eac-33ea-4a79-86ba-ad82c87077f6)
> weight|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The birth weight of the baby.||
> length|[length-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#length-value)|0|1|The birth length of the baby.||
> head-circumference|[length-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#length-value)|0|1|The circumference of the baby's head.||
> note|string|0|1|Additional information about the baby.||
>
>

## Example
[!code-xml[Example](sample-xml/46d485cf-2b84-429d-9159-83152ba801f4.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/pregnancy.xsd)
[!code-xml[XSD schema](xsd/pregnancy.xsd)]
