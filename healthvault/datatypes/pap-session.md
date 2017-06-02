---
uid: HV_9085CAD9-E866-4564-8A91-7AD8685D204D
title: PAP session
---

# PAP session

## Overview

Property|Value
---|---
id|9085CAD9-E866-4564-8A91-7AD8685D204D
name|PAP session
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.PAPSession](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.papsession)
- [Microsoft.HealthVault.ItemTypes.PAPSession](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.papsession)

## Related data types

- [Sleep journal entry](xref:HV_031F5706-7F1A-11DB-AD56-7BD355D89593)
- [Sleep session](xref:HV_11C52484-7F1A-11DB-AEAC-87D355D89593)

## Details
A common use for PAP therapy is in the treatment of sleep apnea.

<a name='pap-session'></a>

### Root element: pap-session

The Positive Airway Pressure (PAP) Session records data collected during a PAP session. A common use for PAP therapy is in the treatment of sleep apnea.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|date-time|1|1|The date and time of when the session was started.|
duration-minutes|[nonNegativeDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeDouble)|1|1|The number of minutes in the session.|
apnea-hypopnea-index|[nonNegativeDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeDouble)|1|1|The number of Apnea and Hypopnea events per hour.|
apnea-index|[nonNegativeDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeDouble)|0|1|The number of Apnea events per hour.|
hypopnea-index|[nonNegativeDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeDouble)|0|1|The number of Hypopnea events per hour.|
oxygen-desaturation-index|[nonNegativeDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeDouble)|0|1|The number of oxygen desaturation events per hour.|
pressure|[pap-session-pressure](#pap-session-pressure)|0|1|The pressure measurements during the session.|
leak-rate|[pap-session-leak-rate](#pap-session-leak-rate)|0|1|The leak rate measurements during the session.|
tidal-volume|[pap-session-tidal-volume](#pap-session-tidal-volume)|0|1|The tidal volume measurements during the session.|
minute-ventilation|[pap-session-minute-ventilation](#pap-session-minute-ventilation)|0|1|The minute ventilation measurements during the session.|
respiratory-rate|[pap-session-respiratory-rate](#pap-session-respiratory-rate)|0|1|The respiratory rate measurements during the session.|

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='pap-session-pressure'></a>
>
> ### pap-session-pressure
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> mean|[pressure-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#pressure-value)|0|1|Mean pressure delivered during the session.|
> median|[pressure-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#pressure-value)|0|1|Median pressure delivered during the session.|
> maximum|[pressure-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#pressure-value)|0|1|Greatest pressure delivered during the session.|
> percentile-95th|[pressure-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#pressure-value)|0|1|Pressure was delivered at or below this value 95% of the time.|
> percentile-90th|[pressure-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#pressure-value)|0|1|Pressure was delivered at or below this value 90% of the time.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='pap-session-leak-rate'></a>
>
> ### pap-session-leak-rate
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> mean|[flow-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#flow-value)|0|1|Mean unintentional leak rate that occurred during the session.|
> median|[flow-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#flow-value)|0|1|Median unintentional leak rate that occurred during the session.|
> maximum|[flow-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#flow-value)|0|1|Greatest unintentional leak rate that occured during the session.|
> percentile-95th|[flow-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#flow-value)|0|1|Unintentional leak rate was at or below this value 95% of the time.|
> percentile-90th|[flow-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#flow-value)|0|1|The leak rate was at or below this value 90% of the time.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='pap-session-tidal-volume'></a>
>
> ### pap-session-tidal-volume
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> mean|[volume-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#volume-value)|0|1|Mean tidal volume during the session.|
> median|[volume-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#volume-value)|0|1|Median tidal volume during the session.|
> maximum|[volume-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#volume-value)|0|1|Greatest tidal volume during the session.|
> percentile-95th|[volume-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#volume-value)|0|1|Tidal volume was at or below this value 95% of the time.|
> percentile-90th|[volume-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#volume-value)|0|1|Tidal volume was at or below this value 90% of the time.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='pap-session-minute-ventilation'></a>
>
> ### pap-session-minute-ventilation
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> mean|[volume-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#volume-value)|0|1|Mean volume of gas per minute exhaled from the lungs during the session.|
> median|[volume-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#volume-value)|0|1|Median volume of gas per minute exhaled from the lungs during the session.|
> maximum|[volume-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#volume-value)|0|1|Greatest volume of gas per minute exhaled from the lungs during the session.|
> percentile-95th|[volume-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#volume-value)|0|1|Volume of gas exhaled per minute was at or below this value 95% of the time.|
> percentile-90th|[volume-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#volume-value)|0|1|Volume of gas exhaled per minute was at or below this value 90% of the time.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='pap-session-respiratory-rate'></a>
>
> ### pap-session-respiratory-rate
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> mean|[respiratory-rate-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#respiratory-rate-value)|0|1|Mean breaths per minute during the session.|
> median|[respiratory-rate-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#respiratory-rate-value)|0|1|Median breaths per minute during the session.|
> maximum|[respiratory-rate-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#respiratory-rate-value)|0|1|Greatest number of breaths per minute during the session.|
> percentile-95th|[respiratory-rate-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#respiratory-rate-value)|0|1|Respiratory rate was at or below this value 95% of the time.|
> percentile-90th|[respiratory-rate-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#respiratory-rate-value)|0|1|Respiratory rate was at or below this value 90% of the time.|
>
>

## Example
[!code-xml[Example](sample-xml/9085CAD9-E866-4564-8A91-7AD8685D204D.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](xsd/pap-session.xsd)
[!code-xml[XSD schema](xsd/pap-session.xsd)]
