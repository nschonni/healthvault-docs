---
title: Continuity of Care Record Input Functions
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Overview of how HealthVault inputs Continuity of Care Records into HealthVault data. 
---

CCR Input Functions
===================

The transforms that convert CCR data into HealthVault types are not simple mappings of one data value onto another. The mappings are context sensitive and depend on both the presence and value of individual elements of the CCR.

The logic behind the transforms is described in detail in [HealthVault CCR Input Mappings](ccr-input-mappings.md). In order to improve the readability of those descriptions, some sections of the transform logic are described as procedure or function calls. This document provides pseudocode descriptions of those calls.

### <a id="IsConcept"/>IsConcept(text, concept)

```pseudocode
If(Vocabulary[concept].ImportText.Contains(text)) 
    return true 
Else 
    return false 
```

### IsConcept(ccrtype, concept)

```pseudocode
return  IsConcept(ccrtype/type/text, concept)
```

### <a id="Concat"/>Concat(args\[\], separator)

```pseudocode
return args[0] + (for (i = 1 to args.Length - 1) { if exists(args[i]) (separator + args[i]) } )
```

### <a id="ResolveActor"/>ResolveActor(actorid)

```pseudocode
return /ContinuityOfCareRecord/Actors/Actor[./ActorObjectID = actorid]
```

### <a id="ResolveActorInRole"/>ResolveActorInRole(actorrefs, role)

```pseudocode
$ActorRef = actorrefs[IsConcept(./ActorRole, role)] 
return /ContinuityOfCareRecord/Actors/Actor[./ActorObjectID = $ActorRef/ActorID] 
```

### <a id="ResolveLink"/>ResolveLink(linkRef)

```pseudocode
return /ContinuityOfCareRecord/Body/node()[./CCRDataObjectID = linkRef/LinkID]
```

### <a id="ResolveComment"/>ResolveComment(id)

```pseudocode
return /ContinuityOfCareRecord/Comments/Comment[./CommentObjectID = id]/Description/Text
```

### ResolveComment(concept)

```pseudocode
return /ContinuityOfCareRecord/Comments/Comment[  IsConcept(./Type/Text, concept)]/Description/Text
```

### ResolveReference(ref)

```pseudocode
return /ContinuityOfCareRecord/References/Reference[./ReferenceObjectID = id]
```

### <a id="FindActorInSource"/>FindActorInSource(sources, role)

```pseudocode
$Source = sources[  IsConcept(./ActorRole, role)] 
return /ContinuityOfCareRecord/Actors/Actor[./ActorObjectID = $Source/ActorID] 
```

### <a id="ActorToString"/>ActorToString(ccractorref)

```pseudocode
$Actor =  ResolveActor(ccractorref/ActorID) 
If Exists($Actor/Person/Name) 
    If Exists($Actor/Person/Name/DisplayName) 
        return $Actor/Person/DisplayName 
    If Exists($Actor/Person/Name/CurrentName) 
        return $Actor/Person/Name/CurrentName // PersonNameType => string 
    If Exists($Actor/Person/Name/BirthName) 
        return $Actor/Person/Name/BirthName // PersonNameType => string 
Else If Exists($Actor/Organization/Name) 
    return $Actor/Organization/Name => string 
Else If Exists($Actor/InformationSystem) 
    $System = $Actor/InformationSystem 
    return  Concat($System/Name, $System/Version, $System/Type) 
Else 
    return "Unknown"    
```

### ActorToStringDetailed(ccractorref)

```pseudocode
$String =  ActorToString(ccractorref) 
$Actor =  ResolveActor(ccractorref/ActorID) 
ForEach($Actor/Address) 
    $String =  Concat($String,  AddressToString($Actor/Address), "\n") 
ForEach($Actor/Telephone) 
    $String =  Concat($String,  CommunicationTypeToString($Actor/Telephone), "\n") 
ForEach($Actor/Email) 
    $String =  Concat($String,  CommunicationTypeToString($Actor/EMail), "\n") 
return $String  
```

### AddressToString(node)

```pseudocode
return  Concat(node/Line1, node/Line2, node/City, node/State, node/PostalCode, node/Country, "\n")
```

### CommunicationTypeToString(node)

```pseudocode
return  Concat(./node/Value, ./node/Type/Text)
```

### <a id="PersonNameTypeToString"/>PersonNameTypeToString(node)

```pseudocode
return  Concat(node/Title, node/Given, node/Middle, node/Family, node/Suffix, " ")
```

### LocationToString(node)

```pseudocode
return  Concat(node/Description/text,  ActorToStringDetailed(node/Actor), "\n")
```

### <a id="ReferenceTypeToString"/>ReferenceTypeToString(node)

```pseudocode
$String = node/Description/Text 
ForEach(node/Locations/Location) 
    $String =  Concat($String,  LocationToString(.), "\n\n") 
return $String  
```

### <a id="SourceTypeToString"/>SourceTypeToString(node)

```pseudocode
If(node/Description/Text = "Unknown") 
    return node/Description/Text 
Else If Exists(node/Actor) 
    return  ActorToStringDetailed(node/Actor[1]) 
Else If Exists(node/Comment) 
    $Comment =  ResolveComment(./CommentID[1]) 
return $Comment/Description/Text 
```

### GetDefaultDate(node)

```pseudocode
If (count(node/DateTime)= 1) and If Not Exists (node/DateTime[1]/Type))
    return node/DateTime[1]
```

### <a id="GetDateTime"/>GetDateTime(node, concept)

```pseudocode
$DateTime = node/DateTime[IsConcept(./Type/Text, concept)][1]
If Not Exists($dateTime)
    $DateTime = GetDefaultDate(node)
return $DateTime
```
