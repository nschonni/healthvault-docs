---
title: Continuity of Care Record Input Mappings
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Overview of how HealthVault converts Continuity of Care Records into HealthVault data. 
---


CCR Input Mappings
==================

The transforms that convert CCR data into HealthVault types are not simple mappings of one data value onto another. The mappings are context sensitive and depend on both the presence and value of individual elements of the CCR.

The logic behind each transform is described below. In order to improve the readability of those descriptions, observe the following conventions:

1.  **Value mappings**. Each "Map values" statement is followed by one or more table rows, each of which describes a direct mapping of a specific element in a CCR onto an element in a HealthVault type. Mappings described in adjacent rows should be applied together, and in the sequence indicated.
    Each row contains the following elements:
    1.  **CCR**. The element in the CCR whose value is used to populate the HealthVault item, or a function (see below) whose return value will be used. Note that the [IsConcept](https://msdn.microsoft.com/en-us/healthvault/ee663894) functions use the element label groups defined in the "Import Text" columns in <a href="ccr-vocabularies.md" id="PageContent_14114_2">HealthVault CCR Vocabularies</a> to identify CCR elements that may use alternate names for a given concept.
    2.  **HealthVault**. The HealthVault item whose value will be set.
    3.  **Conversion** (optional.) The first row specifies the type-id of the relevant HealthVault type. In subsequent rows, it may specify a simple type conversion (such as Boolean), an externally defined conversion (such as the ISO-8601 date standard), or a named conversion defined elsewhere in this document.
2.  **Scope**. Each line that is not a table row is indented to indicate the scope of loops and conditional elements within the transform logic.
3.  **Procedures**. Some sections of the transform logic are described as procedure or function calls. Each call referenced in the following mappings is described as pseudocode in <a href="ccr-input-functions.md" id="PageContent_14114_3">HealthVault CCR Input Functions</a>.
4.  **Required elements**. Some transforms require that specific elements in the input data be present and not empty. Those elements are indicated with ***bold italic*** text in the corresponding cells in the mapping tables. If any required values cannot be processed for any reason, the transform will not create the output type.

Date Types
----------

### ExactDateTime : date

 
| CCR                                                  | HealthVault                                 | Conversion |
|------------------------------------------------------|---------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">ExactDateTime</span> | <span style="FONT-WEIGHT: bold">date</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                                                              |            |
|-----|--------------------------------------------------------------|------------|
| .   | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">y</span> | ISO-8601/Y |
| .   | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">m</span> | ISO-8601/M |
| .   | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">d</span> | ISO-8601/D |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### ExactDateTime : time

 
| CCR                                                  | HealthVault                                 | Conversion |
|------------------------------------------------------|---------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">ExactDateTime</span> | <span style="FONT-WEIGHT: bold">time</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                                                              |            |
|-----|--------------------------------------------------------------|------------|
| .   | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">h</span> | ISO-8601/h |
| .   | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">m</span> | ISO-8601/m |
| .   | s                                                            | ISO-8601/s |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### ExactDateTime : approx-date

 
| CCR                                                  | HealthVault                                        | Conversion |
|------------------------------------------------------|----------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">ExactDateTime</span> | <span style="FONT-WEIGHT: bold">approx-date</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                                                              |            |
|-----|--------------------------------------------------------------|------------|
| .   | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">y</span> | ISO-8601/Y |
| .   | m                                                            | ISO-8601/M |
| .   | d                                                            | ISO-8601/D |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### ExactDateTime : StructuredApproxDate

 
| CCR                                                  | HealthVault                                                 | Conversion |
|------------------------------------------------------|-------------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">ExactDateTime</span> | <span style="FONT-WEIGHT: bold">StructuredApproxDate</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                                                                   |                                 |
|-----|-------------------------------------------------------------------|---------------------------------|
| .   | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./date</span> | ExactDateTime =&gt; approx-date |
| .   | ./time                                                            | ExactDateTime =&gt; time        |
| .   | ./tz                                                              | ISO-8601/TZD                    |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### ExactDateTime : date-time

 
| CCR                                                  | HealthVault                                      | Conversion |
|------------------------------------------------------|--------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">ExactDateTime</span> | <span style="FONT-WEIGHT: bold">date-time</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                                                                   |                          |
|-----|-------------------------------------------------------------------|--------------------------|
| .   | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./date</span> | ExactDateTime =&gt; date |
| .   | ./time                                                            | ExactDateTime =&gt; time |
| .   | ./tz                                                              | ISO-8601/TZD             |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### DateTimeType : approx-date-time

 
| CCR                                                 | HealthVault                                             | Conversion |
|-----------------------------------------------------|---------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">DateTimeType</span> | <span style="FONT-WEIGHT: bold">approx-date-time</span> |            |

<span style="FONT-WEIGHT: bold">If Exists</span>(./ExactDateTime)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                 |              |                                          |
|-----------------|--------------|------------------------------------------|
| ./ExactDateTime | ./structured | ExactDateTime =&gt; StructuredApproxDate |

<span style="FONT-WEIGHT: bold">Else If Exists</span>(./ApproximateDateTime)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                            |               |     |
|----------------------------|---------------|-----|
| ./ApproximateDateTime/Text | ./descriptive |     |

<span style="FONT-WEIGHT: bold">Else If Exists</span>(./Age)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                              |               |     |
|----------------------------------------------------------------------------------------------|---------------|-----|
| [Concat](ccr-input-functions.md#Concat)(./Age/Value,./Age/Units/Unit, ' ') | ./descriptive |     |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                   |               |     |
|---------------------------------------------------|---------------|-----|
| <span style="FONT-STYLE: italic">"Unknown"</span> | ./descriptive |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### DateTimeType : approx-date

 
| CCR                                                 | HealthVault                                        | Conversion |
|-----------------------------------------------------|----------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">DateTimeType</span> | <span style="FONT-WEIGHT: bold">approx-date</span> |            |

<span style="FONT-WEIGHT: bold">If Exists</span>(./ExactDateTime)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                 |     |                                 |
|-----------------|-----|---------------------------------|
| ./ExactDateTime | .   | ExactDateTime =&gt; approx-date |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### DateTimeType : date

 
| CCR                                                 | HealthVault                                 | Conversion |
|-----------------------------------------------------|---------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">DateTimeType</span> | <span style="FONT-WEIGHT: bold">date</span> |            |

<span style="FONT-WEIGHT: bold">If Exists</span>(./ExactDateTime)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                 |     |                          |
|-----------------|-----|--------------------------|
| ./ExactDateTime | .   | ExactDateTime =&gt; date |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### DateTimeType : date-time

 
| CCR                                                 | HealthVault                                      | Conversion |
|-----------------------------------------------------|--------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">DateTimeType</span> | <span style="FONT-WEIGHT: bold">date-time</span> |            |

<span style="FONT-WEIGHT: bold">If Exists</span>(./ExactDateTime)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                 |     |                               |
|-----------------|-----|-------------------------------|
| ./ExactDateTime | .   | ExactDateTime =&gt; date-time |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

Coded Types
-----------

### CodeType : coded-value

 
| CCR                                             | HealthVault                                        | Conversion |
|-------------------------------------------------|----------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">CodeType</span> | <span style="FONT-WEIGHT: bold">coded-value</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                |                                                                    |     |
|----------------|--------------------------------------------------------------------|-----|
| ./Value        | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./value</span> |     |
| ./CodingSystem | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./type</span>  |     |
| ./Version      | ./version                                                          |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### CodedDescriptionType : codable-value

 
| CCR                                                         | HealthVault                                          | Conversion |
|-------------------------------------------------------------|------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">CodedDescriptionType</span> | <span style="FONT-WEIGHT: bold">codable-value</span> |            |

<span style="FONT-WEIGHT: bold">If Exists</span>(./Text)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|        |                                                                   |     |
|--------|-------------------------------------------------------------------|-----|
| ./Text | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./text</span> |     |

<span style="FONT-WEIGHT: bold">If Not Exists</span>(./Text) and <span style="FONT-WEIGHT: bold">If Exists</span>(./Code\[1\])
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                   |                                                                   |     |
|-------------------|-------------------------------------------------------------------|-----|
| ./Code\[1\]/Value | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./text</span> |     |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                  |                                                                   |     |
|--------------------------------------------------|-------------------------------------------------------------------|-----|
| <span style="FONT-STYLE: italic">"Unkown"</span> | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./text</span> |     |

<span style="FONT-WEIGHT: bold">ForEach</span>(./Code)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |        |                            |
|-----|--------|----------------------------|
| .   | ./code | CodeType =&gt; coded-value |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

Measure Types
-------------

### MeasureType or MeasureGroup : codable-value

 
| CCR                                                                | HealthVault                                          | Conversion |
|--------------------------------------------------------------------|------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">MeasureType or MeasureGroup</span> | <span style="FONT-WEIGHT: bold">codable-value</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|              |                                                                   |     |
|--------------|-------------------------------------------------------------------|-----|
| ./Units/Unit | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./text</span> |     |

<span style="FONT-WEIGHT: bold">ForEach</span>(./Units/Code)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |        |                            |
|-----|--------|----------------------------|
| .   | ./code | CodeType =&gt; coded-value |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### MeasureType or MeasureGroup : structured-measurement

 
| CCR                                                                | HealthVault                                                   | Conversion |
|--------------------------------------------------------------------|---------------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">MeasureType or MeasureGroup</span> | <span style="FONT-WEIGHT: bold">structured-measurement</span> |            |

<span style="FONT-WEIGHT: bold">If IsNumber</span>(./Value)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|         |                                                                    |                                 |
|---------|--------------------------------------------------------------------|---------------------------------|
| ./Value | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./value</span> |                                 |
| .       | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./units</span> | MeasureType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### MeasureType or MeasureGroup : general-measurement

 
| CCR                                                                | HealthVault                                                | Conversion |
|--------------------------------------------------------------------|------------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">MeasureType or MeasureGroup</span> | <span style="FONT-WEIGHT: bold">general-measurement</span> |            |

<span style="FONT-WEIGHT: bold">If Exists</span>(./Value)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|         |                                                                      |     |
|---------|----------------------------------------------------------------------|-----|
| ./Value | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./display</span> |     |

<span style="FONT-WEIGHT: bold">If IsNumber</span>(./Value)and <span style="FONT-WEIGHT: bold">If Exists</span>(./Units)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |              |                                          |
|-----|--------------|------------------------------------------|
| .   | ./structured | MeasureType =&gt; structured-measurement |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### MeasureType or MeasureGroup : display-value

 
| CCR                                                                | HealthVault                                          | Conversion |
|--------------------------------------------------------------------|------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">MeasureType or MeasureGroup</span> | <span style="FONT-WEIGHT: bold">display-value</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|              |                                                                             |     |
|--------------|-----------------------------------------------------------------------------|-----|
| ./Value      | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./display</span>        |     |
| ./Units/Unit | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./display/@units</span> |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### TestResultType : general-measurement

 
| CCR                                                   | HealthVault                                                | Conversion |
|-------------------------------------------------------|------------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">TestResultType</span> | <span style="FONT-WEIGHT: bold">general-measurement</span> |            |

<span style="FONT-WEIGHT: bold">If Exists</span>(./Value)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|         |                                                                      |     |
|---------|----------------------------------------------------------------------|-----|
| ./Value | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./display</span> |     |

<span style="FONT-WEIGHT: bold">Else If Exists(</span>./Description/Text<span style="FONT-WEIGHT: bold">)</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                    |                                                                      |     |
|--------------------|----------------------------------------------------------------------|-----|
| ./Description/Text | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./display</span> |     |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                   |                                                                      |     |
|---------------------------------------------------|----------------------------------------------------------------------|-----|
| <span style="FONT-STYLE: italic">"Unknown"</span> | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./display</span> |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |     |                                          |
|-----|-----|------------------------------------------|
| .   | .   | MeasureType =&gt; structured-measurement |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

Actors
------

### PersonNameType : name

 
| CCR                                                   | HealthVault                                 | Conversion |
|-------------------------------------------------------|---------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">PersonNameType</span> | <span style="FONT-WEIGHT: bold">name</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                              |                                                                   |     |
|----------------------------------------------------------------------------------------------|-------------------------------------------------------------------|-----|
| [PersonNameTypeToString](ccr-input-functions.md#PersonNameTypeToString)(.) | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./full</span> |     |
| ./Title                                                                                      | ./title/text                                                      |     |
| ./Given                                                                                      | ./first                                                           |     |
| ./Middle                                                                                     | ./middle                                                          |     |
| ./Family                                                                                     | ./last                                                            |     |
| ./Suffix                                                                                     | ./suffix/text                                                     |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### CommunicationType : email

 
| CCR                                                      | HealthVault                                  | Conversion |
|----------------------------------------------------------|----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">CommunicationType</span> | <span style="FONT-WEIGHT: bold">email</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                         |                                                                      |     |
|-----------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|-----|
| ./Type/Text                                                                                                                             | ./description                                                        |     |
| [IsConcept](ccr-input-functions.md#IsConcept)(./Priority, <span style="FONT-STYLE: italic">"priority-primary"</span>) | ./is-primary                                                         |     |
| ./Value                                                                                                                                 | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./address</span> |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### CommunicationType : phone

 
| CCR                                                      | HealthVault                                  | Conversion |
|----------------------------------------------------------|----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">CommunicationType</span> | <span style="FONT-WEIGHT: bold">phone</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                         |                                                                     |     |
|-----------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|-----|
| ./Type/Text                                                                                                                             | ./description                                                       |     |
| [IsConcept](ccr-input-functions.md#IsConcept)(./Priority, <span style="FONT-STYLE: italic">"priority-primary"</span>) | ./is-primary                                                        |     |
| ./Value                                                                                                                                 | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./number</span> |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### Actor : address

 
| CCR                                          | HealthVault                                    | Conversion |
|----------------------------------------------|------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">Actor</span> | <span style="FONT-WEIGHT: bold">address</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                         |                                                                          |     |
|-----------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|-----|
| ./Type/Text                                                                                                                             | ./description                                                            |     |
| [IsConcept](ccr-input-functions.md#IsConcept)(./Priority, <span style="FONT-STYLE: italic">"priority-primary"</span>) | ./is-primary                                                             |     |
| ./Line1                                                                                                                                 | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./street\[1\]</span> |     |
| ./Line2                                                                                                                                 | ./street\[2\]                                                            |     |
| ./City                                                                                                                                  | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./city</span>        |     |
| ./State                                                                                                                                 | ./state                                                                  |     |
| ./PostalCode                                                                                                                            | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./postcode</span>    |     |
| ./Country                                                                                                                               | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./country</span>     |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### Actor : contact

 
| CCR                                          | HealthVault                                    | Conversion |
|----------------------------------------------|------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">Actor</span> | <span style="FONT-WEIGHT: bold">contact</span> |            |

<span style="FONT-WEIGHT: bold">ForEach</span>(./Address)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |           |                     |
|-----|-----------|---------------------|
| .   | ./address | Actor =&gt; address |

<span style="FONT-WEIGHT: bold">ForEach</span>(./Telephone)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |         |                               |
|-----|---------|-------------------------------|
| .   | ./phone | CommunicationType =&gt; phone |

<span style="FONT-WEIGHT: bold">ForEach</span>(./EMail)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |         |                               |
|-----|---------|-------------------------------|
| .   | ./email | CommunicationType =&gt; email |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### Actor : person

 
| CCR                                          | HealthVault                                   | Conversion |
|----------------------------------------------|-----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">Actor</span> | <span style="FONT-WEIGHT: bold">person</span> |            |

<span style="FONT-WEIGHT: bold">If Exists</span>(./Person/Name/CurrentName)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                           |                                                                   |                           |
|---------------------------|-------------------------------------------------------------------|---------------------------|
| ./Person/Name/CurrentName | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./name</span> | PersonNameType =&gt; name |

<span style="FONT-WEIGHT: bold">Else</span> (./Person/Name/BirthName)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                         |                                                                   |                           |
|-------------------------|-------------------------------------------------------------------|---------------------------|
| ./Person/Name/BirthName | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./name</span> | PersonNameType =&gt; name |

<span style="FONT-WEIGHT: bold">If Exists</span>(./Person/Name/DisplayName)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                           |                                                                        |     |
|---------------------------|------------------------------------------------------------------------|-----|
| ./Person/Name/DisplayName | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./name/full</span> |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                          |                         |                                          |
|--------------------------------------------------------------------------------------------------------------------------|-------------------------|------------------------------------------|
| [Concat](ccr-input-functions.md#Concat)(./Specialty/Text, <span style="FONT-STYLE: italic">";"</span>) | ./professional-training |                                          |
| ./Relation\[1\]                                                                                                          | ./type                  | CodedDescriptionType =&gt; codable-value |
| .                                                                                                                        | ./contact               | Actor =&gt; contact                      |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### Actor : Organization

 
| CCR                                          | HealthVault                                         | Conversion |
|----------------------------------------------|-----------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">Actor</span> | <span style="FONT-WEIGHT: bold">Organization</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                     |                                                                   |                                          |
|---------------------|-------------------------------------------------------------------|------------------------------------------|
| ./Organization/Name | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./name</span> |                                          |
| ./Specialty\[1\]    | ./type                                                            | CodedDescriptionType =&gt; codable-value |
| ./URL\[1\]/Value    | ./website                                                         |                                          |
| .                   | ./contact                                                         | Actor =&gt; contact                      |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

Common
------

### CCRCodedDataObjectType : common

 
| CCR                                                           | HealthVault                                   | Conversion |
|---------------------------------------------------------------|-----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">CCRCodedDataObjectType</span> | <span style="FONT-WEIGHT: bold">common</span> |            |

<span style="FONT-WEIGHT: bold">ForEach</span>(./Source)
$Sources = [Concat](ccr-input-functions.md#Concat)($Source, [SourceTypeToString](ccr-input-functions.md#SourceTypeToString)(.), <span style="FONT-STYLE: italic">"\\n\\n"</span>)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|          |          |     |
|----------|----------|-----|
| $Sources | ./source |     |

<span style="FONT-WEIGHT: bold">ForEach</span>(./Comments/Comment)
$Comments = [Concat](ccr-input-functions.md#Concat)($Comments, ./Description/Text, <span style="FONT-STYLE: italic">"\\n\\n"</span>)
<span style="FONT-WEIGHT: bold">ForEach</span>(./References/Reference)
$References = [Concat](ccr-input-functions.md#Concat)($References, [ReferenceTypeToString](ccr-input-functions.md#ReferenceTypeToString)(.), <span style="FONT-STYLE: italic">"\\n\\n"</span>)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                |                   |     |
|------------------------------------------------------------------------------------------------------------------------------------------------|-------------------|-----|
| [Concat](ccr-input-functions.md#Concat)($Comments, $References, <span style="FONT-STYLE: italic">"\[References\]\\n"</span>) | ./note            |     |
| ./CCRDataObjectID                                                                                                                              | ./client-thing-id |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

ContinuityOfCareRecord/Body : thing/data-xml
--------------------------------------------

### ContinuityOfCareRecord/Body : thing/data-xml

 
| CCR                                                                | HealthVault                                           | Conversion |
|--------------------------------------------------------------------|-------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">ContinuityOfCareRecord/Body</span> | <span style="FONT-WEIGHT: bold">thing/data-xml</span> |            |

$Payer = ./Payers/Payer
<span style="FONT-WEIGHT: bold">ForEach</span>($Payer)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |         |                   |
|-----|---------|-------------------|
| .   | ./payer | Payer =&gt; payer |

$Directives = ./AdvanceDirectives/AdvanceDirective
<span style="FONT-WEIGHT: bold">ForEach</span>($Directives)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |             |                                  |
|-----|-------------|----------------------------------|
| .   | ./directive | AdvanceDirective =&gt; directive |

$Problems = ./Problems/Problem
<span style="FONT-WEIGHT: bold">ForEach</span>($Problems)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |             |                         |
|-----|-------------|-------------------------|
| .   | ./condition | Problem =&gt; condition |

$FamilyHistories = ./FamilyHistory/FamilyProblemHistory
<span style="FONT-WEIGHT: bold">ForEach</span>($FamilyHistories)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |     |                                        |
|-----|-----|----------------------------------------|
| .   | .   | FamilyHistoryType =&gt; family-history |

$Allergies = ./Alerts/Alert\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, <span style="FONT-STYLE: italic">"allergy"</span>)\]
<span style="FONT-WEIGHT: bold">ForEach</span>($Allergies)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |           |                     |
|-----|-----------|---------------------|
| .   | ./allergy | Alert =&gt; allergy |

$Medications = ./Medications/Medication
<span style="FONT-WEIGHT: bold">ForEach</span>($Medication)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |              |                             |
|-----|--------------|-----------------------------|
| .   | ./medication | Medication =&gt; medication |

$Immunizations = ./Immunizations/Immunization
<span style="FONT-WEIGHT: bold">ForEach</span>($Immunizations)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                |                                 |
|-----|----------------|---------------------------------|
| .   | ./immunization | Immunization =&gt; immunization |

$Results = ./VitalSigns/Result
<span style="FONT-WEIGHT: bold">ForEach</span>($Results)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |     |                               |
|-----|-----|-------------------------------|
| .   | .   | ResultType =&gt; Typed things |

$Results = ./Results/Result
<span style="FONT-WEIGHT: bold">ForEach</span>($Results)
<span style="FONT-WEIGHT: bold">If IsConcept</span>(./Description/Text, <span style="FONT-STYLE: italic">"result-discharge-summary"</span>) or <span style="FONT-WEIGHT: bold">If Exists</span>(./IDs\[ [IsConcept](ccr-input-functions.md#IsConcept)(./ID, <span style="FONT-STYLE: italic">"02ef57a2-a620-425a-8e92-a301542cca54"</span>)\])
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                     |                                    |
|-----|---------------------|------------------------------------|
| .   | ./discharge-summary | ResultType =&gt; discharge-summary |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                    |                                  |
|-----|--------------------|----------------------------------|
| .   | ./lab-test-results | ResultType =&gt; lab-test-result |

<span style="FONT-WEIGHT: bold">ForEach</span>($Results)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |     |                               |
|-----|-----|-------------------------------|
| .   | .   | ResultType =&gt; Typed Things |

$Procedures = ./Procedures/Procedure
<span style="FONT-WEIGHT: bold">ForEach</span>($Procedures)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |             |                           |
|-----|-------------|---------------------------|
| .   | ./procedure | Procedure =&gt; procedure |

$Encounters = ./Encounters/Encounter
<span style="FONT-WEIGHT: bold">ForEach</span>($Encounters)
<span style="FONT-WEIGHT: bold">If IsConcept</span>(./Status/Text, <span style="FONT-STYLE: italic">"encounter-pending"</span>)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |               |                             |
|-----|---------------|-----------------------------|
| .   | ./appointment | Encounter =&gt; appointment |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |             |                           |
|-----|-------------|---------------------------|
| .   | ./encounter | Encounter =&gt; encounter |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### Payer : payer

 
| CCR                                          | HealthVault                                  | Conversion                                                                            |
|----------------------------------------------|----------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">Payer</span> | <span style="FONT-WEIGHT: bold">payer</span> | <span style="FONT-WEIGHT: bold">type-id = 9366440c-ec81-4b89-b231-308a4c4d70ed</span> |

<span style="FONT-WEIGHT: bold">If Exists</span>(./PaymentProvider)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                            |                                                                        |     |
|--------------------------------------------------------------------------------------------|------------------------------------------------------------------------|-----|
| [ActorToString](ccr-input-functions.md#ActorToString)(./PaymentProvider) | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./plan-name</span> |     |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                   |                                                                        |     |
|---------------------------------------------------|------------------------------------------------------------------------|-----|
| <span style="FONT-STYLE: italic">"Unknown"</span> | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./plan-name</span> |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                   |                   |                                          |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------|------------------------------------------|
| ./Type                                                                                                                                                            | ./coverage-type   | CodedDescriptionType =&gt; codable-value |
| ./IDs\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, <span style="FONT-STYLE: italic">"payer-carrier-id"</span>)\]\[1\]/ID        | ./carrier-id      |                                          |
| ./IDs\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, <span style="FONT-STYLE: italic">"payer-group-number"</span>)\]\[1\]/ID      | ./group-num       |                                          |
| ./IDs\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, <span style="FONT-STYLE: italic">"payer-plan-code"</span>)\]\[1\]/ID         | ./plan-code       |                                          |
| ./IDs\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, <span style="FONT-STYLE: italic">"payer-subscriber-number"</span>)\]\[1\]/ID | ./subscriber-id   |                                          |
| [ActorToString](ccr-input-functions.md#ActorToString)(./Subscriber)                                                                             | ./subscriber-name |                                          |

$Actor = [ResolveActor](ccr-input-functions.md#ResolveActor)(./Subscriber)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                     |                   |                                     |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------|-------------------------------------|
| $Actor/Person/DateOfBirth                                                                                                                                           | ./subscriber-dob  | DateTimeType =&gt; date-time        |
| [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, <span style="FONT-STYLE: italic">"payer-primary-health-insurance"</span>)              | ./is-primary      | boolean                             |
| ./DateTime\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, <span style="FONT-STYLE: italic">"payer-benefit-stop-date"</span>)\]\[1\] | ./expiration-date | DateTimeType =&gt; date-time        |
| [ResolveActor](ccr-input-functions.md#ResolveActor)(./PaymentProvider)                                                                            | ./contact         | Actor =&gt; contact                 |
| .                                                                                                                                                                   | ../common         | CCRCodedDataObjectType =&gt; common |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### AdvanceDirective : directive

 
| CCR                                                     | HealthVault                                      | Conversion                                                                            |
|---------------------------------------------------------|--------------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">AdvanceDirective</span> | <span style="FONT-WEIGHT: bold">directive</span> | <span style="FONT-WEIGHT: bold">type-id = 822a5e5a-14f1-4d06-b92f-8f3f1b05218f</span> |

$DateTime = ./DateTime\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, <span style="FONT-STYLE: italic">"directive-start-date"</span>)\]\[1\]
<span style="FONT-WEIGHT: bold">If Exists</span>($DateTime)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|           |                                                                         |                                     |
|-----------|-------------------------------------------------------------------------|-------------------------------------|
| $DateTime | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./start-date</span> | DateTimeType =&gt; approx-date-time |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                   |                                                                                     |     |
|---------------------------------------------------|-------------------------------------------------------------------------------------|-----|
| <span style="FONT-STYLE: italic">"Unknown"</span> | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./start-date/descriptive</span> |     |

$DateTime = ./DateTime\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, <span style="FONT-STYLE: italic">"directive-stop-date"</span>)\]\[1\]
<span style="FONT-WEIGHT: bold">If Exists</span>($DateTime)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|           |                                                                        |                                     |
|-----------|------------------------------------------------------------------------|-------------------------------------|
| $DateTime | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./stop-date</span> | DateTimeType =&gt; approx-date-time |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                   |                                                                                    |     |
|---------------------------------------------------|------------------------------------------------------------------------------------|-----|
| <span style="FONT-STYLE: italic">"Unknown"</span> | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./stop-date/descriptive</span> |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                                   |                                   |                                     |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------|-------------------------------------|
| ./Description/Text                                                                                                                                                                | ./description                     |                                     |
| [Concat](ccr-input-functions.md#Concat)(./Type/Text, ./Status/Text, <span style="FONT-STYLE: italic">";"</span>)                                                | ./additional-instructions         |                                     |
| <span style="FONT-WEIGHT: bold">FindActorInSources</span>(./Source, <span style="FONT-STYLE: italic">"directive-treating-physician"</span>)                                       | ./attending-physician             | Actor =&gt; person                  |
| ./DateTime\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, <span style="FONT-STYLE: italic">"directive-verified-treating-physician"</span>)\]\[1\] | ./attending-physician-endorsement | DateTimeType =&gt; date-time        |
| .                                                                                                                                                                                 | ../common                         | CCRCodedDataObjectType =&gt; common |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### Problem : condition

 
| CCR                                            | HealthVault                                      | Conversion                                                                            |
|------------------------------------------------|--------------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">Problem</span> | <span style="FONT-WEIGHT: bold">condition</span> | <span style="FONT-WEIGHT: bold">type-id = 7ea7a1f9-880b-4bd4-b593-f5660f20eda8</span> |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|               |                                                                   |                                          |
|---------------|-------------------------------------------------------------------|------------------------------------------|
| ./Description | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./name</span> | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">If</span>(count(./DateTime)= 1) and <span style="FONT-WEIGHT: bold">If Exists</span>(./DateTime/DateTimeRange)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                     |              |                                     |
|-------------------------------------|--------------|-------------------------------------|
| ./DateTime/DateTimeRange/BeginRange | ./onset-date | DateTimeType =&gt; approx-date-time |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                |              |                                     |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------|-------------------------------------|
| ./DateTime\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, "<span style="FONT-STYLE: italic">problem-onset-date"</span>)\]\[1\] | ./onset-date | DateTimeType =&gt; approx-date-time |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|          |          |                                          |
|----------|----------|------------------------------------------|
| ./Status | ./status | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">If</span>(count(./DateTime) = 1) and <span style="FONT-WEIGHT: bold">If Exists</span>(./DateTime/DateTimeRange)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                   |             |                                     |
|-----------------------------------|-------------|-------------------------------------|
| ./DateTime/DateTimeRange/EndRange | ./stop-date | DateTimeType =&gt; approx-date-time |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                               |             |                                     |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|-------------------------------------|
| ./DateTime\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, "<span style="FONT-STYLE: italic">problem-stop-date"</span>)\]\[1\] | ./stop-date | DateTimeType =&gt; approx-date-time |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |           |                                     |
|-----|-----------|-------------------------------------|
| .   | ../common | CCRCodedDataObjectType =&gt; common |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### FamilyProblemHistory : family-history

 
| CCR                                                         | HealthVault                                           | Conversion                                                                            |
|-------------------------------------------------------------|-------------------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">FamilyProblemHistory</span> | <span style="FONT-WEIGHT: bold">family-history</span> | <span style="FONT-WEIGHT: bold">type-id = 4a04fcc8-19c1-4d59-a8c7-2031a03f21de</span> |

<span style="FONT-WEIGHT: bold">Remarks:</span> If there are multiple family members, then HealthVault will create a separate family-history object for each of them containing all of the associated conditions. If there are only problems, then HealthVault will create a single family-history object containing all of the problems.
<span style="FONT-WEIGHT: bold">If Exists</span>(./FamilyMember)
<span style="FONT-WEIGHT: bold">ForEach</span>(./FamilyMember)
$Actor = [ResolveActor](ccr-input-functions.md#ResolveActor)(./ActorID)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                        |                                                                                                   |                                          |
|------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------|------------------------------------------|
| <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./ActorRole</span> | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./family-history/relative/relationship</span> | CodedDescriptionType =&gt; codable-value |
| $Actor                                                                 | ./family-history/relative/relative-name                                                           | Actor =&gt; person                       |
| $Actor/Person/DateOfBirth                                              | ./family-history/relative/date-of-birth                                                           | DateTimeType =&gt; approx-date           |

<span style="FONT-WEIGHT: bold">ForEach</span>(./Problem)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|               |                                                                                            |                                          |
|---------------|--------------------------------------------------------------------------------------------|------------------------------------------|
| ./Description | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./family-history/condition/name</span> | CodedDescriptionType =&gt; codable-value |

$OnsetDate = ./Episodes/Episode\[ [IsConcept](ccr-input-functions.md#IsConcept)(./DateTime, <span style="FONT-STYLE: italic">"problem-onset-date"</span>)\]\[1\]
<span style="FONT-WEIGHT: bold">If Exists</span>($OnsetDate)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|            |                                       |                                |
|------------|---------------------------------------|--------------------------------|
| $OnsetDate | ./family-history/condition/onset-date | DateTimeType =&gt; approx-date |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                              |                                       |                                |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------|--------------------------------|
| ../DateTime\[ [IsConcept](ccr-input-functions.md#IsConcept)(./DateTime, <span style="FONT-STYLE: italic">"problem-onset-date"</span>)\[1\] | ./family-history/condition/onset-date | DateTimeType =&gt; approx-date |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                     |                                            |                            |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------|----------------------------|
| [Concat](ccr-input-functions.md#Concat)(./Episodes/Frequency/Value, ./Episodes/Frequency/Units/Unit, <span style="FONT-STYLE: italic">" "</span>) | ./family-history/condition/occurrence/text |                            |
| ./Episodes/Frequency/Code\[1\]                                                                                                                                      | ./family-history/condition/occurrence/code | CodeType =&gt; coded-value |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |          |                                     |
|-----|----------|-------------------------------------|
| .   | ./common | CCRCodedDataObjectType =&gt; common |

<span style="FONT-WEIGHT: bold">Else If Exsits</span>(./Problem)
<span style="FONT-WEIGHT: bold">ForEach</span>(./Problem)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|               |                                                                                            |                                          |
|---------------|--------------------------------------------------------------------------------------------|------------------------------------------|
| ./Description | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./family-history/condition/name</span> | CodedDescriptionType =&gt; codable-value |

$OnsetDate = ./Episodes/Episode\[ [IsConcept](ccr-input-functions.md#IsConcept)(./DateTime, <span style="FONT-STYLE: italic">"problem-onset-date"</span>)\]\[1\]
<span style="FONT-WEIGHT: bold">If Exists</span>($OnsetDate)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|            |                                       |                                |
|------------|---------------------------------------|--------------------------------|
| $onsetDate | ./family-history/condition/onset-date | DateTimeType =&gt; approx-date |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                              |                                       |                                |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------|--------------------------------|
| ../DateTime\[ [IsConcept](ccr-input-functions.md#IsConcept)(./DateTime, <span style="FONT-STYLE: italic">"problem-onset-date"</span>)\[1\] | ./family-history/condition/onset-date | DateTimeType =&gt; approx-date |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                             |                                            |                            |
|-----------------------------------------------------------------------------------------------------------------------------|--------------------------------------------|----------------------------|
| [Concat](ccr-input-functions.md#Concat)(./Episodes/Frequency/Value, ./Episodes/Frequency/Units/Unit, ' ') | ./family-history/condition/occurrence/text |                            |
| ./Episodes/Frequency/Code\[1\]                                                                                              | ./family-history/condition/occurrence/code | CodeType =&gt; coded-value |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                         |                                     |
|-----|-------------------------|-------------------------------------|
| .   | ./family-history/common | CCRCodedDataObjectType =&gt; common |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### Alert : allergy

 
| CCR                                          | HealthVault                                    | Conversion                                                                            |
|----------------------------------------------|------------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">Alert</span> | <span style="FONT-WEIGHT: bold">allergy</span> | <span style="FONT-WEIGHT: bold">type-id = 52bf9104-2c5e-4f1f-a66d-552ebcc53df7</span> |

$Product = ./Agent/Products/Product\[1\]
$EnvAgent = ./Agent/EnvironmentalAgents/EnvironmentalAgent\[1\]
<span style="FONT-WEIGHT: bold">If Exists</span>(./Description)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|               |                                                                   |                                          |
|---------------|-------------------------------------------------------------------|------------------------------------------|
| ./Description | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./name</span> | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">Else If Exists</span>($Product)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                      |                                                                   |                                          |
|----------------------|-------------------------------------------------------------------|------------------------------------------|
| $Product/ProductName | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./name</span> | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">Else If Exists</span>($EnvAgent)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                       |                                                                   |     |
|-----------------------|-------------------------------------------------------------------|-----|
| $EnvAgent/Description | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./name</span> |     |

<span style="FONT-WEIGHT: bold">If Exists</span>(./Reaction)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                             |            |                                          |
|-----------------------------|------------|------------------------------------------|
| ./Reaction\[1\]/Description | ./reaction | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">If</span>(count(./DateTime) = 1) and <span style="FONT-WEIGHT: bold">If Exists</span>(./DateTime/DateTimeRange)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                          |                  |                                     |
|------------------------------------------|------------------|-------------------------------------|
| ./DateTime\[1\]/DateTimeRange/BeginRange | ./first-observed | DateTimeType =&gt; approx-date-time |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                |                  |                                     |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------|-------------------------------------|
| ./DateTime\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, <span style="FONT-STYLE: italic">"allergy-start-date"</span>)\]\[1\] | ./first-observed | DateTimeType =&gt; approx-date-time |

<span style="FONT-WEIGHT: bold">If Exists</span>($Product)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                      |                 |                                          |
|----------------------|-----------------|------------------------------------------|
| $Product/Type        | ./allergen-type | CodedDescriptionType =&gt; codable-value |
| $Product/Description | ./allergen-code | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">Else If Exists</span>($EnvAgent)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                       |                 |                                          |
|-----------------------|-----------------|------------------------------------------|
| $EnvAgent/Type        | ./allergen-type | CodedDescriptionType =&gt; codable-value |
| $EnvAgent/Description | ./allergen-code | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |           |                                     |
|-----|-----------|-------------------------------------|
| .   | ../common | CCRCodedDataObjectType =&gt; common |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### Medication : medication

 
| CCR                                               | HealthVault                                       | Conversion                                                                           |
|---------------------------------------------------|---------------------------------------------------|--------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">Medication</span> | <span style="FONT-WEIGHT: bold">medication</span> | <span style="FONT-WEIGHT: bold">type-id =30cafccc-047d-4288-94ef-643571f7919d</span> |

$Product = ./Product\[1\]
$Direction = ./Product\[1\]/Directions\[1\]/Direction\[1\]
<span style="FONT-WEIGHT: bold">If Exists</span>($Product)
<span style="FONT-WEIGHT: bold">If Exists</span>($Product/BrandName)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                      |                                                                   |                                          |
|----------------------|-------------------------------------------------------------------|------------------------------------------|
| $Product/BrandName   | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./name</span> | CodedDescriptionType =&gt; codable-value |
| $Product/ProductName | ./generic-name                                                    | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                      |                                                                   |                                          |
|----------------------|-------------------------------------------------------------------|------------------------------------------|
| $Product/ProductName | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./name</span> | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                           |             |                                          |
|---------------------------|-------------|------------------------------------------|
| $Direction/Dose\[1\]      | ./dose      | MeasureType =&gt; general-measurement    |
| $Product/Strength\[1\]    | ./strength  | MeasureType =&gt; general-measurement    |
| $Direction/Frequency\[1\] | ./frequency | MeasureType =&gt; general-measurement    |
| $Direction/Route\[1\]     | ./route     | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">If Exists</span>($Direction/Indication\[1\]/Description)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                        |              |                                          |
|----------------------------------------|--------------|------------------------------------------|
| $Direction/Indication\[1\]/Description | ./indication | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">Else If Exists</span>($Direction/Indication\[1\]/InternalCCRLink)
$Problem = [ResolveLink](ccr-input-functions.md#ResolveLink)($Direction/Indication\[1\]/InternalCCRLink)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                      |              |                                          |
|----------------------|--------------|------------------------------------------|
| $Problem/Description | ./indication | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                   |                     |                                     |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|-------------------------------------|
| ./DateTime\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, "<span style="FONT-STYLE: italic">medication-start-date"</span>)\]\[1\] | ./date-started      | DateTimeType =&gt; approx-date-time |
| ./DateTime\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, "<span style="FONT-STYLE: italic">medication-stop-date"</span>)\]\[1\]  | ./date-discontinued | DateTimeType =&gt; approx-date-time |
| .                                                                                                                                                                 | ./prescription      | Medication =&gt; prescription       |
| .                                                                                                                                                                 | ../common           | CCRCodedDataObjectType =&gt; common |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### Medication : prescription

 
| CCR                                               | HealthVault                                         | Conversion |
|---------------------------------------------------|-----------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">Medication</span> | <span style="FONT-WEIGHT: bold">prescription</span> |            |

$Actor <span style="FONT-WEIGHT: bold">= FindActorInSources</span>(./Source, <span style="FONT-STYLE: italic">"medication-prescribing-clinician"</span>)
<span style="FONT-WEIGHT: bold">If Exists</span>($Actor)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|        |                                                                            |                    |
|--------|----------------------------------------------------------------------------|--------------------|
| $Actor | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./prescribed-by</span> | Actor =&gt; person |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                   |                                                                                      |     |
|---------------------------------------------------|--------------------------------------------------------------------------------------|-----|
| <span style="FONT-STYLE: italic">"Unknown"</span> | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./prescribed-by/name/full</span> |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                          |                     |                                          |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|------------------------------------------|
| ./DateTime\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, "<span style="FONT-STYLE: italic">medication-prescription-date"</span>)\]\[1\] | ./date-prescribed   | DateTimeType =&gt; approx-date-time      |
| ./Quantity\[1\]                                                                                                                                                          | ./amount-prescribed | MeasureType =&gt; general-measurement    |
| ./Refills/Refill\[1\]/Number\[1\]                                                                                                                                        | ./refills           |                                          |
| ./PatientInstructions/Instruction\[1\]                                                                                                                                   | ./instructions      | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### Immunization : immunization

 
| CCR                                                 | HealthVault                                         | Conversion                                                                            |
|-----------------------------------------------------|-----------------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">Immunization</span> | <span style="FONT-WEIGHT: bold">immunization</span> | <span style="FONT-WEIGHT: bold">type-id = cd3587b5-b6e1-4565-ab3b-1c3ad45eb04f</span> |

$Product = ./Product\[1\]
<span style="FONT-WEIGHT: bold">If Exists</span>($Product)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                   |                                                                   |                                          |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|------------------------------------------|
| $Product/ProductName                                                                                                                                              | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./name</span> | CodedDescriptionType =&gt; codable-value |
| ./DateTime\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, "<span style="FONT-STYLE: italic">immunization-date"</span>)\]\[1\]     | ./administration-date                                             | DateTimeType =&gt; approx-date-time      |
| [ActorToString](ccr-input-functions.md#ActorToString)($Product/Manufacturer)                                                                    | ./manufacturer/text                                               |                                          |
| ./IDs\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, <span style="FONT-STYLE: italic">"immunization-lot-number"</span>)\]\[1\]/ID | ./lot                                                             |                                          |
| ./Directions\[1\]/Direction\[1\]/Route\[1\]                                                                                                                       | ./route                                                           | CodedDescriptionType =&gt; codable-value |
| ./SeriesNumber                                                                                                                                                    | ./sequence                                                        |                                          |
| ./Directions\[1\]/Direction\[1\]/Site\[1\]                                                                                                                        | ./anatomic-surface                                                | CodedDescriptionType =&gt; codable-value |
| ./Reaction/Description/Text                                                                                                                                       | ./adverse-event                                                   |                                          |
| ./Consent/Description/Text                                                                                                                                        | ./consent                                                         |                                          |
| .                                                                                                                                                                 | ../common                                                         | CCRCodedDataObjectType =&gt; common      |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### ResultType : Typed Things

 
| CCR                                               | HealthVault                                         | Conversion |
|---------------------------------------------------|-----------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">ResultType</span> | <span style="FONT-WEIGHT: bold">Typed Things</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                              |                           |                                        |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------|----------------------------------------|
| .                                                                                                                                                            | ./blood-pressure          | ResultType =&gt; blood-pressure        |
| .                                                                                                                                                            | ./cholesterol-profile     | ResultType =&gt; cholesterol-profile   |
| .                                                                                                                                                            | ./peak-flow               | ResultType =&gt; peak-flow             |
| .                                                                                                                                                            | ./exercise                | ResultType =&gt; exercise              |
| ./Test\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Description/Text, <span style="FONT-STYLE: italic">"height"</span>)\]             | ./height                  | TestType =&gt; height                  |
| ./Test\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Description/Text, <span style="FONT-STYLE: italic">"weight"</span>)\]             | ./weight                  | TestType =&gt; weight                  |
| ./Test\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Description/Text, <span style="FONT-STYLE: italic">"blood-glucose"</span>)\]      | ./blood-glucose           | TestType =&gt; blood-glucose           |
| ./Test\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Description, <span style="FONT-STYLE: italic">"blood-oxygen-saturation"</span>)\] | ./blood-oxygen-saturation | TestType =&gt; blood-oxygen-saturation |

<span style="FONT-WEIGHT: bold">If IsConcept</span>(./Type, <span style="FONT-STYLE: italic">"radiology-lab-results"</span>) or [IsConcept](ccr-input-functions.md#IsConcept)(./Description, <span style="FONT-STYLE: italic">"radiology-lab-results"</span>)
<span style="FONT-WEIGHT: bold">ForEach</span>(./Test)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|        |                         |                                      |
|--------|-------------------------|--------------------------------------|
| ./Test | ./radiology-lab-results | TestType =&gt; radiology-lab-results |

<span style="FONT-WEIGHT: bold">Remarks:</span> If a Result is in the CCR under VitalSigns and cannot be imported into any of the above types, then HealthVault will fall back to the following generic vital-signs mapping.
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |               |                              |
|-----|---------------|------------------------------|
| .   | ./vital-signs | ResultType =&gt; vital-signs |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### ResultType : vital-signs

 
| CCR                                               | HealthVault                                        | Conversion                                                                            |
|---------------------------------------------------|----------------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">ResultType</span> | <span style="FONT-WEIGHT: bold">vital-signs</span> | <span style="FONT-WEIGHT: bold">type-id = 73822612-C15F-4B49-9E65-6AF369E55C65</span> |

$DateTime = [GetDateTime](ccr-input-functions.md#GetDateTime)(., <span style="FONT-STYLE: italic">"result-collection-date"</span>)
<span style="FONT-WEIGHT: bold">If Exists</span>($DateTime/ExactDateTime)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                        |                                                                   |                              |
|--------------------------------------------------------|-------------------------------------------------------------------|------------------------------|
| ./DateTime                                             | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./when</span> | DateTimeType =&gt; date-time |
| <span style="FONT-WEIGHT: bold">ForEach</span>(./Test) | ./vital-signs-results                                             |                              |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|               |         |                                          |
|---------------|---------|------------------------------------------|
| ./Description | ./title | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">If IsNumber</span>(./TestResult/Value)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                    |         |                                 |
|--------------------|---------|---------------------------------|
| ./TestResult/Value | ./value | string =&gt; double             |
| ./TestResult       | ./unit  | MeasureType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">Else If Exists</span>(./TestResult/Value)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                     |              |     |
|-----------------------------------------------------------------------------------------------------------------------------------------------------|--------------|-----|
| [Concat](ccr-input-functions.md#Concat)(./TestResult/Value, ./TestResult/Units/Unit, <span style="FONT-STYLE: italic">" "</span>) | ./text-value |     |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                               |              |                     |
|-------------------------------|--------------|---------------------|
| ./TestResult/Description/Text | ./text-value | string =&gt; string |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|             |        |                                          |
|-------------|--------|------------------------------------------|
| ./Flag\[1\] | ./flag | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |           |                                     |
|-----|-----------|-------------------------------------|
| .   | ../common | CCRCodedDataObjectType =&gt; common |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### ResultType : blood-pressure

 
| CCR                                               | HealthVault                                           | Conversion                                                                            |
|---------------------------------------------------|-------------------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">ResultType</span> | <span style="FONT-WEIGHT: bold">blood-pressure</span> | <span style="FONT-WEIGHT: bold">type-id = ca3c57f4-f4c1-4e15-be67-0a3caf5414ed</span> |

$DateTime = [GetDateTime](ccr-input-functions.md#GetDateTime)(., <span style="FONT-STYLE: italic">"result-collection-date"</span>)
$Systolic = ./Test\[<span style="FONT-WEIGHT: bold">IsConcep</span>t(./Description/Text, <span style="FONT-STYLE: italic">"blood-pressure-systolic"</span>)\]\[1\]
$Diastolic = ./Test\[<span style="FONT-WEIGHT: bold">IsConcep</span>t(./Description/Text, <span style="FONT-STYLE: italic">"blood-pressure-diastolic"</span>)\]\[1\]
$Pulse = ./Test\[<span style="FONT-WEIGHT: bold">IsConcep</span>t(./Description/Text, <span style="FONT-STYLE: italic">"blood-pressure-pulse"</span>)\]\[1\]
<span style="FONT-WEIGHT: bold">If Exists</span>($DateTime/ExactDateTime and $Diastolic and $Systolic)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                             |                                                                        |                                     |
|-----------------------------|------------------------------------------------------------------------|-------------------------------------|
| $DateTime                   | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./when</span>      | DateTimeType =&gt; date-time        |
| $Systolic/TestResult/Value  | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./systolic</span>  | string =&gt; integer                |
| $Diastolic/TestResult/Value | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./diastolic</span> | string =&gt; integer                |
| $Pulse/TestResult/Value     | ./pulse                                                                | string =&gt; integer                |
| .                           | ../common                                                              | CCRCodedDataObjectType =&gt; common |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### ResultType : cholesterol-profile

 
| CCR                                               | HealthVault                                                | Conversion                                                                            |
|---------------------------------------------------|------------------------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">ResultType</span> | <span style="FONT-WEIGHT: bold">cholesterol-profile</span> | <span style="FONT-WEIGHT: bold">type-id = 796C186F-B874-471c-8468-3EEFF73BF66E</span> |

$DateTime = [GetDateTime](ccr-input-functions.md#GetDateTime)(., <span style="FONT-STYLE: italic">"result-collection-date"</span>)
$LDL = ./Test\[<span style="FONT-WEIGHT: bold">IsConcep</span>t(./Description/Text, <span style="FONT-STYLE: italic">"cholesterol-ldl"</span>)\]\[1\]
$HDL = ./Test\[<span style="FONT-WEIGHT: bold">IsConcep</span>t(./Description/Text, <span style="FONT-STYLE: italic">"cholesterol-hdl"</span>)\]\[1\]
$Total = ./Test\[<span style="FONT-WEIGHT: bold">IsConcep</span>t(./Description/Text, <span style="FONT-STYLE: italic">"cholesterol-total"</span>)\]\[1\]
$Trig = ./Test\[<span style="FONT-WEIGHT: bold">IsConcep</span>t(./Description/Text, <span style="FONT-STYLE: italic">"cholesterol-triglycerides"</span>)\]\[1\]
<span style="FONT-WEIGHT: bold">If Exists</span>($DateTime/ExactDateTime and ($LDL or $HDL or $Total or $Trig))
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                         |                                                                   |                                     |
|-------------------------|-------------------------------------------------------------------|-------------------------------------|
| $DateTime               | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./when</span> | DateTimeType =&gt; date             |
| $LDL/TestResult/Value   | ./ldl                                                             | string =&gt; integer                |
| $HDL/TestResult/Value   | ./hdl                                                             | string =&gt; integer                |
| $Total/TestResult/Value | ./total-cholesterol                                               | string =&gt; integer                |
| $Trig/TestResult/Value  | ./triglyceride                                                    | string =&gt; integer                |
| .                       | ../common                                                         | CCRCodedDataObjectType =&gt; common |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### ResultType : peak-flow

 
| CCR                                               | HealthVault                                      | Conversion                                                                            |
|---------------------------------------------------|--------------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">ResultType</span> | <span style="FONT-WEIGHT: bold">peak-flow</span> | <span style="FONT-WEIGHT: bold">type-id = 5d8419af-90f0-4875-a370-0f881c18f6b3</span> |

$DateTime = [GetDateTime](ccr-input-functions.md#GetDateTime)(., <span style="FONT-STYLE: italic">"result-collection-date"</span>)
$PEF = ./Test\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Description/Text, <span style="FONT-STYLE: italic">"pef"</span>)\]\[1\]
$FEV1 = ./Test\[<span style="FONT-WEIGHT: bold">IsConcep</span>t(./Description/Text, <span style="FONT-STYLE: italic">"fev1"</span>)\]\[1\]
$FEV6 = ./Test\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Description/Text, <span style="FONT-STYLE: italic">"fev6"</span>)\]\[1\]
<span style="FONT-WEIGHT: bold">If Exists</span>($DateTime/ExactDateTime and ($PEF or $FEV1 or $FEV6))
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|           |                                                                   |                                     |
|-----------|-------------------------------------------------------------------|-------------------------------------|
| $DateTime | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./when</span> | DateTimeType =&gt; approx-date-time |

<span style="FONT-WEIGHT: bold">If IsPositiveDouble</span>($PEF/TestResult/Value) and [IsConcept](ccr-input-functions.md#IsConcept)($PEF/TestResult/Units/Unit, <span style="FONT-STYLE: italic">"liters-per-second"</span>)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                       |                         |                                  |
|-----------------------|-------------------------|----------------------------------|
| $PEF/TestResult/Value | ./pef/liters-per-second |                                  |
| $PEF/TestResult       | ./pef/display           | MeasureGroup =&gt; display-value |

<span style="FONT-WEIGHT: bold">If IsPositiveDouble</span>($FEV1/TestResult/Value) and [IsConcept](ccr-input-functions.md#IsConcept)($FEV1/TestResult/Units/Unit, <span style="FONT-STYLE: italic">"liters"</span>)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                        |                |                                  |
|------------------------|----------------|----------------------------------|
| $FEV1/TestResult/Value | ./fev1/liters  |                                  |
| $FEV1/TestResult       | ./fev1/display | MeasureGroup =&gt; display-value |

<span style="FONT-WEIGHT: bold">If IsPositiveDouble</span>($FEV6/TestResult/Value) and <span style="FONT-WEIGHT: bold">IsConcept(</span>$FEV6/TestResult/Units/Unit, <span style="FONT-STYLE: italic">"liters"</span>)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                        |                |                                  |
|------------------------|----------------|----------------------------------|
| $FEV6/TestResult/Value | ./fev6/liters  |                                  |
| $FEV6/TestResult       | ./fev6/display | MeasureGroup =&gt; display-value |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |           |                                     |
|-----|-----------|-------------------------------------|
| .   | ../common | CCRCodedDataObjectType =&gt; common |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### ResultType : exercise

 
| CCR                                               | HealthVault                                     | Conversion                                                                            |
|---------------------------------------------------|-------------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">ResultType</span> | <span style="FONT-WEIGHT: bold">exercise</span> | <span style="FONT-WEIGHT: bold">type-id = 85a21ddb-db20-4c65-8d30-33c899ccf612</span> |

$DateTime = [GetDateTime](ccr-input-functions.md#GetDateTime)(., <span style="FONT-STYLE: italic">"result-collection-date"</span>)
$Distance = ./Test\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Description/Text, <span style="FONT-STYLE: italic">"exercise-distance"</span>)\]\[1\]
$Duration = ./Test\[<span style="FONT-WEIGHT: bold">IsConcep</span>t(./Description/Text, <span style="FONT-STYLE: italic">"exercise-duration"</span>)\]\[1\]
$Details = ./Test\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Description/Text, <span style="FONT-STYLE: italic">"exercise-details"</span>)\]
<span style="FONT-WEIGHT: bold">If Exists</span>($DateTime/ExactDateTime and ($Distance or $Duration or $Details) and ./Description)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                      |                                                                       |                                          |
|----------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|------------------------------------------|
| $DateTime                                                                                                            | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./when</span>     | DateTimeType =&gt; approx-date-time      |
| ./Description                                                                                                        | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./activity</span> | CodedDescriptionType =&gt; codable-value |
| <span style="FONT-WEIGHT: bold">ConvertToMeters</span>($Distance/TestResult/Value, $Distance/TestResult/Units/Unit)  | ./distance/m                                                          |                                          |
| $Distance/TestResult                                                                                                 | ./distance/display                                                    | MeasureGroup =&gt; display-value         |
| <span style="FONT-WEIGHT: bold">ConvertToMinutes</span>($Duration/TestResult/Value, $Duration/TestResult/Units/Unit) | ./duration                                                            |                                          |

<span style="FONT-WEIGHT: bold">ForEach</span>($Details)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                         |                                                                           |                                           |
|-------------------------|---------------------------------------------------------------------------|-------------------------------------------|
| ./Description/Code\[1\] | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./detail/name</span>  | CodeType =&gt; coded-value                |
| ./TestResult            | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./detail/value</span> | MeasureGroup =&gt; structured-measurement |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |           |                                     |
|-----|-----------|-------------------------------------|
| .   | ../common | CCRCodedDataObjectType =&gt; common |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### ResultType : discharge-summary

 
| CCR                                               | HealthVault                                              | Conversion                                                                            |
|---------------------------------------------------|----------------------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">ResultType</span> | <span style="FONT-WEIGHT: bold">discharge-summary</span> | <span style="FONT-WEIGHT: bold">type-id = 02ef57a2-a620-425a-8e92-a301542cca54</span> |

$DateTime = [GetDateTime](ccr-input-functions.md#GetDateTime)(.,<span style="FONT-STYLE: italic">"discharge-summary-create-date"</span>)
<span style="FONT-WEIGHT: bold">If Exists</span>($DateTime/ExactDateTime)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|               |                                                                   |                                          |
|---------------|-------------------------------------------------------------------|------------------------------------------|
| $DateTime     | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./when</span> | DateTimeType =&gt; date-time             |
| ./Description | ./type                                                            | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">Remarks:</span> For discharge summaries that are sent as Results, HealthVault will use the value of first associated comment that matches the <span style="FONT-STYLE: italic">discharge-summary-comment</span> concept as the content of the discharge summary.
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                                     |                                  |                                     |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------|-------------------------------------|
| [ResolveComment](ccr-input-functions.md#ResolveComment)(<span style="FONT-STYLE: italic">"discharge-summary-comment"</span>)                                      | ./text                           |                                     |
| <span style="FONT-WEIGHT: bold">FindActorInSources</span>(./Source, <span style="FONT-STYLE: italic">"discharge-summary-primary-provider"</span>)                                   | ./primary-provider               | Actor =&gt; person                  |
| ./DateTime\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, <span style="FONT-STYLE: italic">"discharge-summary-primary-endorsement"</span>)\]\[1\]   | ./primary-provider-endorsement   | DateTimeType =&gt; date-time        |
| <span style="FONT-WEIGHT: bold">FindActorInSources</span>(./Source, <span style="FONT-STYLE: italic">"discharge-summary-secondary-provider"</span>)                                 | ./secondary-provider             | Actor =&gt; person                  |
| ./DateTime\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, <span style="FONT-STYLE: italic">"discharge-summary-secondary-endorsement"</span>)\]\[1\] | ./secondary-provider-endorsement | DateTimeType =&gt; date-time        |
| ./DateTime\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, <span style="FONT-STYLE: italic">"discharge-summary-discharge-date"</span>)\]\[1\]        | ./discharge-date-time            | DateTimeType =&gt; approx-date-time |
| <span style="FONT-WEIGHT: bold">FindActorInSources</span>(./Source, <span style="FONT-STYLE: italic">"discharge-summary-principal-procedure-physician"</span>)                      | ./principal-procedure-physician  | Actor =&gt; person                  |
| .                                                                                                                                                                                   | ../common                        | CCRCodedDataObjectType =&gt; common |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### TestType : height

 
| CCR                                             | HealthVault                                   | Conversion                                                                            |
|-------------------------------------------------|-----------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">TestType</span> | <span style="FONT-WEIGHT: bold">height</span> | <span style="FONT-WEIGHT: bold">type-id = 40750a6a-89b2-455c-bd8d-b420a4cb500b</span> |

$DateTime = [GetDateTime](ccr-input-functions.md#GetDateTime)(.., <span style="FONT-STYLE: italic">"result-collection-date"</span>)
<span style="FONT-WEIGHT: bold">If Exists</span>($DateTime/ExactDateTime))
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                     |                                                                      |                                     |
|-----------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|-------------------------------------|
| $DateTime                                                                                           | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./when</span>    | DateTimeType =&gt; date-time        |
| <span style="FONT-WEIGHT: bold">ConvertToMeters</span>(./TestResult/Value, ./TestResult/Units/Unit) | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./value/m</span> |                                     |
| ./TestResult                                                                                        | ./value/display                                                      | MeasureGroup =&gt; display-value    |
| ..                                                                                                  | ../common                                                            | CCRCodedDataObjectType =&gt; common |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### TestType : weight

 
| CCR                                             | HealthVault                                   | Conversion                                                                            |
|-------------------------------------------------|-----------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">TestType</span> | <span style="FONT-WEIGHT: bold">weight</span> | <span style="FONT-WEIGHT: bold">type-id = 3d34d87e-7fc1-4153-800f-f56592cb0d17</span> |

$DateTime = [GetDateTime](ccr-input-functions.md#GetDateTime)(.., <span style="FONT-STYLE: italic">"result-collection-date"</span>)
<span style="FONT-WEIGHT: bold">If Exists</span>($DateTime/ExactDateTime)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                        |                                                                       |                                     |
|--------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|-------------------------------------|
| $DateTime                                                                                              | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./when</span>     | DateTimeType =&gt; date-time        |
| <span style="FONT-WEIGHT: bold">ConvertToKilograms</span>(./TestResult/Value, ./TestResult/Units/Unit) | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./value/kg</span> |                                     |
| ./TestResult                                                                                           | ./value/display                                                       | MeasureGroup =&gt; display-value    |
| ..                                                                                                     | ../common                                                             | CCRCodedDataObjectType =&gt; common |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### TestType : blood-glucose

 
| CCR                                             | HealthVault                                          | Conversion                                                                            |
|-------------------------------------------------|------------------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">TestType</span> | <span style="FONT-WEIGHT: bold">blood-glucose</span> | <span style="FONT-WEIGHT: bold">type-id = 879e7c04-4e8a-4707-9ad3-b054df467ce4</span> |

$DateTime = [GetDateTime](ccr-input-functions.md#GetDateTime)(.., <span style="FONT-STYLE: italic">"result-collection-date"</span>)
<span style="FONT-WEIGHT: bold">If Exists</span>($DateTime/ExactDateTime)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                 |                                                                             |                                          |
|-----------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------|------------------------------------------|
| $DateTime                                                                                                       | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./when</span>           | DateTimeType =&gt; date-time             |
| ./Description                                                                                                   | ./glucose-measurement-type                                                  | CodedDescriptionType =&gt; codable-value |
| <span style="FONT-WEIGHT: bold">ConvertToMilliMolesPerLiter</span>(./TestResult/Value, ./TestResult/Units/Unit) | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./value/mmoLPerl</span> |                                          |
| ./TestResult                                                                                                    | ./value/display                                                             | MeasureType =&gt; display-value          |
| ..                                                                                                              | ../common                                                                   | CCRCodedDataObjectType =&gt; common      |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### TestType : radiology-lab-results

 
| CCR                                             | HealthVault                                                  | Conversion                                                                            |
|-------------------------------------------------|--------------------------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">TestType</span> | <span style="FONT-WEIGHT: bold">radiology-lab-results</span> | <span style="FONT-WEIGHT: bold">type-id = e4911bd3-61bf-4e10-ae78-9c574b888b8f</span> |

$DateTime = [GetDateTime](ccr-input-functions.md#GetDateTime)(.., <span style="FONT-STYLE: italic">"result-collection-date"</span>)
<span style="FONT-WEIGHT: bold">If Exists</span>($DateTime/ExactDateTime)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                    |                                                                   |                              |
|--------------------|-------------------------------------------------------------------|------------------------------|
| $DateTime          | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./when</span> | DateTimeType =&gt; date-time |
| ./Description/Text | ./title                                                           |                              |

$Value = <span style="FONT-WEIGHT: bold">Concat(</span>./TestResult/Value, ./TestResult/Units/Unit, <span style="FONT-STYLE: italic">" "</span><span style="FONT-WEIGHT: bold">)</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                                    |               |                                     |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------|-------------------------------------|
| <span style="FONT-WEIGHT: bold">Concat(</span>$Value, ./TestResult/Description/Text, <span style="FONT-STYLE: italic">"&\#xA;&\#xA"</span><span style="FONT-WEIGHT: bold">)</span> | ./result-text |                                     |
| ..                                                                                                                                                                                 | ../common     | CCRCodedDataObjectType =&gt; common |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### TestType : blood-oxygen-saturation

 
| CCR                                             | HealthVault                                                    | Conversion                                                                            |
|-------------------------------------------------|----------------------------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">TestType</span> | <span style="FONT-WEIGHT: bold">blood-oxygen-saturation</span> | <span style="FONT-WEIGHT: bold">type-id = 3a54f95f-03d8-4f62-815f-f691fc94a500</span> |

$DateTime = [GetDateTime](ccr-input-functions.md#GetDateTime)(.., <span style="FONT-STYLE: italic">"result-collection-date"</span>)
<span style="FONT-WEIGHT: bold">If Exists</span>($DateTime/ExactDateTime)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|           |                                                                   |                              |
|-----------|-------------------------------------------------------------------|------------------------------|
| $DateTime | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./when</span> | DateTimeType =&gt; date-time |

<span style="FONT-WEIGHT: bold">If IsPercentage</span>(./TestResult/Value)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                    |                                                                    |     |
|--------------------|--------------------------------------------------------------------|-----|
| ./TestResult/Value | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./value</span> |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|             |                      |                                          |
|-------------|----------------------|------------------------------------------|
| ./Method    | ./measurement-method | CodedDescriptionType =&gt; codable-value |
| ./Flag\[1\] | ./measurement-flags  | CodedDescriptionType =&gt; codable-value |
| ..          | ../common            | CCRCodedDataObjectType =&gt; common      |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### ResultType : lab-test-results

 
| CCR                                               | HealthVault                                             | Conversion                                                                            |
|---------------------------------------------------|---------------------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">ResultType</span> | <span style="FONT-WEIGHT: bold">lab-test-results</span> | <span style="FONT-WEIGHT: bold">type-id = 5800eab5-a8c2-482a-a4d6-f1db25ae08c3</span> |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                                  |        |                                     |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------|-------------------------------------|
| [GetDateTime](ccr-input-functions.md#GetDateTime)(./, <span style="FONT-STYLE: italic">"result-collection-date"</span><span style="FONT-WEIGHT: bold">)</span> | ./when | DateTimeType =&gt; approx-date-time |

<span style="FONT-WEIGHT: bold">If Exists</span>(./Description)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|               |                                                                                   |                                          |
|---------------|-----------------------------------------------------------------------------------|------------------------------------------|
| ./Description | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./lab-group/group-name</span> | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">Else If Exists</span>(./Type)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|        |                                                                                   |                                          |
|--------|-----------------------------------------------------------------------------------|------------------------------------------|
| ./Type | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./lab-group/group-name</span> | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|          |                    |                                          |
|----------|--------------------|------------------------------------------|
| ./Status | ./lab-group/status | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">ForEach</span>(./Test)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                     |                                     |
|-----|---------------------|-------------------------------------|
| .   | ./lab-group/results | TestType =&gt; lab-test-result-type |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                               |              |                                     |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------|-------------------------------------|
| [FindActorInSource](ccr-input-functions.md#FindActorInSource)(./Source, <span style="FONT-STYLE: italic">"result-ordering-provider"</span>) | ./ordered-by | Actor =&gt; Organization            |
| .                                                                                                                                                             | ../common    | CCRCodedDataObjectType =&gt; common |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### TestType : lab-test-result-type

 
| CCR                                             | HealthVault                                                 | Conversion |
|-------------------------------------------------|-------------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">TestType</span> | <span style="FONT-WEIGHT: bold">lab-test-result-type</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                     |                                                                    |                                           |
|---------------------|--------------------------------------------------------------------|-------------------------------------------|
| ./DateTime\[1\]     | ./when                                                             | DateTimeType =&gt; approx-date-time       |
| ./Description/Text  | ./name                                                             |                                           |
| ../Result/Substance | ./substance                                                        | CodedDescriptionType =&gt; codable-value  |
| ./Method\[1\]       | ./collection-method                                                | CodedDescriptionType =&gt; codable-value  |
| ./Description       | ./clinical-code                                                    | CodedDescriptionType =&gt; codable-value  |
| .                   | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./value</span> | TestType =&gt; lab-test-result-value-type |
| ./Status            | ./status                                                           | CodedDescriptionType =&gt; codable-value  |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### TestType : lab-test-result-value-type

 
| CCR                                             | HealthVault                                                       | Conversion |
|-------------------------------------------------|-------------------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">TestType</span> | <span style="FONT-WEIGHT: bold">lab-test-result-value-type</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|              |                                                                          |                                          |
|--------------|--------------------------------------------------------------------------|------------------------------------------|
| ./TestResult | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./measurement</span> | TestResultType =&gt; general-measurement |

<span style="FONT-WEIGHT: bold">ForEach</span>(./NormalResult/Normal)
<span style="FONT-WEIGHT: bold">If Exists</span>(./Value)
<span style="FONT-WEIGHT: bold">If Exists</span>(./Units)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                                                                          |                                  |
|-----|--------------------------------------------------------------------------|----------------------------------|
| .   | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./ranges/type</span> | MeasureGroup =&gt; codable-value |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                   |                                                                               |     |
|---------------------------------------------------|-------------------------------------------------------------------------------|-----|
| <span style="FONT-STYLE: italic">"Unknown"</span> | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./ranges/type/text</span> |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|         |                                                                          |                     |
|---------|--------------------------------------------------------------------------|---------------------|
| ./Value | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./ranges/text</span> | number =&gt; string |

<span style="FONT-WEIGHT: bold">If IsNumber</span>(./Value)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|         |                              |     |
|---------|------------------------------|-----|
| ./Value | ./ranges/value/minimum-range |     |
| ./Value | ./ranges/value/maximum-range |     |

<span style="FONT-WEIGHT: bold">ForEach</span>(./Flag)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |        |                                          |
|-----|--------|------------------------------------------|
| .   | ./flag | CodedDescriptionType =&gt; codable-value |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### Procedure : procedure

 
| CCR                                              | HealthVault                                      | Conversion                                                                            |
|--------------------------------------------------|--------------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">Procedure</span> | <span style="FONT-WEIGHT: bold">procedure</span> | <span style="FONT-WEIGHT: bold">type-id = df4db479-a1ba-42a2-8714-2b083b88150f</span> |

<span style="FONT-WEIGHT: bold">If</span>(count(./DateTime) = 1) and <span style="FONT-WEIGHT: bold">If Exists</span>(./DateTime/DateTimeRange)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                     |        |                                     |
|-------------------------------------|--------|-------------------------------------|
| ./DateTime/DateTimeRange/BeginRange | ./when | DateTimeType =&gt; approx-date-time |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                            |        |                                     |
|------------------------------------------------------------------------------------------------------------------------------------------------------------|--------|-------------------------------------|
| ./DateTime\[ [IsConcept](ccr-input-functions.md#IsConcept)(./Type/Text, "<span style="FONT-STYLE: italic">procedure-date"</span>)\]\[1\] | ./when | DateTimeType =&gt; approx-date-time |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                                         |                                                                   |                                          |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|------------------------------------------|
| ./Description                                                                                                                                                                           | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./name</span> | CodedDescriptionType =&gt; codable-value |
| ./Site\[1\]                                                                                                                                                                             | ./anatomic-location                                               | CodedDescriptionType =&gt; codable-value |
| [ResolveActorInRole](ccr-input-functions.md#ResolveActorInRole)(./Practitioners/Practitioner, <span style="FONT-STYLE: italic">"procedure-primary-provider"</span>)   | ./primary-provider                                                | Actor =&gt; person                       |
| [ResolveActorInRole](ccr-input-functions.md#ResolveActorInRole)(./Practitioners/Practitioner, <span style="FONT-STYLE: italic">"procedure-secondary-provider"</span>) | ./secondary-provider                                              | Actor =&gt; person                       |
| .                                                                                                                                                                                       | ../common                                                         | CCRCodedDataObjectType =&gt; common      |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### Encounter : encounter

 
| CCR                                              | HealthVault                                      | Conversion                                                                            |
|--------------------------------------------------|--------------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">Encounter</span> | <span style="FONT-WEIGHT: bold">encounter</span> | <span style="FONT-WEIGHT: bold">type-id = 464083cc-13de-4f3e-a189-da8e47d5651b</span> |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                  |                       |                                          |
|----------------------------------------------------------------------------------------------------------------------------------|-----------------------|------------------------------------------|
| [GetDateTime](ccr-input-functions.md#GetDateTime)(., "<span style="FONT-STYLE: italic">encounter-date"</span>) | ./when                | DateTimeType =&gt; date-time             |
| ./Type                                                                                                                           | ./type                | CodedDescriptionType =&gt; codable-value |
| ./Description/Text                                                                                                               | ./reason              |                                          |
| ./Duration\[1\]/DateTime/DateTimeRange/BeginRange                                                                                | ./duration/start-date | DateTimeType =&gt; approx-date-time      |
| ./Duration\[1\]/DateTime/DateTimeRange/EndRange                                                                                  | ./duration/end-date   | DateTimeType =&gt; approx-date-time      |
| [ResolveActor](ccr-input-functions.md#ResolveActor)(./Locations/Location\[1\]/Actor/ActorID)                   | ./facility            | Actor =&gt; Organization                 |

<span style="FONT-WEIGHT: bold">ForEach</span>(./Practitioners/Practitioner)
$Practitioners = [Concat](ccr-input-functions.md#Concat)($Practitioners, ., <span style="FONT-STYLE: italic">"\\n\\n"</span>)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |           |                                     |
|-----|-----------|-------------------------------------|
| .   | ../common | CCRCodedDataObjectType =&gt; common |

<span style="FONT-WEIGHT: bold">Remarks:</span> Practioners are appended to the content that is already in the note field.
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                |                |     |
|----------------|----------------|-----|
| $Practitioners | ../common/note |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### Encounter : appointment

 
| CCR                                              | HealthVault                                        | Conversion                                                                            |
|--------------------------------------------------|----------------------------------------------------|---------------------------------------------------------------------------------------|
| <span style="FONT-WEIGHT: bold">Encounter</span> | <span style="FONT-WEIGHT: bold">appointment</span> | <span style="FONT-WEIGHT: bold">type-id = 4b18aeb6-5f01-444c-8c70-dbf13a2f510b</span> |

$DateTime = [GetDateTime](ccr-input-functions.md#GetDateTime)(.,<span style="FONT-STYLE: italic">"appointment-date"</span>)
<span style="FONT-WEIGHT: bold">If Exists</span>($DateTime/ExactDateTime)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                   |                                                                   |                                          |
|---------------------------------------------------|-------------------------------------------------------------------|------------------------------------------|
| $DateTime                                         | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./when</span> | DateTimeType =&gt; date-time             |
| ./Duration\[1\]/DateTime/DateTimeRange/BeginRange | ./duration/start-date                                             | DateTimeType =&gt; approx-date-time      |
| ./Duration\[1\]/DateTime/DateTimeRange/EndRange   | ./duration/end-date                                               | DateTimeType =&gt; approx-date-time      |
| ./Description                                     | ./service                                                         | CodedDescriptionType =&gt; codable-value |

$Practitioner = [ResolveActor](ccr-input-functions.md#ResolveActor)(./Practitioners/Practitioner\[1\]/ActorID)
<span style="FONT-WEIGHT: bold">If Exists</span>($Practitioner/Person)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|               |          |                    |
|---------------|----------|--------------------|
| $Practitioner | ./clinic | Actor =&gt; Person |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                   |                    |     |
|---------------------------------------------------|--------------------|-----|
| <span style="FONT-STYLE: italic">"Unknown"</span> | ./clinic/name/full |     |

$Location = [ResolveActor](ccr-input-functions.md#ResolveActor)(./Locations/Location\[1\]/Actor/ActorID)
<span style="FONT-WEIGHT: bold">If Exists</span>($Location)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                             |                       |     |
|-----------------------------|-----------------------|-----|
| $Location/Organization/Name | ./clinic/organization |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|          |              |                                          |
|----------|--------------|------------------------------------------|
| ./Status | ./status     |                                          |
| ./Type   | ./care-class | CodedDescriptionType =&gt; codable-value |
| .        | ../common    | CCRCodedDataObjectType =&gt; common      |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.
