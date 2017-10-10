---
uid: HV_031F5706-7F1A-11DB-AD56-7BD355D89593
title: Sleep journal entry
---

# Sleep journal entry

## Overview

Property|Value
---|---
id|031F5706-7F1A-11DB-AD56-7BD355D89593
name|Sleep journal entry
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.SleepJournalPM](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.sleepjournalpm)
- [Microsoft.HealthVault.ItemTypes.SleepJournalPM](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.sleepjournalpm)

## Related data types

- [PAP session](xref:HV_9085CAD9-E866-4564-8A91-7AD8685D204D)
- [Sleep session](xref:HV_11C52484-7F1A-11DB-AEAC-87D355D89593)

## Details
The data items in this schema are adapted from NIH publication #06-5271, November 2005, "Your Guide to Healthy Sleep", ISBN 1-933236-05-1.

<a name='sleep-pm'></a>

### Root element: sleep-pm

Defines an evening sleep journal.

The data items in this schema are adapted from NIH publication #06-5271, November 2005, "Your Guide to Healthy Sleep", ISBN 1-933236-05-1.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time that the journal entry refers to.|
caffeine|[time](xref:HV_File_dates#time)|0|unbounded|The time of each caffeine consumed for the day.|
alcohol|[time](xref:HV_File_dates#time)|0|unbounded|The time of each alcohol consumed for the day.|
nap|[Activity](#Activity)|0|unbounded|The time and duration of each nap taken in the day.|
exercise|[Activity](#Activity)|0|unbounded|The time and duration of each exercise session in the day.|Note, an application should (but is not required) to query the aerobic sessions in the person's health record to fill in this information.
sleepiness|[sleepiness](#sleepiness)|1|1||

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='sleepiness'></a>
>
> ### sleepiness
>
> How sleepy the person felt during the day.
>
> 1 = So sleepy had to struggle to stay away during much of the day, 2 = Somewhat tired 3 = Fairly alert 4 = Wide awake
>
> ### Restriction
>
> Base type: [int](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#int)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minInclusive|1||
> maxInclusive|4||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Activity'></a>
>
> ### Activity
>
> Defines an activity taken by the person before laying down for the night.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> when|[time](xref:HV_File_dates#time)|1|1|The time when the activity occurred.|
> minutes|[nonNegativeInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeInt)|1|1|The duration of the activity in minutes.|
>
>

## Example
[!code-xml[Example](../sample-xml/031F5706-7F1A-11DB-AD56-7BD355D89593.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/sleepjournal-pm.xsd)
[!code-xml[XSD schema](../xsd/sleepjournal-pm.xsd)]
