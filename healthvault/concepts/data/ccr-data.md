---
title: Continuity of Care Record Data
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Overview of HealthVault support for Continuity of Care Record (CCR) and Continuity of Care Documents (CCD)
---

Using Continuity of Care Data in HealthVault
=============================

The documents listed below describe the data transforms that are used to convert a CCR to individual HealthVault items, or HealthVault items into a CCR document. The input transforms are used by the HealthVault during the reconcile process. The reconcile process is a process by which the items from a CCR document are added to HealthVault record. The output transforms are used by the HealthVault Shell to create a CCR document from the content in the HealthVault record.

Both import and export transforms are aslo available for applications to use through the SDK. This enables applications to transform a CCR into HealthVault items to add to a record or retrieve items from the record as a CCR.

Input mappings: Creating HealthVault items from CCR data
--------------------------------------------------------

The HealthVault input transforms determine the ways in which CCR data is used to populate individual HealthVault data items. They are described in detail in <a href="ccr-input-mappings.md" id="PageContent_14108_5">HealthVault CCR Input Mappings</a>.

### Descriptions

Each transform description has two parts: a table describing the mappings of CCR element values on to HealthVault data items, and a pseudocode description of the application logic that determines which mappings are applied.

Each mapping table row specifies a value, an element in a HealthVault item, and (optionally) a conversion. Since the application logic determines the scope in which the different mappings can be applied, the table rows that describe the mappings are embedded within the pseudocode. (The scope of each mapping row is equal to the scope of the "Map Values" statement that immediately precedes it.)

The value is typically a named CCR element, but it can also be the return value of a function, the value of a variable defined in the pseudocode that precedes the table row, or even a constant.

The HealthVault element is just that: a named element of a specified HealthVault item type. (**Note:** by convention, the type-id of the HealthVault item type is specified in the Conversion column of the first table row in each mapping description.)

The conversion specifies the way in which the value is processed before it is stored in the HealthVault element. Conversions can refer to simple types (Booleans or integers), external definitions (such as the ISO 8601 date conversions), or internal definitions. An internal definition refers to another transform that is described in the same document as the transform that uses it. If no conversion is specified, the value is stored according to the type of the relevant HealthVault element (usually text.)

### Procedures

There are some sections of application logic that are used by more than one transform, or by a single transform in more than one way. For convenience, both the transform pseudocode and the mapping value descriptions refer to those sections as if they were procedure or function calls.

<a href="ccr-input-functions.md" id="PageContent_14108_3">HealthVault CCR Input Functions</a> provides pseudocode descriptions of the functions and procedures referred to in the input mapping descriptions.

### Vocabularies

The transforms treat some CCR element names as if they are equivalent, based on an underlying concept that corresponds to an element in a HealthVault type. Both the pseudocode and the value descriptions refer to these element groups using the [IsConcept](https://msdn.microsoft.com/en-us/healthvault/ee663894.aspx) functions. The Vocabulary\[\] arrays used by IsConcept are defined in the "Import Text" column for the associated concept in <a href="ccr-vocabularies.md" id="PageContent_14108_2">HealthVault CCR Vocabularies</a>.

Output mappings: Exporting HealthVault items to CCR
---------------------------------------------------

The HealthVault output transforms determine the ways in which data from individual HealthVault items are used to create a CCR. They are described in detail in <a href="ccr-output-mappings.md" id="PageContent_14108_6">HealthVault CCR Output Mappings</a>.

### Descriptions

The output descriptions are similar to the input descriptions, except that the value for each mapping table row derives from a HealthVault item, and it is used to set the value of a CCR element.

### Procedures

<a href="ccr-output-functions.md" id="PageContent_14108_4">HealthVault CCR Output Functions</a>  provides pseudocode descriptions of the functions and procedures referred to in the input mapping descriptions.

### Vocabularies

The output transforms always use the same label to refer to a given concept when it is written to a CCR. That value is defined in the "Output Text" column for the concept in <a href="ccr-vocabularies.md" id="PageContent_14108_2">HealthVault CCR Vocabularies</a>.
