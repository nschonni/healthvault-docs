---
title: Continuity of Care Record Output Mappings
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Overview of how HealthVault maps HealthVault data into Continuity of Care Records. 
---

Continuity of Care Record Output Mappings
===================

The transforms that convert HealthVault types into CCR data are not simple mappings of one data value onto another. The mappings are context sensitive and depend on both the presence and value of individual properties of the HealthVault type.

The logic behind each transform is described below. In order to improve the readability of those descriptions, observe the following conventions:

1.  **Value mappings**. Each "Map values" statement is followed by one or more table rows, each of which describes a direct mapping of a specific element in a HealthVault type onto an element in a CCR. Mappings described in adjacent rows should be applied together, and in the sequence indicated.
    Each row contains the following elements:
    1.  **HealthVault**. The element in the HealthVault type whose value is used to populate the CCR, or a function (see below) whose return value will be used. Note that the [GetConcept](ccr-output-functions.md) functions use the values defined in the "Export Text" column <a href="ccr-vocabularies.md" id="PageContent_14115_2">HealthVault CCR Vocabularies</a> to assign an element name to a concept.
    2.  **CCR**. The CCR element whose value will be set.
    3.  **Conversion** (optional.) This may specify a simple type conversion (such as Boolean), an externally defined conversion (such as the ISO-8601 date standard), or a named conversion defined elsewhere in this document.
2.  **Scope**. Each line that is not a table row is indented to indicate the scope of loops and conditional elements within the transform logic.
3.  **Procedures**. Some sections of the transform logic are described as procedure or function calls. Each call referenced in the following mappings is described as pseudocode in <a href="ccr-output-functions.md" id="PageContent_14115_3">HealthVault CCR Output Functions</a>.
4.  **Required elements**. Some transforms require that specific elements in the input data be present and not empty. Those elements are indicated with ***bold italic*** text in the corresponding cells in the mapping tables. If any required values cannot be processed for any reason, the transform will not create the output type.

Date Types
----------

### date : ExactDateTime

 
| HealthVault                                 | CCR                                                  | Conversion |
|---------------------------------------------|------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">date</span> | <span style="FONT-WEIGHT: bold">ExactDateTime</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |     |                    |
|-----|-----|--------------------|
| y   | .   | ConvertTo\_ISO8601 |
| m   | .   | ConvertTo\_ISO8601 |
| d   | .   | ConvertTo\_ISO8601 |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### time : ExactDateTime

 
| HealthVault                                 | CCR                                                  | Conversion |
|---------------------------------------------|------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">time</span> | <span style="FONT-WEIGHT: bold">ExactDateTime</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |     |                    |
|-----|-----|--------------------|
| h   | .   | ConvertTo\_ISO8601 |
| m   | .   | ConvertTo\_ISO8601 |
| s   | .   | ConvertTo\_ISO8601 |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### approx-date : ExactDateTime

 
| HealthVault                                        | CCR                                                  | Conversion |
|----------------------------------------------------|------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">approx-date</span> | <span style="FONT-WEIGHT: bold">ExactDateTime</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |     |                    |
|-----|-----|--------------------|
| y   | .   | ConvertTo\_ISO8601 |
| m   | .   | ConvertTo\_ISO8601 |
| d   | .   | ConvertTo\_ISO8601 |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### date-time : ExactDateTime

 
| HealthVault                                      | CCR                                                  | Conversion |
|--------------------------------------------------|------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">date-time</span> | <span style="FONT-WEIGHT: bold">ExactDateTime</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|        |     |                          |
|--------|-----|--------------------------|
| ./date | .   | date =&gt; ExactDateTime |
| ./time | .   | time =&gt; ExactDateTime |
| ./tz   | .   | ConvertTo\_ISO8601       |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### StructuredApproxDate : ExactDateTime

 
| HealthVault                                                 | CCR                                                  | Conversion |
|-------------------------------------------------------------|------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">StructuredApproxDate</span> | <span style="FONT-WEIGHT: bold">ExactDateTime</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|        |     |                                 |
|--------|-----|---------------------------------|
| ./date | .   | approx-date =&gt; ExactDateTime |
| ./time | .   | time =&gt; ExactDateTime        |
| ./tz   | .   | ConvertTo\_ISO8601              |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### approx-date-time : ExactDateTime

 
| HealthVault                                             | CCR                                                  | Conversion |
|---------------------------------------------------------|------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">approx-date-time</span> | <span style="FONT-WEIGHT: bold">ExactDateTime</span> |            |

<span style="FONT-WEIGHT: bold">If Exists</span>(./structured)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|              |                 |                                          |
|--------------|-----------------|------------------------------------------|
| ./structured | ./ExactDateTime | StructuredApproxDate =&gt; ExactDateTime |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### approx-date-time : DateTimeType

 
| HealthVault                                             | CCR                                                 | Conversion |
|---------------------------------------------------------|-----------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">approx-date-time</span> | <span style="FONT-WEIGHT: bold">DateTimeType</span> |            |

<span style="FONT-WEIGHT: bold">If Exists</span>(./structured)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|              |                 |                                          |
|--------------|-----------------|------------------------------------------|
| ./structured | ./ExactDateTime | StructuredApproxDate =&gt; ExactDateTime |

<span style="FONT-WEIGHT: bold">Else If Exists</span>(./descriptive)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|               |                            |     |
|---------------|----------------------------|-----|
| ./descriptive | ./ApproximateDateTime/Text |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### date : DateTimeType

 
| HealthVault                                 | CCR                                                 | Conversion |
|---------------------------------------------|-----------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">date</span> | <span style="FONT-WEIGHT: bold">DateTimeType</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                 |                          |
|-----|-----------------|--------------------------|
| .   | ./ExactDateTime | date =&gt; ExactDateTime |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### date-time : DateTimeType

 
| HealthVault                                      | CCR                                                 | Conversion |
|--------------------------------------------------|-----------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">date-time</span> | <span style="FONT-WEIGHT: bold">DateTimeType</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                 |                               |
|-----|-----------------|-------------------------------|
| .   | ./ExactDateTime | date-time =&gt; ExactDateTime |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

Coded Values
------------

### coded-value : CodeType

 
| HealthVault                                        | CCR                                             | Conversion |
|----------------------------------------------------|-------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">coded-value</span> | <span style="FONT-WEIGHT: bold">CodeType</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|           |                                                                           |     |
|-----------|---------------------------------------------------------------------------|-----|
| ./value   | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Value</span>        |     |
| ./type    | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CodingSystem</span> |     |
| ./version | ./Version                                                                 |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### codable-value : CodedDescriptionType

 
| HealthVault                                          | CCR                                                         | Conversion |
|------------------------------------------------------|-------------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">codable-value</span> | <span style="FONT-WEIGHT: bold">CodedDescriptionType</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|        |                                                                   |     |
|--------|-------------------------------------------------------------------|-----|
| ./text | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Text</span> |     |

<span style="FONT-WEIGHT: bold">ForEach</span>(./code)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |        |     |
|-----|--------|-----|
| .   | ./Code |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### codable-value : MeasureType

 
| HealthVault                                          | CCR                                                | Conversion |
|------------------------------------------------------|----------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">codable-value</span> | <span style="FONT-WEIGHT: bold">MeasureType</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|        |              |     |
|--------|--------------|-----|
| ./text | ./Units/Unit |     |

<span style="FONT-WEIGHT: bold">ForEach</span>(./units/code)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |              |                            |
|-----|--------------|----------------------------|
| .   | ./Units/Code | coded-value =&gt; CodeType |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

Measurements
------------

### structured-measurement : MeasureType or MeasureGroup

 
| HealthVault                                                   | CCR                                                                | Conversion |
|---------------------------------------------------------------|--------------------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">structured-measurement</span> | <span style="FONT-WEIGHT: bold">MeasureType or MeasureGroup</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|              |                                                                    |     |
|--------------|--------------------------------------------------------------------|-----|
| ./value      | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Value</span> |     |
| ./units/text | ./Units/Unit                                                       |     |

<span style="FONT-WEIGHT: bold">ForEach</span>(./units/code)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |              |     |
|-----|--------------|-----|
| .   | ./Units/Code |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### general-measurement : MeasureType or MeasureGroup

 
| HealthVault                                                | CCR                                                                | Conversion |
|------------------------------------------------------------|--------------------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">general-measurement</span> | <span style="FONT-WEIGHT: bold">MeasureType or MeasureGroup</span> |            |

<span style="FONT-WEIGHT: bold">If Exists</span>(./structured)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|              |     |                                          |
|--------------|-----|------------------------------------------|
| ./structured | .   | structured-measurement =&gt; MeasureType |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|           |                                                                    |     |
|-----------|--------------------------------------------------------------------|-----|
| ./display | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Value</span> |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### display-value : MeasureType or MeasureGroup

 
| HealthVault                                          | CCR                                                                | Conversion |
|------------------------------------------------------|--------------------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">display-value</span> | <span style="FONT-WEIGHT: bold">MeasureType or MeasureGroup</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|          |              |     |
|----------|--------------|-----|
| .        | ./Value      |     |
| ./@units | ./Units/Unit |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

Persons
-------

### name : PersonNameType

 
| HealthVault                                 | CCR                                                   | Conversion |
|---------------------------------------------|-------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">name</span> | <span style="FONT-WEIGHT: bold">PersonNameType</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|               |          |     |
|---------------|----------|-----|
| ./first       | ./Given  |     |
| ./middle      | ./Middle |     |
| ./last        | ./Family |     |
| ./suffix/text | ./Suffix |     |
| ./title/text  | ./Title  |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### email : CommunicationType

 
| HealthVault                                  | CCR                                                      | Conversion |
|----------------------------------------------|----------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">email</span> | <span style="FONT-WEIGHT: bold">CommunicationType</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|               |                                                                    |     |
|---------------|--------------------------------------------------------------------|-----|
| ./address     | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Value</span> |     |
| ./description | ./Type/Text                                                        |     |

<span style="FONT-WEIGHT: bold">If</span>(./is-primary)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                               |            |     |
|-------------------------------------------------------------------------------------------------------------------------------|------------|-----|
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"priority-primary"</span>) | ./Priority |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### phone : CommunicationType

 
| HealthVault                                  | CCR                                                      | Conversion |
|----------------------------------------------|----------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">phone</span> | <span style="FONT-WEIGHT: bold">CommunicationType</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|               |                                                                    |     |
|---------------|--------------------------------------------------------------------|-----|
| ./number      | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Value</span> |     |
| ./description | ./Type/Text                                                        |     |

<span style="FONT-WEIGHT: bold">If</span>(./is-primary)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                               |            |     |
|-------------------------------------------------------------------------------------------------------------------------------|------------|-----|
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"priority-primary"</span>) | ./Priority |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### address : Actor/Address

 
| HealthVault                                    | CCR                                                  | Conversion |
|------------------------------------------------|------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">address</span> | <span style="FONT-WEIGHT: bold">Actor/Address</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|               |             |     |
|---------------|-------------|-----|
| ./description | ./Type/Text |     |

<span style="FONT-WEIGHT: bold">If</span>(./is-primary)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                               |            |     |
|-------------------------------------------------------------------------------------------------------------------------------|------------|-----|
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"priority-primary"</span>) | ./Priority |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|               |              |     |
|---------------|--------------|-----|
| ./street\[1\] | ./Line1      |     |
| ./street\[2\] | ./Line2      |     |
| ./city        | ./City       |     |
| ./state       | ./State      |     |
| ./country     | ./Country    |     |
| ./postcode    | ./PostalCode |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### contact : Actor

 
| HealthVault                                    | CCR                                          | Conversion |
|------------------------------------------------|----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">contact</span> | <span style="FONT-WEIGHT: bold">Actor</span> |            |

<span style="FONT-WEIGHT: bold">ForEach</span>(./address)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |           |                             |
|-----|-----------|-----------------------------|
| .   | ./Address | address =&gt; Actor/Address |

<span style="FONT-WEIGHT: bold">ForEach</span>(./phone)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |             |                               |
|-----|-------------|-------------------------------|
| .   | ./Telephone | phone =&gt; CommunicationType |

<span style="FONT-WEIGHT: bold">ForEach</span>(./email)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |         |                               |
|-----|---------|-------------------------------|
| .   | ./Email | email =&gt; CommunicationType |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### person : Actor

 
| HealthVault                                   | CCR                                          | Conversion |
|-----------------------------------------------|----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">person</span> | <span style="FONT-WEIGHT: bold">Actor</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                         |                           |                                          |
|-------------------------|---------------------------|------------------------------------------|
| ./name                  | ./Person/Name/CurrentName | name =&gt; PersonNameType                |
| ./name/full             | ./Person/Name/DisplayName |                                          |
| ./type                  | ./Relation\[1\]           | codable-value =&gt; CodedDescriptionType |
| ./professional-training | ./Specialty\[1\]/Text     |                                          |
| ./contact               | .                         | contact =&gt; Actor                      |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### personal : Actor

 
| HealthVault                                     | CCR                                          | Conversion |
|-------------------------------------------------|----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">personal</span> | <span style="FONT-WEIGHT: bold">Actor</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|             |                           |                              |
|-------------|---------------------------|------------------------------|
| ./name      | ./Person/Name/CurrentName | name =&gt; PersonNameType    |
| ./name/full | ./Person/Name/DisplayName |                              |
| ./birthdate | ./Person/DateOfBirth      | date-time =&gt; DateTimeType |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### Organization : Actor

 
| HealthVault                                         | CCR                                          | Conversion |
|-----------------------------------------------------|----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">Organization</span> | <span style="FONT-WEIGHT: bold">Actor</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|           |                     |                                          |
|-----------|---------------------|------------------------------------------|
| ./name    | ./Organization/Name |                                          |
| ./type    | ./Specialty\[1\]    | codable-value =&gt; CodedDescriptionType |
| ./contact | .                   | contact =&gt; Actor                      |
| ./website | ./URL\[1\]/Value    |                                          |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### FamilyHistoryRelative : Actor

 
| HealthVault                                                  | CCR                                          | Conversion |
|--------------------------------------------------------------|----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">FamilyHistoryRelative</span> | <span style="FONT-WEIGHT: bold">Actor</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                 |                      |                                          |
|-----------------|----------------------|------------------------------------------|
| ./relative-name | .                    | person =&gt; Actor                       |
| ./relationship  | ./Relation           | codable-value =&gt; CodedDescriptionType |
| ./date-of-birth | ./Person/DateOfBirth | approx-date =&gt; DateTimeType           |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

Common
------

### thing : Source

 
| HealthVault                                  | CCR                                           | Conversion |
|----------------------------------------------|-----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">thing</span> | <span style="FONT-WEIGHT: bold">Source</span> |            |

<span style="FONT-WEIGHT: bold">If Exists</span>(../common/source) and <span style="FONT-WEIGHT: bold">If</span>(../common/source != <span style="FONT-STYLE: italic">"Unknown"</span>)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                               |             |     |
|---------------------------------------------------------------------------------------------------------------|-------------|-----|
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/source) | ./CommentID |     |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                   |                    |     |
|---------------------------------------------------|--------------------|-----|
| <span style="FONT-STYLE: italic">"Unknown"</span> | ./Description/Text |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

HealthVault Record : ContinuityOfCareRecord
-------------------------------------------

### HealthVault Record : ContinuityOfCareRecord

 
| HealthVault                                               | CCR                                                           | Conversion |
|-----------------------------------------------------------|---------------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">HealthVault Record</span> | <span style="FONT-WEIGHT: bold">ContinuityOfCareRecord</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                |                                                                                     |     |
|--------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------|-----|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                    | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDocumentObjectID</span>    |     |
| <span style="FONT-STYLE: italic">"English"</span>                                                                              | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Language/Text</span>          |     |
| <span style="FONT-STYLE: italic">"V1.0"</span>                                                                                 | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Version</span>                |     |
| now()                                                                                                                          | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./DateTime</span>               |     |
| [CreateHealthVaultActor](https://msdn.microsoft.com/ee663896.aspx#CreateHealthVaultActor)(.)                                   | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./From/ActorLink/ActorID</span> |     |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"healthcare-system"</span>) | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./From/ActorRole</span>         |     |

$Personal = /thing\[type-id = <span style="FONT-STYLE: italic">"92ba621e-66b3-4a01-bd73-74844aed4f5b"</span>\]\[1\]/data-xml/personal
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                              |                                                                      |     |
|----------------------------------------------------------------------------------------------|----------------------------------------------------------------------|-----|
| [CreatePatientActor](https://msdn.microsoft.com/ee663896.aspx#CreatePatientActor)($Personal) | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Patient</span> |     |

$Payers = /thing\[type-id = <span style="FONT-STYLE: italic">"9366440c-ec81-4b89-b231-308a4c4d70ed"</span>\]/data-xml/payer
<span style="FONT-WEIGHT: bold">ForEach</span> ($Payers)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                     |                   |
|-----|---------------------|-------------------|
| .   | ./Body/Payers/Payer | payer =&gt; Payer |

$Directives = /thing\[type-id = <span style="FONT-STYLE: italic">"822a5e5a-14f1-4d06-b92f-8f3f1b05218f"</span>\]/data-xml/directive
<span style="FONT-WEIGHT: bold">ForEach</span> ($Directives)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                                           |                                  |
|-----|-------------------------------------------|----------------------------------|
| .   | ./Body/AdvanceDirectives/AdvanceDirective | directive =&gt; AdvanceDirective |

$Conditions = /thing\[type-id = <span style="FONT-STYLE: italic">"7ea7a1f9-880b-4bd4-b593-f5660f20eda8"</span>\]/data-xml/condition
<span style="FONT-WEIGHT: bold">ForEach</span> ($Conditions)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                         |                         |
|-----|-------------------------|-------------------------|
| .   | ./Body/Problems/Problem | condition =&gt; Problem |

$FamilyHistories = /thing\[type-id = <span style="FONT-STYLE: italic">"22826e13-41e1-4ba3-8447-37dadd208fd8"</span>\]/data-xml/family-history
<span style="FONT-WEIGHT: bold">ForEach</span> ($FamilyHistories)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                                           |                                                |
|-----|-------------------------------------------|------------------------------------------------|
| .   | ./Body/FamilyHistory/FamilyProblemHistory | family-history =&gt; FamilyProblemHistory (v2) |

$FamilyHistories = /thing\[type-id = <span style="FONT-STYLE: italic">"4a04fcc8-19c1-4d59-a8c7-2031a03f21de"</span>\]/data-xml/family-history
<span style="FONT-WEIGHT: bold">ForEach</span> ($FamilyHistories)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                                           |                                                |
|-----|-------------------------------------------|------------------------------------------------|
| .   | ./Body/FamilyHistory/FamilyProblemHistory | family-history =&gt; FamilyProblemHistory (v3) |

$Allergies = /thing\[type-id = <span style="FONT-STYLE: italic">"52bf9104-2c5e-4f1f-a66d-552ebcc53df7"</span>\]/data-xml/allergy
<span style="FONT-WEIGHT: bold">ForEach</span> ($Allergies)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                     |                     |
|-----|---------------------|---------------------|
| .   | ./Body/Alerts/Alert | allergy =&gt; Alert |

$Medications = /thing\[type-id = <span style="FONT-STYLE: italic">"30cafccc-047d-4288-94ef-643571f7919d"</span>\]/data-xml/medication
<span style="FONT-WEIGHT: bold">ForEach</span> ($Medications)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                               |                             |
|-----|-------------------------------|-----------------------------|
| .   | ./Body/Medications/Medication | medication =&gt; Medication |

$Immunizations = /thing\[type-id = <span style="FONT-STYLE: italic">"cd3587b5-b6e1-4565-ab3b-1c3ad45eb04f"</span>\]/data-xml/immunization
<span style="FONT-WEIGHT: bold">ForEach</span>($Immunzations)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                                   |                                 |
|-----|-----------------------------------|---------------------------------|
| .   | ./Body/Immunizations/Immunization | immunization =&gt; Immunization |

$Heights = /thing\[type-id = <span style="FONT-STYLE: italic">"40750a6a-89b2-455c-bd8d-b420a4cb500b"</span>\]/data-xml/height
<span style="FONT-WEIGHT: bold">ForEach</span> ($Heights)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                          |                     |
|-----|--------------------------|---------------------|
| .   | ./Body/VitalSigns/Result | height =&gt; Result |

$Weights = /thing\[type-id = <span style="FONT-STYLE: italic">"3d34d87e-7fc1-4153-800f-f56592cb0d17"</span>\]/data-xml/weight
<span style="FONT-WEIGHT: bold">ForEach</span> ($Weights)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                          |                     |
|-----|--------------------------|---------------------|
| .   | ./Body/VitalSigns/Result | weight =&gt; Result |

$BP = /thing\[type-id = <span style="FONT-STYLE: italic">"ca3c57f4-f4c1-4e15-be67-0a3caf5414ed"</span>\]/data-xml/blood-pressure
<span style="FONT-WEIGHT: bold">ForEach</span> ($BP)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                          |                             |
|-----|--------------------------|-----------------------------|
| .   | ./Body/VitalSigns/Result | blood-pressure =&gt; Result |

$Glucose = /thing\[type-id = <span style="FONT-STYLE: italic">"879e7c04-4e8a-4707-9ad3-b054df467ce4"</span>\]/data-xml/blood-glucose
<span style="FONT-WEIGHT: bold">ForEach</span> ($Glucose)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                          |                            |
|-----|--------------------------|----------------------------|
| .   | ./Body/VitalSigns/Result | blood-glucose =&gt; Result |

$Cholesterol = /thing\[type-id = <span style="FONT-STYLE: italic">"796c186f-b874-471c-8468-3eeff73bf66e"</span>\]/data-xml/cholesterol-profile
<span style="FONT-WEIGHT: bold">ForEach</span> ($Cholesterol)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                          |                          |
|-----|--------------------------|--------------------------|
| .   | ./Body/VitalSigns/Result | cholesterol =&gt; Result |

$BloodOx = /thing\[type-id = <span style="FONT-STYLE: italic">"3a54f95f-03d8-4f62-815f-f691fc94a500"</span>\]/data-xml/blood-oxygen-saturation
<span style="FONT-WEIGHT: bold">ForEach</span> ($BloodOx)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                          |                                      |
|-----|--------------------------|--------------------------------------|
| .   | ./Body/VitalSigns/Result | blood-oxygen-saturation =&gt; Result |

$Exercise = /thing\[type-id = <span style="FONT-STYLE: italic">"85a21ddb-db20-4c65-8d30-33c899ccf612"</span>\]/data-xml/exercise
<span style="FONT-WEIGHT: bold">ForEach</span> ($Exercise)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                          |                       |
|-----|--------------------------|-----------------------|
| .   | ./Body/VitalSigns/Result | exercise =&gt; Result |

$PeakFlow = /thing\[type-id = <span style="FONT-STYLE: italic">"5d8419af-90f0-4875-a370-0f881c18f6b3"</span>\]/data-xml/peak-flow
<span style="FONT-WEIGHT: bold">ForEach</span> ($PeakFlow)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                          |                        |
|-----|--------------------------|------------------------|
| .   | ./Body/VitalSigns/Result | peak-flow =&gt; Result |

$Vitals = /thing\[type-id = <span style="FONT-STYLE: italic">"73822612-c15f-4b49-9e65-6af369e55c65"</span>\]/data-xml/vital-signs
<span style="FONT-WEIGHT: bold">ForEach</span> ($Vitals)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                          |                          |
|-----|--------------------------|--------------------------|
| .   | ./Body/VitalSigns/Result | vital-signs =&gt; Result |

$Results = /thing\[type-id = <span style="FONT-STYLE: italic">"e4911bd3-61bf-4e10-ae78-9c574b888b8f"</span>\]/data-xml/radiology-lab-results
<span style="FONT-WEIGHT: bold">ForEach</span> ($Results)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                       |                                    |
|-----|-----------------------|------------------------------------|
| .   | ./Body/Results/Result | radiology-lab-results =&gt; Result |

$Results = /thing\[type-id = <span style="FONT-STYLE: italic">"5800eab5-a8c2-482a-a4d6-f1db25ae08c3"</span>\]/data-xml/lab-test-results
<span style="FONT-WEIGHT: bold">ForEach</span>($Results/lab-group)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                       |                                          |
|-----|-----------------------|------------------------------------------|
| .   | ./Body/Results/Result | lab-test-results-group-type =&gt; Result |

$Results = /thing\[type-id = <span style="FONT-STYLE: italic">"02ef57a2-a620-425a-8e92-a301542cca54"</span>\]/data-xml/discharge-summary
<span style="FONT-WEIGHT: bold">ForEach</span>($Results)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                       |                                |
|-----|-----------------------|--------------------------------|
| .   | ./Body/Results/Result | discharge-summary =&gt; Result |

$Procedures = /thing\[type-id = <span style="FONT-STYLE: italic">"df4db479-a1ba-42a2-8714-2b083b88150f"</span>\]/data-xml/procedure
<span style="FONT-WEIGHT: bold">ForEach</span> ($Procedures)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                             |                           |
|-----|-----------------------------|---------------------------|
| .   | ./Body/Procedures/Procedure | procedure =&gt; Procedure |

$Encounters = /thing\[type-id = <span style="FONT-STYLE: italic">"464083cc-13de-4f3e-a189-da8e47d5651b"</span>\]/data-xml/encounter
<span style="FONT-WEIGHT: bold">ForEach</span> ($Encounters)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                             |                           |
|-----|-----------------------------|---------------------------|
| .   | ./Body/Encounters/Encounter | encounter =&gt; Encounter |

$Appointments = /thing\[type-id = <span style="FONT-STYLE: italic">"4b18aeb6-5f01-444c-8c70-dbf13a2f510b"</span>\]/data-xml/appointment
<span style="FONT-WEIGHT: bold">ForEach</span> ($Appointments)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |                             |                             |
|-----|-----------------------------|-----------------------------|
| .   | ./Body/Encounters/Encounter | appointment =&gt; Encounter |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

thing/data-xml : ContinuityOfCareRecord/Body
--------------------------------------------

### payer : Payer

 
| HealthVault                                  | CCR                                          | Conversion |
|----------------------------------------------|----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">payer</span> | <span style="FONT-WEIGHT: bold">Payer</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                      |                                                                              |                                          |
|--------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|------------------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                          | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                                          |
| ./expiration-date                                                                                                                    | ./DateTime                                                                   | date-time =&gt; DateTimeType             |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"payer-benefit-stop-date"</span>) | ./DateTime/Type/Text                                                         |                                          |
| ./plan-code                                                                                                                          | ./IDs\[1\]/ID                                                                |                                          |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"payer-plan-code"</span>)         | ./IDs\[1\]/Type/Text                                                         |                                          |
| ./group-num                                                                                                                          | ./IDs\[2\]/ID                                                                |                                          |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"payer-group-number"</span>)      | ./IDs\[2\]/Type/Text                                                         |                                          |
| ./subscriber-id                                                                                                                      | ./IDs\[3\]/ID                                                                |                                          |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"payer-subscriber-id"</span>)     | ./IDs\[3\]/Type/Text                                                         |                                          |
| ./carrier-id                                                                                                                         | ./IDs\[4\]/ID                                                                |                                          |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"payer-carrier-id"</span>)        | ./IDs\[4\]/Type/Text                                                         |                                          |
| ./coverage-type                                                                                                                      | ./Type                                                                       | codable-value =&gt; CodedDescriptionType |
| .                                                                                                                                    | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span>          | thing =&gt; Source                       |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                          | ./CommentID                                                                  |                                          |

$Actor = [CreateActor](https://msdn.microsoft.com/ee663896.aspx#CreateActor)(./planName)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                      |                            |                     |
|----------------------|----------------------------|---------------------|
| $Actor/ActorObjectID | ./Payment-Provider/ActorID |                     |
| ./contact            | $Actor                     | contact =&gt; Actor |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### directive : AdvanceDirective

 
| HealthVault                                      | CCR                                                     | Conversion |
|--------------------------------------------------|---------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">directive</span> | <span style="FONT-WEIGHT: bold">AdvanceDirective</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                    |                                                                              |                                      |
|----------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|--------------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                                        | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                                      |
| ./start-date                                                                                                                                       | ./DateTime\[1\]                                                              | approx-date-time =&gt; ExactDateTime |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"directive-start-date"</span>)                  | ./DateTime\[1\]/Type/Text                                                    |                                      |
| ./stop-date                                                                                                                                        | ./DateTime\[2\]                                                              | approx-date-time =&gt; ExactDateTime |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"directive-stop-date"</span>)                   | ./DateTime\[2\]/Type/Text                                                    |                                      |
| ./attending-physician-endorsement                                                                                                                  | ./DateTime\[3\]                                                              | approx-date-time =&gt; ExactDateTime |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"directive-verified-treating-physician"</span>) | ./DateTime\[1\]/Type/Text                                                    |                                      |
| <span style="FONT-STYLE: italic">"Other"</span>                                                                                                    | ./Type                                                                       |                                      |
| ./description                                                                                                                                      | ./Description/Text                                                           |                                      |
| [CreateActorFromPerson](https://msdn.microsoft.com/ee663896.aspx#CreateActorFromPerson)(./attending-physician)                                     | ./Source/Actor/ActorID                                                       |                                      |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"directive-treatment-physician"</span>)         | ./Source/Actor/ActorRole                                                     |                                      |
| .                                                                                                                                                  | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span>          | thing =&gt; Source                   |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                                        | ./CommentID\[1\]                                                             |                                      |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(./additional-instructions)                             | ./CommentID\[2\]                                                             |                                      |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### condition : Problem

 
| HealthVault                                      | CCR                                            | Conversion |
|--------------------------------------------------|------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">condition</span> | <span style="FONT-WEIGHT: bold">Problem</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                 |                                                                              |                                          |
|---------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|------------------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                     | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                                          |
| ./onset-date                                                                                                                    | ./DateTime\[1\]                                                              | date-time =&gt; DateTimeType             |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"problem-onset-date"</span>) | ./DateTime\[1\]/Type/Text                                                    |                                          |
| ./stop-date                                                                                                                     | ./DateTime\[2\]                                                              | date-time =&gt; DateTimeType             |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"problem-end-date"</span>)   | ./DateTime\[2\]/Type/Text                                                    |                                          |
| <span style="FONT-STYLE: italic">"Condition"</span>                                                                             | ./Type/Text                                                                  |                                          |
| ./name                                                                                                                          | ./Description                                                                | codable-value =&gt; CodedDescriptionType |
| ./status                                                                                                                        | ./Status                                                                     | codable-value =&gt; CodedDescriptionType |
| .                                                                                                                               | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span>          | thing =&gt; Source                       |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                     | ./CommentID\[1\]                                                             |                                          |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(./stop-reason)                      | ./CommentID\[2\]                                                             |                                          |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### family-history (v2)

 
| HealthVault                                                | CCR                                                         | Conversion |
|------------------------------------------------------------|-------------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">family-history (v2)</span> | <span style="FONT-WEIGHT: bold">FamilyProblemHistory</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                   |                                                                                  |                                          |
|-----------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------|------------------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                       | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span>     |                                          |
| ./condition/onset-date                                                                                                            | ./DateTime                                                                       | approx-date =&gt; DateTimeType           |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"problem-onset-date"</span>)   | ./DateTime/Type/Text                                                             |                                          |
| .                                                                                                                                 | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span>              | thing =&gt; Source                       |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                       | ./CommentID                                                                      |                                          |
| [CreateActorFromFamilyHistoryRelative](https://msdn.microsoft.com/ee663896.aspx#CreateActorFromFamilyHistoryRelative)(./relative) | ./FamilyMember/ActorID                                                           |                                          |
| ./relative/relationship                                                                                                           | ./FamilyMember/ActorRole                                                         | codable-value =&gt; CodedDescriptionType |
| b                                                                                                                                 | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./FamilyMember/Source</span> | thing =&gt; Source                       |
| ./condition/name                                                                                                                  | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Problem/Description</span> | codable-value =&gt; CodedDescriptionType |
| .                                                                                                                                 | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Problem/Source</span>      | thing =&gt; Source                       |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### family-history (v3)

 
| HealthVault                                                | CCR                                                         | Conversion |
|------------------------------------------------------------|-------------------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">family-history (v3)</span> | <span style="FONT-WEIGHT: bold">FamilyProblemHistory</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                   |                                                                                     |                                          |
|-----------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------|------------------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                       | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span>        |                                          |
| .                                                                                                                                 | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span>                 | thing =&gt; Source                       |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                       | ./CommentID                                                                         |                                          |
| [CreateActorFromFamilyHistoryRelative](https://msdn.microsoft.com/ee663896.aspx#CreateActorFromFamilyHistoryRelative)(./relative) | ./FamilyMember/ActorID                                                              |                                          |
| ./relative/relationship                                                                                                           | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./FamilyMember/ActorRole</span> | codable-value =&gt; CodedDescriptionType |
| .                                                                                                                                 | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./FamilyMember/Source</span>    | thing =&gt; Source                       |

<span style="FONT-WEIGHT: bold">ForEach</span>(./Condition)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                     |                                                                                                            |                                          |
|---------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|------------------------------------------|
| ./name                                                                                                              | ./Problem/Description                                                                                      | codable-value =&gt; CodedDescriptionType |
| ./onset-date                                                                                                        | ./Problem/Episodes/Episode\[1\]/DateTime                                                                   | approx-date =&gt; DateTimeType           |
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"problem-onset-date"</span>) | ./Problem/Episodes/Episode\[1\]/DateTime/Type                                                              |                                          |
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                         | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Problem/Episodes/Episode\[1\]/CCRDataObjectID</span> |                                          |
| ..                                                                                                                  | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Problem/Episodes/Episode\[1\]/Source</span>          | thing =&gt; Source                       |
| ./occurrence/text                                                                                                   | ./Problem/Episodes/Frequency/Value                                                                         |                                          |
| ./occurrence/code\[1\]                                                                                              | ./Problem/Episodes/Frequency/Code                                                                          | coded-value =&gt; CodeType               |
| ..                                                                                                                  | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Problem/Episodes/Source</span>                       | thing =&gt; Source                       |
| ..                                                                                                                  | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Problem/Source</span>                                | thing =&gt; Source                       |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### allergy : Alerts

 
| HealthVault                                    | CCR                                           | Conversion |
|------------------------------------------------|-----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">allergy</span> | <span style="FONT-WEIGHT: bold">Alerts</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                 |                                                                              |                                          |
|---------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|------------------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                     | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                                          |
| ./first-observed                                                                                                                | ./DateTime                                                                   | approx-date-time =&gt; DateTimeType      |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"allergy-start-date"</span>) | ./DateTime/Type/Text                                                         |                                          |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"allergy"</span>)            | ./Type                                                                       |                                          |
| ./name                                                                                                                          | ./Description                                                                | codable-value =&gt; CodedDescriptionType |
| .                                                                                                                               | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span>          | thing =&gt; Source                       |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                     | ./CommentID                                                                  |                                          |
| ./reaction                                                                                                                      | ./Reaction/Description                                                       | codable-value =&gt; CodedDescriptionType |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### medication : Medication

 
| HealthVault                                       | CCR                                               | Conversion |
|---------------------------------------------------|---------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">medication</span> | <span style="FONT-WEIGHT: bold">Medication</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                              |                                                                              |                                     |
|----------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|-------------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                                  | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                                     |
| ./date-started                                                                                                                               | ./DateTime\[1\]                                                              | approx-date-time =&gt; DateTimeType |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)("<span style="FONT-STYLE: italic">medication-start-date")</span>           | ./DateTime\[1\]/Type/Text                                                    |                                     |
| ./date-discontinued                                                                                                                          | ./DateTime\[2\]                                                              | approx-date-time =&gt; DateTimeType |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"medication-stop-date")</span>            | ./DateTime\[2\]/Type/Text                                                    |                                     |
| ./prescription/date-prescribed                                                                                                               | ./DateTime\[3\]                                                              | approx-date-time =&gt; DateTimeType |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"medication-prescription-date")</span>    | ./DateTime\[3\]/Type/Text                                                    |                                     |
| .                                                                                                                                            | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source\[1\]</span>     | thing =&gt; Source                  |
| [CreateActorFromPerson](https://msdn.microsoft.com/ee663896.aspx#CreateActorFromPerson)(./prescribed-by)                                     | ./Source\[2\]/ActorID                                                        |                                     |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"medication-prescribing-provider"</span>) | ./Source\[2\]/ActorRole                                                      |                                     |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                                  | ./CommentID                                                                  |                                     |

<span style="FONT-WEIGHT: bold">If Exists</span>(./generic-name)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                |                                                                                  |                                          |
|----------------|----------------------------------------------------------------------------------|------------------------------------------|
| ./generic-name | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Product/ProductName</span> | codable-value =&gt; CodedDescriptionType |
| ./name         | ./Product/BrandName                                                              | codable-value =&gt; CodedDescriptionType |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|        |                                                                                  |                                          |
|--------|----------------------------------------------------------------------------------|------------------------------------------|
| ./name | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Product/ProductName</span> | codable-value =&gt; CodedDescriptionType |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                   |                                                                                                                      |                                          |
|---------------------------------------------------|----------------------------------------------------------------------------------------------------------------------|------------------------------------------|
| ./strength                                        | ./Product/Strength                                                                                                   | general-measurement =&gt; MeasureType    |
| ./prescription/amount-prescribed                  | ./Quantity                                                                                                           | general-measurement =&gt; MeasureType    |
| ./dose                                            | ./Directions/Direction/Dose                                                                                          | general-measurement =&gt; MeasureType    |
| ./route                                           | ./Directions/Direction/Route                                                                                         | codable-value =&gt; CodedDescriptionType |
| ./frequency                                       | ./Directions/Direction/Frequency                                                                                     | general-measurement =&gt; MeasureType    |
| ./indication                                      | ./Directions/Direction/Indication/Description                                                                        | codable-value =&gt; CodedDescriptionType |
| <span style="FONT-STYLE: italic">"Unknown"</span> | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Directions/Direction/Indication/Source/Description/Text</span> |                                          |
| ./prescription/instructions                       | ./PatientInstructions/Instruction                                                                                    | codable-value =&gt; CodedDescriptionType |
| ./prescription/refills                            | ./Refills/Refill/Number                                                                                              | integer                                  |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### immunization : Immunization

 
| HealthVault                                         | CCR                                                 | Conversion |
|-----------------------------------------------------|-----------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">immunization</span> | <span style="FONT-WEIGHT: bold">Immunization</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                |                                                                              |                                     |
|--------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|-------------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                    | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                                     |
| ./administration-date                                                                                                          | ./DateTime                                                                   | approx-date-time =&gt; DateTimeType |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"immunization-date"</span>) | ./DateTime/Type/Text                                                         |                                     |

<span style="FONT-WEIGHT: bold">If Exists</span>(./lot)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                      |                                    |     |
|--------------------------------------------------------------------------------------------------------------------------------------|------------------------------------|-----|
| ./lot                                                                                                                                | ./IDs\[1\]/ID                      |     |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"immunization-lot-number"</span>) | ./IDs\[1\]/Type/Text               |     |
| <span style="FONT-STYLE: italic">"Unknown"</span>                                                                                    | ./IDs\[1\]/Source/Description/Text |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                      |                                                                     |                                          |
|--------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|------------------------------------------|
| .                                                                                                                                    | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span> | thing =&gt; Source                       |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                          | ./CommentID                                                         |                                          |
| ./name                                                                                                                               | ./Product/ProductName                                               | codable-value =&gt; CodedDescriptionType |
| [CreateOrganizationActorFromString](https://msdn.microsoft.com/ee663896.aspx#CreateOrganizationActorFromString)(./manufacturer/text) | ./Product/Manufacturer/ActorID                                      |                                          |
| ./route                                                                                                                              | ./Directions/Direction/Route                                        | codable-value =&gt; CodedDescriptionType |
| ./anatomic-surface                                                                                                                   | ./Directions/Direction/Site                                         | codable-value =&gt; CodedDescriptionType |
| ./sequence                                                                                                                           | ./SeriesNumber                                                      |                                          |
| ./adverse-event                                                                                                                      | ./Reaction/Description/Text                                         |                                          |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### height : Result

 
| HealthVault                                   | CCR                                           | Conversion |
|-----------------------------------------------|-----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">height</span> | <span style="FONT-WEIGHT: bold">Result</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                                                                                                          |                                                                              |                              |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                                                                                                                                              | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                              |
| ./when                                                                                                                                                                                                                                                   | ./DateTime                                                                   | date-time =&gt; DateTimeType |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"result-collection-date"</span>)                                                                                                                      | ./DateTime/Type/Text                                                         |                              |
| <span style="FONT-STYLE: italic">"Vital Signs"</span>                                                                                                                                                                                                    | ./Description/Text                                                           |                              |
| .                                                                                                                                                                                                                                                        | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span>          | thing =&gt; Source           |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                                                                                                                                              | ./CommentID                                                                  |                              |
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Observation",</span>[GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"height"</span>)) | ./Test                                                                       |                              |

<span style="FONT-WEIGHT: bold">If Exists</span>(./value/display)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                 |                                                                              |                                  |
|-----------------|------------------------------------------------------------------------------|----------------------------------|
| ./value/display | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test/TestResult</span> | display-value =&gt; MeasureGroup |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                     |                                                                                    |     |
|---------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------|-----|
| <span style="FONT-WEIGHT: bold">ConvertToInches</span>(./value/m)                                                   | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test/TestResult/Value</span> |     |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"inches"</span>) | ./Test/TestResult/Units/Unit                                                       |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### weight : Result

 
| HealthVault                                   | CCR                                           | Conversion |
|-----------------------------------------------|-----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">weight</span> | <span style="FONT-WEIGHT: bold">Result</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                                                                                                          |                                                                              |                              |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                                                                                                                                              | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                              |
| ./when                                                                                                                                                                                                                                                   | ./DateTime                                                                   | date-time =&gt; DateTimeType |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"result-collection-date"</span>)                                                                                                                      | ./DateTime/Type/Text                                                         |                              |
| <span style="FONT-STYLE: italic">"Vital Signs"</span>                                                                                                                                                                                                    | ./Description/Text                                                           |                              |
| .                                                                                                                                                                                                                                                        | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span>          | thing =&gt; Source           |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                                                                                                                                              | ./CommentID                                                                  |                              |
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Observation",</span>[GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"weight"</span>)) | ./Test                                                                       |                              |

<span style="FONT-WEIGHT: bold">If Exists</span> (./value/display)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                 |                                                                              |                                  |
|-----------------|------------------------------------------------------------------------------|----------------------------------|
| ./value/display | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test/TestResult</span> | display-value =&gt; MeasureGroup |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                     |                                                                                    |     |
|---------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------|-----|
| <span style="FONT-WEIGHT: bold">ConvertToPounds</span>(./value/kg)                                                  | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test/TestResult/Value</span> |     |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"pounds"</span>) | ./Test/TestResult/Units/Unit                                                       |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### blood-glucose : Result

 
| HealthVault                                          | CCR                                           | Conversion |
|------------------------------------------------------|-----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">blood-glucose</span> | <span style="FONT-WEIGHT: bold">Result</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                     |                                                                              |                              |
|-------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                         | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                              |
| ./when                                                                                                                              | ./DateTime                                                                   | date-time =&gt; DateTimeType |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"result-collection-date"</span>) | ./DateTime/Type/Text                                                         |                              |
| <span style="FONT-STYLE: italic">"Vital Signs"</span>                                                                               | ./Description/Text                                                           |                              |
| .                                                                                                                                   | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span>          | thing =&gt; Source           |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                         | ./CommentID                                                                  |                              |

<span style="FONT-WEIGHT: bold">If Exists</span>(./glucose-measurement-type)
$Description = ./glucose-measurement-type
<span style="FONT-WEIGHT: bold">Else</span>
$Description = [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"blood-glucose"</span>)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                    |        |     |
|----------------------------------------------------------------------------------------------------------------------------------------------------|--------|-----|
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Observation",</span> $Description) | ./Test |     |

<span style="FONT-WEIGHT: bold">If Exists</span>(./value/display)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                 |                                                                              |                                  |
|-----------------|------------------------------------------------------------------------------|----------------------------------|
| ./value/display | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test/TestResult</span> | display-value =&gt; MeasureGroup |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                            |                                                                                    |     |
|----------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------|-----|
| <span style="FONT-WEIGHT: bold">ConvertToMgPerDl</span>(./value/mmolPerL)                                                  | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test/TestResult/Value</span> |     |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"concentration"</span>) | ./Test/TestResult/Units/Unit                                                       |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### blood-oxygen-saturation : Result

 
| HealthVault                                                    | CCR                                           | Conversion |
|----------------------------------------------------------------|-----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">blood-oxygen-saturation</span> | <span style="FONT-WEIGHT: bold">Result</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                                                                                                                            |                                                                                    |                                          |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------|------------------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                                                                                                                                                                | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span>       |                                          |
| ./when                                                                                                                                                                                                                                                                     | ./DateTime                                                                         | date-time =&gt; DateTimeType             |
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"result-collection-date"</span>)                                                                                                                                                    | ./DateTime/Type                                                                    |                                          |
| <span style="FONT-STYLE: italic">"Vital Signs"</span>                                                                                                                                                                                                                      | ./Description/Text                                                                 |                                          |
| .                                                                                                                                                                                                                                                                          | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span>                | thing =&gt; Source                       |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                                                                                                                                                                | ./CommentID                                                                        |                                          |
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Observation"</span>, [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"blood-oxygen-saturation"</span>)) | ./Test                                                                             |                                          |
| ./value                                                                                                                                                                                                                                                                    | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test/TestResult/Value</span> |                                          |
| ./measurement-method                                                                                                                                                                                                                                                       | ./Test/Method                                                                      | codable-value =&gt; CodedDescriptionType |
| ./measurement-flags                                                                                                                                                                                                                                                        | ./Test/Flag\[1\]                                                                   | codable-value =&gt; CodedDescriptionType |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### radiology-lab-results : Result

 
| HealthVault                                                  | CCR                                           | Conversion |
|--------------------------------------------------------------|-----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">radiology-lab-results</span> | <span style="FONT-WEIGHT: bold">Result</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                       |                                                                              |                              |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                                                           | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                              |
| ./when                                                                                                                                                                | ./DateTime                                                                   | date-time =&gt; DateTimeType |
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"result-collection-date"</span>)                                               | ./DateTime/Type                                                              |                              |
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"radiology-lab-results"</span>)                                                | ./Description/Text                                                           |                              |
| .                                                                                                                                                                     | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span>          | thing =&gt; Source           |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                                                           | ./CommentID                                                                  |                              |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(./anatomic-site, <span style="FONT-STYLE: italic">"Anatomic site"</span>) | ./CommentID                                                                  |                              |
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Result",</span> ./title)                              | ./Test                                                                       |                              |

<span style="FONT-WEIGHT: bold">If Exists</span>(./result-text)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|               |                                                                                               |     |
|---------------|-----------------------------------------------------------------------------------------------|-----|
| ./result-text | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test/TestResult/Description/Text</span> |     |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                   |                                                                                               |     |
|---------------------------------------------------|-----------------------------------------------------------------------------------------------|-----|
| <span style="FONT-STYLE: italic">"Unknown"</span> | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test/TestResult/Description/Text</span> |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### blood-pressure : Result

 
| HealthVault                                           | CCR                                           | Conversion |
|-------------------------------------------------------|-----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">blood-pressure</span> | <span style="FONT-WEIGHT: bold">Result</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                                                                                                                            |                                                                                         |                    |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|--------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                                                                                                                                                                | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span>            |                    |
| ./when                                                                                                                                                                                                                                                                     | ./DateTime                                                                              |                    |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"result-collection-date"</span>)                                                                                                                                        | ./DateTime/Type/Text                                                                    |                    |
| <span style="FONT-STYLE: italic">"Vital Signs"</span>                                                                                                                                                                                                                      | ./Description/Text                                                                      |                    |
| .                                                                                                                                                                                                                                                                          | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span>                     | thing =&gt; Source |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                                                                                                                                                                | ./CommentID                                                                             |                    |
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Observation",</span>[GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"blood-pressure-systolic"</span>))  | ./Test\[1\]                                                                             |                    |
| ./systolic                                                                                                                                                                                                                                                                 | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test\[1\]/TestResult/Value</span> |                    |
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Observation",</span>[GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"blood-pressure-diastolic"</span>)) | ./Test\[2\]                                                                             |                    |
| ./diastolic                                                                                                                                                                                                                                                                | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test\[2\]/TestResult/Value</span> |                    |
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Observation",</span>[GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"blood-pressure-pulse"</span>))     | ./Test\[3\]                                                                             |                    |
| ./pulse                                                                                                                                                                                                                                                                    | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test\[3\]/TestResult/Value</span> |                    |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### cholesterol-profile : Result

 
| HealthVault                                                | CCR                                           | Conversion |
|------------------------------------------------------------|-----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">cholesterol-profile</span> | <span style="FONT-WEIGHT: bold">Result</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                                                                                                                             |                                                                                         |                    |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|--------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                                                                                                                                                                 | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span>            |                    |
| ./when                                                                                                                                                                                                                                                                      | ./DateTime                                                                              |                    |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"result-collection-date"</span>)                                                                                                                                         | ./DateTime/Type/Text                                                                    |                    |
| <span style="FONT-STYLE: italic">"Vital Signs"</span>                                                                                                                                                                                                                       | ./Description/Text                                                                      |                    |
| .                                                                                                                                                                                                                                                                           | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span>                     | thing =&gt; Source |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                                                                                                                                                                 | ./CommentID                                                                             |                    |
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Observation",</span>[GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"cholesterol-ldl"</span>))           | ./Test\[1\]                                                                             |                    |
| ./ldl                                                                                                                                                                                                                                                                       | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test\[1\]/TestResult/Value</span> |                    |
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Observation",</span>[GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"cholesterol-hdl"</span>))           | ./Test\[2\]                                                                             |                    |
| ./hdl                                                                                                                                                                                                                                                                       | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test\[2\]/TestResult/Value</span> |                    |
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Observation",</span>[GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"cholesterol-total"</span>))         | ./Test\[3\]                                                                             |                    |
| ./total-cholesterol                                                                                                                                                                                                                                                         | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test\[3\]/TestResult/Value</span> |                    |
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Observation",</span>[GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"cholesterol-triglycerides"</span>)) | ./Test\[4\]                                                                             |                    |
| ./triglyceride                                                                                                                                                                                                                                                              | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test\[4\]/TestResult/Value</span> |                    |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### peak-flow : Result

 
| HealthVault                                      | CCR                                           | Conversion |
|--------------------------------------------------|-----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">peak-flow</span> | <span style="FONT-WEIGHT: bold">Result</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                                                                                                       |                                                                              |                              |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                                                                                                                                           | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                              |
| ./when                                                                                                                                                                                                                                                | ./DateTime                                                                   | date-time =&gt; DateTimeType |
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"result-collection-date"</span>)                                                                                                                               | ./DateTime/Type                                                              |                              |
| <span style="FONT-STYLE: italic">"Vital Signs"</span>                                                                                                                                                                                                 | ./Description/Text                                                           |                              |
| .                                                                                                                                                                                                                                                     | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span>          | thing =&gt; Source           |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                                                                                                                                           | ./CommentID                                                                  |                              |
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Observation",</span>[GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"pef"</span>)) | ./Test\[1\]                                                                  |                              |

<span style="FONT-WEIGHT: bold">If Exists</span>(./pef/display)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|               |                                                                                   |                                  |
|---------------|-----------------------------------------------------------------------------------|----------------------------------|
| ./pef/display | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test\[1\]/TestResult</span> | display-value =&gt; MeasureGroup |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                    |                                                                                         |     |
|--------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|-----|
| ./pef/liters-per-second                                                                                            | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test\[1\]/TestResult/Value</span> |     |
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"liters-per-second"</span>) | ./Test\[1\]/TestResult/Units/Unit                                                       |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                                                                                                        |             |     |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|-----|
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Observation",</span>[GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"fev1"</span>)) | ./Test\[2\] |     |

<span style="FONT-WEIGHT: bold">If Exists</span>(./fev1/display)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                |                                                                                   |                                  |
|----------------|-----------------------------------------------------------------------------------|----------------------------------|
| ./fev1/display | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test\[2\]/TestResult</span> | display-value =&gt; MeasureGroup |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                         |                                                                                         |     |
|---------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|-----|
| ./fev1/liters                                                                                           | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test\[2\]/TestResult/Value</span> |     |
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"liters"</span>) | ./Test\[2\]/TestResult/Units/Unit                                                       |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                                                                                                        |             |     |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|-----|
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Observation",</span>[GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"fev6"</span>)) | ./Test\[3\] |     |

<span style="FONT-WEIGHT: bold">If Exists</span> (./fev6/display)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                |                                                                                   |                                  |
|----------------|-----------------------------------------------------------------------------------|----------------------------------|
| ./fev6/display | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test\[3\]/TestResult</span> | display-value =&gt; MeasureGroup |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                         |                                                                                         |     |
|---------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|-----|
| ./fev6/liters                                                                                           | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test\[3\]/TestResult/Value</span> |     |
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"liters"</span>) | ./Test\[3\]/TestResult/Units/Unit                                                       |     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### exercise : Result

 
| HealthVault                                     | CCR                                           | Conversion |
|-------------------------------------------------|-----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">exercise</span> | <span style="FONT-WEIGHT: bold">Result</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                                                                                                         |                                                                              |                                          |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|------------------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                                                                                                                                             | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                                          |
| ./when                                                                                                                                                                                                                                                  | ./DateTime                                                                   | date-time =&gt; DateTimeType             |
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"result-collection-date"</span>)                                                                                                                                 | ./DateTime/Type/Text                                                         |                                          |
| ./activity                                                                                                                                                                                                                                              | ./Description                                                                | codable-value =&gt; CodedDescriptionType |
| .                                                                                                                                                                                                                                                       | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span>          | thing =&gt; Source                       |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                                                                                                                                             | ./CommentID                                                                  |                                          |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(./title)                                                                                                                                                    | ./CommentID                                                                  |                                          |
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Observation",</span><span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"exercise-distance"</span>)) | ./Test\[1\]                                                                  |                                          |

<span style="FONT-WEIGHT: bold">If Exists</span>(./distance/display)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                    |                                                                                   |                                  |
|--------------------|-----------------------------------------------------------------------------------|----------------------------------|
| ./distance/display | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test\[1\]/TestResult</span> | display-value =&gt; MeasureGroup |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                         |                                                                                         |     |
|---------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|-----|
| ./distance/m                                                                                            | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test\[1\]/TestResult/Value</span> |     |
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"meters"</span>) | ./Test\[1\]/TestResult/Units/Unit                                                       |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                                                                                                         |             |     |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|-----|
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Observation",</span><span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"exercise-duration"</span>)) | ./Test\[2\] |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                          |                                                                                         |     |
|----------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|-----|
| ./duration                                                                                               | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test\[2\]/TestResult/Value</span> |     |
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"minutes"</span>) | ./Test\[2\]/TestResult/Units/Unit                                                       |     |

<span style="FONT-WEIGHT: bold">ForEach</span>(./detail)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                                                                                                        |                                                                                    |                                           |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------|-------------------------------------------|
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Observation",</span><span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"exercise-details"</span>)) | ./Test\[\*\]                                                                       |                                           |
| ./name                                                                                                                                                                                                                                                 | ./Test\[\*\]/Description/Code                                                      | coded-value =&gt; CodeType                |
| ./value                                                                                                                                                                                                                                                | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test\[\*\]/TestResult</span> | structured-measurement =&gt; MeasureGroup |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### discharge-summary : Result

 
| HealthVault                                              | CCR                                           | Conversion |
|----------------------------------------------------------|-----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">discharge-summary</span> | <span style="FONT-WEIGHT: bold">Result</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                          |                                                                              |                                     |
|------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|-------------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                              | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                                     |
| ./when                                                                                                                                   | ./DateTime\[1\]                                                              | date-time =&gt; DateTimeType        |
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"discharge-summary-create-date"</span>)           | ./DateTime\[1\]/Type/Text                                                    |                                     |
| ./primary-provider-endorsement                                                                                                           | ./DateTime\[2\]                                                              | date-time =&gt; DateTimeType        |
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"discharge-summary-primary-endorsement"</span>)   | ./DateTime\[2\]/Type/Text                                                    |                                     |
| ./secondary-provider-endorsement                                                                                                         | ./DateTime\[3\]                                                              | date-time =&gt; DateTimeType        |
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"discharge-summary-secondary-endorsement"</span>) | ./DateTime\[3\]/Type/Text                                                    |                                     |
| ./discharge-date-time                                                                                                                    | ./DateTime\[4\]                                                              | approx-date-time =&gt; DateTimeType |
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"discharge-summary-discharge-date"</span>)        | ./DateTime\[4\]/Type/Text                                                    |                                     |
| <span style="FONT-STYLE: italic">"02ef57a2-a620-425a-8e92-a301542cca54"</span>                                                           | ./IDs\[1\]/ID                                                                |                                     |
| <span style="FONT-STYLE: italic">"hv-type-id"</span>                                                                                     | ./IDs\[1\]/Type/Text                                                         |                                     |
| [CreateHealthVaultActor](https://msdn.microsoft.com/ee663896.aspx#CreateHealthVaultActor)(.)                                             | ./IDs\[1\]/Source/Actor/ActorID                                              |                                     |

<span style="FONT-WEIGHT: bold">If Exists</span>(./type)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|        |                    |                                          |
|--------|--------------------|------------------------------------------|
| ./type | ./Description/Text | codable-value =&gt; CodedDescriptionType |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                           |                    |     |
|---------------------------------------------------------------------------------------------------------------------------|--------------------|-----|
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"result-discharge-summary"</span>) | ./Description/Text |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                                                                |                                                                          |                    |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|--------------------|
| .                                                                                                                                                                              | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source\[1\]</span> | thing =&gt; Source |
| [CreateActorFromPerson](https://msdn.microsoft.com/ee663896.aspx#CreateActorFromPerson)(./primary-provider)                                                                    | ./Source\[2\]/ActorID                                                    |                    |
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"discharge-summary-primary-provider"</span>)                                            | ./Source\[2\]/ActorRole                                                  |                    |
| [CreateActorFromPerson](https://msdn.microsoft.com/ee663896.aspx#CreateActorFromPerson)(./secondary-provider)                                                                  | ./Source\[3\]/ActorID                                                    |                    |
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"discharge-summary-secondary-provider"</span>)                                          | ./Source\[3\]/ActorRole                                                  |                    |
| [CreateActorFromPerson](https://msdn.microsoft.com/ee663896.aspx#CreateActorFromPerson)(./principal-procedure-physician)                                                       | ./Source\[4\]/ActorID                                                    |                    |
| <span style="FONT-WEIGHT: bold">GetConceptType</span>(<span style="FONT-STYLE: italic">"discharge-summary-principal-procedure-physician"</span>)                               | ./Source\[4\]/ActorRole                                                  |                    |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(./text,./when,<span style="FONT-STYLE: italic">"discharge-summary-comment"</span>) | ./CommentID\[1\]                                                         |                    |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                                                                    | ./CommentID\[2\]                                                         |                    |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### vital-signs : VitalSigns

 
| HealthVault                                        | CCR                                               | Conversion |
|----------------------------------------------------|---------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">vital-signs</span> | <span style="FONT-WEIGHT: bold">VitalSigns</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                     |                                                                              |                              |
|-------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                         | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                              |
| ./when                                                                                                                              | ./DateTime                                                                   | date-time =&gt; DateTimeType |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"result-collection-date"</span>) | ./DateTime/Type/Text                                                         |                              |
| <span style="FONT-STYLE: italic">"Vital Signs"</span>                                                                               | ./Description/Text                                                           |                              |
| .                                                                                                                                   | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span>          | thing =&gt; Source           |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                         | ./CommentID                                                                  |                              |
| <span style="FONT-WEIGHT: bold">ForEach</span>(./vital-signs-results)                                                               | ./Test                                                                       |                              |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                               |                                                                                    |                                          |
|-----------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------|------------------------------------------|
| [CreateTestHeader](https://msdn.microsoft.com/ee663896.aspx#CreateTestHeader)(<span style="FONT-STYLE: italic">"Observation"</span>, ./title) | ./Test                                                                             |                                          |
| ./text-value                                                                                                                                  | ./Test/TestResult/Description/Text                                                 |                                          |
| ./value                                                                                                                                       | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Test/TestResult/Value</span> |                                          |
| ./unit                                                                                                                                        | ./Test/TestResult/Units                                                            | codable-value =&gt; CodedDescriptionType |
| ./flag                                                                                                                                        | ./Test/Flag\[1\]                                                                   | codable-value =&gt; CodedDescriptionType |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### lab-test-results-group-type : Result

 
| HealthVault                                                        | CCR                                           | Conversion |
|--------------------------------------------------------------------|-----------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">lab-test-results-group-type</span> | <span style="FONT-WEIGHT: bold">Result</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                     |                                                                              |                                          |
|-------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|------------------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                         | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                                          |
| ../when                                                                                                                             | ./DateTime                                                                   | approx-date-time =&gt; DateTimeType      |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"result-collection-date"</span>) | ./DateTime/Type/Text                                                         |                                          |
| ./group-name                                                                                                                        | ./Description                                                                | codable-value =&gt; CodedDescriptionType |
| ./status                                                                                                                            | ./Status                                                                     | codable-value =&gt; CodedDescriptionType |

<span style="FONT-WEIGHT: bold">IfExists</span>(./ordered-by)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                       |                                                                                               |     |
|---------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|-----|
| [CreateActorFromOrganization](https://msdn.microsoft.com/ee663896.aspx#CreateActorFromOrganization)(./ordered-by)                     | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source\[1\]/Actor/ActorID</span>        |     |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"result-ordering-provider"</span>) | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source\[1\]/Actor/ActorRole/Text</span> |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                              |                                                                          |                                          |
|--------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|------------------------------------------|
| .                                                                                                            | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source\[2\]</span> | thing =&gt; Source                       |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(.../common/note) | ./CommentID                                                              |                                          |
| ./results/\[1\]/substance                                                                                    | ./Substance                                                              | codable-value =&gt; CodedDescriptionType |

<span style="FONT-WEIGHT: bold">ForEach</span>(./results)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |        |                                 |
|-----|--------|---------------------------------|
| .   | ./Test | lab-test-result-type =&gt; Test |

<span style="FONT-WEIGHT: bold">ForEach</span>(./sub-groups)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |     |                                          |
|-----|-----|------------------------------------------|
| .   | ..  | lab-test-results-group-type =&gt; Result |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### lab-test-result-type : TestType

 
| HealthVault                                                 | CCR                                             | Conversion |
|-------------------------------------------------------------|-------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">lab-test-result-type</span> | <span style="FONT-WEIGHT: bold">TestType</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                             |                                                                              |                                     |
|-----------------------------------------------------------------------------|------------------------------------------------------------------------------|-------------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)() | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                                     |
| ./when                                                                      | ./DateTime                                                                   | approx-date-time =&gt; DateTimeType |
| <span style="FONT-STYLE: italic">"Result"</span>                            | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Type/Text</span>       |                                     |

<span style="FONT-WEIGHT: bold">If Exists</span>(./clincal-code)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                 |               |                                          |
|-----------------|---------------|------------------------------------------|
| ./clinical-code | ./Description | codable-value =&gt; CodedDescriptionType |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|        |                    |     |
|--------|--------------------|-----|
| ./name | ./Description/Text |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                   |                                                                                      |                                           |
|---------------------------------------------------|--------------------------------------------------------------------------------------|-------------------------------------------|
| ./status                                          | ./Status                                                                             | codable-value =&gt; CodedDescriptionType  |
| <span style="FONT-STYLE: italic">"Unknown"</span> | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source/Description/Text</span> |                                           |
| ./collection-method                               | ./Method                                                                             | codable-value =&gt; CodedDescriptionType  |
| ./value                                           | .                                                                                    | lab-test-result-value-type =&gt; TestType |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### lab-test-result-value-type : TestType

 
| HealthVault                                                       | CCR                                             | Conversion |
|-------------------------------------------------------------------|-------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">lab-test-result-value-type</span> | <span style="FONT-WEIGHT: bold">TestType</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|               |                                                                         |                                       |
|---------------|-------------------------------------------------------------------------|---------------------------------------|
| ./measurement | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./TestResult</span> | general-measurement =&gt; MeasureType |

<span style="FONT-WEIGHT: bold">ForEach</span>(./flag)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|     |        |                                          |
|-----|--------|------------------------------------------|
| .   | ./Flag | codable-value =&gt; CodedDescriptionType |

<span style="FONT-WEIGHT: bold">ForEach</span>(./ranges)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                   |                                                                                         |                                 |
|---------------------------------------------------|-----------------------------------------------------------------------------------------|---------------------------------|
| ./text                                            | ./NormalResult/Normal/Value                                                             |                                 |
| ./type                                            | ./NormalResult/Normal/Units/Unit                                                        | codable-value =&gt; MeasureType |
| <span style="FONT-STYLE: italic">"Unknown"</span> | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./NormalResult/Normal/Source</span> |                                 |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### procedure : Procedure

 
| HealthVault                                      | CCR                                              | Conversion |
|--------------------------------------------------|--------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">procedure</span> | <span style="FONT-WEIGHT: bold">Procedure</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                           |                                                                              |                                             |
|-------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|---------------------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                               | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                                             |
| ./when                                                                                                                                    | ./DateTime                                                                   | approx-date-time =&gt; CodedDescriptionType |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"procedure-date"</span>)               | ./DateTime/Type/Text                                                         |                                             |
| ./name                                                                                                                                    | ./Description                                                                | codable-value =&gt; CodedDescriptionType    |
| .                                                                                                                                         | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span>          | thing =&gt; Source                          |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)                               | ./CommentID                                                                  |                                             |
| [CreateActorFromPerson](https://msdn.microsoft.com/ee663896.aspx#CreateActorFromPerson)(./primary-provider)                               | ./Practitioners/Practitioner\[1\]/ActorID                                    |                                             |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"procedure-primary-provider"</span>)   | ./Practitioners/Practitioner\[1\]/ActorRole                                  |                                             |
| [CreateActorFromPerson](https://msdn.microsoft.com/ee663896.aspx#CreateActorFromPerson)(./secondary-provider)                             | ./Practitioners/Practitioner\[2\]/ActorID                                    |                                             |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"procedure-secondary-provider"</span>) | ./Practitioners/Practitioner\[2\]/ActorRole                                  |                                             |
| ./anatomic-location                                                                                                                       | ./Site                                                                       | codable-value =&gt; CodedDescriptionType    |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### encounter : Encounter

 
| HealthVault                                      | CCR                                              | Conversion |
|--------------------------------------------------|--------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">encounter</span> | <span style="FONT-WEIGHT: bold">Encounter</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                             |                                                                              |                                          |
|-----------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|------------------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                 | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                                          |
| ./when                                                                                                                      | ./DateTime                                                                   | approx-date-time =&gt; DateTimeType      |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"encounter-date"</span>) | ./DateTime/Type/Text                                                         |                                          |
| ./type                                                                                                                      | ./Type                                                                       | codable-value =&gt; CodedDescriptionType |

<span style="FONT-WEIGHT: bold">If Exists</span>(./reason)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|          |                    |     |
|----------|--------------------|-----|
| ./reason | ./Description/Text |     |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                   |                    |     |
|---------------------------------------------------|--------------------|-----|
| <span style="FONT-STYLE: italic">"Unknown"</span> | ./Description/Text |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                 |                                                                     |                                     |
|-----------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|-------------------------------------|
| .                                                                                                               | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span> | thing =&gt; Source                  |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note)     | ./CommentID                                                         |                                     |
| ./duration/start-date                                                                                           | ./Duration/DateTime/DateTimeRange/BeginRange                        | approx-date-time =&gt; DateTimeType |
| ./duration/end-date                                                                                             | ./Duration/DateTime/DateTimeRange/EndRange                          | approx-date-time =&gt; DateTimeType |
| [CreateActorFromOrganization](https://msdn.microsoft.com/ee663896.aspx#CreateActorFromOrganization)(./facility) | ./Locations/Location/Actor/ActorID                                  |                                     |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.

### appointment : Encounter

 
| HealthVault                                        | CCR                                              | Conversion |
|----------------------------------------------------|--------------------------------------------------|------------|
| <span style="FONT-WEIGHT: bold">appointment</span> | <span style="FONT-WEIGHT: bold">Encounter</span> |            |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                               |                                                                              |                                          |
|-------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|------------------------------------------|
| [CreateUniqueID](https://msdn.microsoft.com/ee663896.aspx#CreateUniqueID)()                                                   | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./CCRDataObjectID</span> |                                          |
| ./when                                                                                                                        | ./DateTime                                                                   |                                          |
| [GetConcept](https://msdn.microsoft.com/ee663896.aspx#GetConcept)(<span style="FONT-STYLE: italic">"appointment-date"</span>) | ./DateTime/Type/Text                                                         |                                          |
| ./care-class                                                                                                                  | ./Type                                                                       | codable-value =&gt; CodedDescriptionType |

<span style="FONT-WEIGHT: bold">If Exists</span>(./service)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|           |                                                                          |                                          |
|-----------|--------------------------------------------------------------------------|------------------------------------------|
| ./service | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Description</span> | codable-value =&gt; CodedDescriptionType |

<span style="FONT-WEIGHT: bold">Else</span>
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                   |                                                                               |     |
|---------------------------------------------------|-------------------------------------------------------------------------------|-----|
| <span style="FONT-STYLE: italic">"Unknown"</span> | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Description/Text</span> |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                             |                                                                     |                                          |
|-------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|------------------------------------------|
| ./status                                                                                                    | ./Status                                                            | codable-value =&gt; CodedDescriptionType |
| .                                                                                                           | <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">./Source</span> | thing =&gt; Source                       |
| [CreateCommentFromString](https://msdn.microsoft.com/ee663896.aspx#CreateCommentFromString)(../common/note) | ./CommentID                                                         |                                          |

<span style="FONT-WEIGHT: bold">If Exists</span>(./clinic/organization)
<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                                                        |                                    |     |
|----------------------------------------------------------------------------------------------------------------------------------------|------------------------------------|-----|
| [CreateOrganizationActorFromString](https://msdn.microsoft.com/ee663896.aspx#CreateOrganizationActorFromString)(./clinic/organization) | ./Locations/Location/Actor/ActorID |     |

<span style="FONT-WEIGHT: bold">Map values:</span>
 
|                                                                                                   |                                                        |                                     |
|---------------------------------------------------------------------------------------------------|--------------------------------------------------------|-------------------------------------|
| [CreateActorFromPerson](https://msdn.microsoft.com/ee663896.aspx#CreateActorFromPerson)(./clinic) | ./Practitioners/Practitioner/ActorID                   |                                     |
| ./duration/start-date                                                                             | ./Duration\[1\]/DateTime\[1\]/DateTimeRange/BeginRange | approx-date-time =&gt; DateTimeType |
| ./duration/end-date                                                                               | ./Duration\[1\]/DateTime\[1\]/DateTimeRange/EndRange   | approx-date-time =&gt; DateTimeType |

<span style="FONT-WEIGHT: bold">Note:</span> Elements listed in <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">bold italic</span> text are required by the HealthVault mapping transform. If any required values cannot be processed, the transform will not create the type.
