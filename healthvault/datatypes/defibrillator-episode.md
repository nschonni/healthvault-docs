---
uid: HV_a3d38add-b7b2-4ccd-856b-9b14bbc4e075
title: Defibrillator episode
---

# Defibrillator episode

## Overview

Property|Value
---|---
id|a3d38add-b7b2-4ccd-856b-9b14bbc4e075
name|Defibrillator episode
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## Related data types

- [Cardiac profile](xref:HV_adaf49ad-8e10-49f8-9783-174819e97051)
- [Medical device](xref:HV_EF9CF8D5-6C0B-4292-997F-4047240BC7BE)
- [Heart rate](xref:HV_b81eb4a6-6eac-4292-ae93-3872d6870994)

## Details
Defibrillator episode data is usually transfered off defibrillator devices.

<a name='defibrillator-episode'></a>

### Root element: defibrillator-episode

Defines implantable defibrillator episode data.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|date-time|1|1|The date and time of the episode.||
episode-type-group|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Specifies the high-level grouping of the defibrillator episode. For example VT/VF represent episode type group for Ventricular Tachycardia / Ventricular Fibrillation.||[defibrillator-episode-type-groups](xref:HV_8852c750-bbb7-43eb-8934-7b6899653ef3)
episode-type|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Specifies the specific type of defibrillator episode. For example VT represents the episode type for Ventricular Tachycardia.||[defibrillator-episode-types](xref:HV_2b7ad830-ee1f-474d-a255-4ceff3503bc0)
data-source|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Data source of the defibrillator episode.|Data can come from different sources, for example Paceart device.|[defibrillator-data-sources](xref:HV_3ba1915c-58ba-4cf3-bf8c-d99bba77a9f8)
duration-in-seconds|[nonNegativeInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeInt)|0|1|The duration of the episode in seconds.||
episode-fields|[defibrillatorEpisodeFields](#defibrillatorEpisodeFields)|1|1|Name / value pairs for storing additional episode properties.||

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='defibrillatorEpisodeField'></a>
>
> ### defibrillatorEpisodeField
>
> Name / Value pair of defibrillator episode properties.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> field-name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|Name of the defibrillator episode property.||[defibrillator-episode-fields](xref:HV_1778f028-fea8-4076-b003-aa6adb628ec7)
> field-value|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|Value of the defibrillator episode property.||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='defibrillatorEpisodeFields'></a>
>
> ### defibrillatorEpisodeFields
>
> Collection of Name / Value pair storing additional defibrillator episode properties.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> episode-field|[defibrillatorEpisodeField](#defibrillatorEpisodeField)|0|unbounded|Episode field stores an episode property as a name/value pair.|
>
>

## Example
[!code-xml[Example](sample-xml/a3d38add-b7b2-4ccd-856b-9b14bbc4e075.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/defibrillator-episode.xsd)
[!code-xml[XSD schema](xsd/defibrillator-episode.xsd)]
