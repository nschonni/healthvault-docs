---
title: Version staps on data items
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn about how versions on HealthVault items are stored
---

Version stamps on data items
============================

If you look closely at the [Key](/healthvault/sdks/dotnet/sdkmicrosoft.health.healthrecorditem.key.yml) property of the [HealthRecordItem](/healthvault/sdks/dotnet/sdkmicrosoft.health.healthrecorditem.yml) class, you find that the key it returns is a [HealthRecordItemKey](/healthvault/sdks/dotnet/sdkmicrosoft.health.healthrecorditemkey.yml) object. That key has two properties:

-   The [Id](/healthvault/sdks/dotnet/sdkmicrosoft.health.healthrecorditemkey.id.yml) property is a unique identifier for this particular piece of data.
-   The [VersionStamp](/healthvault/sdks/dotnet/sdkmicrosoft.health.healthrecorditemkey.versionstamp.yml) property is used to differentiate between different versions of this piece of data.

This stamp is used to deal both with auditing and with multiple versions, and also to make sure that any update operations are modifying the most recent version of a data item.

For example, if I have something like this:

```c#
Height height = FetchOneHeightItem();
```

and then I do some processing, including updating the value in the height...

```c#
PersonInfo.SelectedRecord.UpdateItem(height);
```

There is a small chance that somebody else has modified that height item between the time I fetched it and the time I updated it. The system looks at the version stamp on the most recent item it knows about and the one I'm asking to update, and if there is a mismatch, it throws an exception.

So, if you have code that does updates, it needs to check for and handle a [HealthServiceException](/healthvault/sdks/dotnet/sdkmicrosoft.health.healthserviceexception.yml) exception.

