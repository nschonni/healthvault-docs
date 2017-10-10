---
title: Continuity of Care Record Output Functions
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Overview of how HealthVault produces Continuity of Care Records from HealthVault data. 
---


Continuity of Care Record Output Functions
====================

The transforms that convert HealthVault types into CCR data are not simple mappings of one data value onto another. The mappings are context sensitive and depend on both the presence and value of individual properties of the HealthVault type.

The logic behind the transforms is described in detail in [HealthVault CCR Output Mappings](ccr-output-mappings.md). In order to improve the readability of those descriptions, some sections of the transform logic are described as procedure or function calls. This document provides pseudocode descriptions of those calls.

### GetConcept(concept)

```pseudocode
return Vocabulary[concept].ExportText // string
```

### CreateUniqueID()

```pseudocode
return Guid.New() // string
```

### CreateActor(node)

```pseudocode
$Actor = AddElement(/ContinuityOfCareRecord/Actors/Actor) 
generate-id(node) => $Actor/ActorObjectID 
return $Actor 
```

### CreateActorFromPerson(node)

```pseudocode
$Actor =  CreateActor(node) 
node => $Actor // person => Actor 
return $Actor/ActorObjectID 
```

### CreateActorFromOrganization(node)

```pseudocode
$Actor =  CreateActor(node) 
node => $Actor/Organization // Organization => Actor 
return $Actor/ActorObjectID     
```

### CreateActorFromFamilyHistoryRelative(node)

```pseudocode
$Actor =  CreateActor(node) 
node => $Actor // FamilyHistoryRelative => Actor 
return $Actor/ActorObjectID 
```

### CreatePersonActorFromString(node)

```pseudocode
$Actor =  CreateActor(node) 
node => $Actor/Person/DisplayName // string 
return $Actor/ActorObjectID 
```

### CreatePersonActorFromString(node, date-time)

```pseudocode
$Actor =  CreateActor(node) 
node => $Actor/Person/DisplayName // string 
date-time => $Actor/Person/DateOfBirth // date-time => DateTimeType 
return $Actor/ActorObjectID     
```

### CreateOrganizationActorFromString(node)

```pseudocode
$Actor =  CreateActor(node) 
node => $Actor/Organization/Name // string 
return $Actor/ActorObjectID     
```

### CreateHealthVaultActor(node)

```pseudocode
$Actor =  CreateActor(node) 
"Microsoft HealthVault" => $Actor/InformationSystem/Name 
return $Actor/ActorObjectID     
```

### CreatePatientActor(personalInfo)

```pseudocode
$Actor =  CreateActor(node) 
personalInfo => $Actor // personal => Actor 
return $Actor/ActorObjectID     
```

### CreateComment(node)

```pseudocode
$Comment = AddElement(/ContinuityOfCareRecord/Comments/Comment) 
generate-id(node) => $Comment/CommentObjectID 
return $Comment     
```

### CreateCommentFromString(node)

```pseudocode
$Comment =  CreateComment(node) 
node => $Comment/Description/Text // string 
now() => $Comment/DateTime[1] // date-time => DateTimeType 
return $Comment/CommentObjectID     
```

### CreateCommentFromString(node, string)

```pseudocode
$Comment =  CreateComment(node) 
Concat(string, node, ": ") => $Comment/Description/Text // string 
now() => $Comment/DateTime[1] // date-time => DateTimeType 
return $Comment/CommentObjectID     
```

### CreateCommentFromString(string, date-time, concept)

```pseudocode
$Comment =  CreateComment(node) 
date-time => $Comment/DateTime[1] 
 GetConcept(concept) => $Comment/Type/Text 
string => $Comment/Description/Text 
return $Comment/CommentObjectID     
```

### CreateTestHeader(string1, string2)

```pseudocode
CreateUniqueID() // ./CCRDataObjectID 
string1 // ./Type/Text 
string2 // ./Description/Text 
"Unknown" // ./Source/Description/Text  
```

### CreateTestHeader(string, codable-value)

```pseudocode
CreateUniqueID() // ./CCRDataObjectID 
string // ./Type/Text 
codable-value // ./Description 
"Unknown" // ./Source/Description/Text  
```
