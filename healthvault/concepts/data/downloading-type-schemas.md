---
title: Downloading type schemas
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Overview of how to download HealthVault type schemas
---

Downloading HealthVault item type XSD schemas
========================

You can access the schemas for the HealthVault types through the [Method and Data Type Schemas](/healthvault/concepts/xml-api/method-and-data-type-schemas). If you want to look at all the schemas together in a tool, you can access the schemas programmatically. The schema for a data type is built on some lower-level schemas (or types, if you wish):

-   base.xsd
-   [dates.xsd](https://platform.healthvault-ppe.com/platform/xsd/dates.xsd)
-   [types.xsd](https://platform.healthvault-ppe.com/platform/xsd/types.xsd)

Base.xsd can be fetched programmatically. To get dates.xsd and types.xsd, download directly from the links provided.

Access to the schema is provided through the ItemTypeManager class.

To get the xsd for a specific type:

1.  Call GetBaseHealthRecordItemTypeDefinition() to get the base schema (base.xsd).
2.  Use GetHealthRecordItemTypeDefinition() to get the xsd for a specific type.

To get a list of all the types from the "thing-types" vocabulary:

```c#
Vocabulary thingTypes = ApplicationConnection.GetVocabulary("thing-types"); 
```
The following code fetches all the schemas and stores them in separate files:

```c#
protected void Page_Load(object sender, EventArgs e)
{
    HealthRecordItemTypeDefinition baseTypes =
        ItemTypeManager.GetBaseHealthRecordItemTypeDefinition(ApplicationConnection);
    SaveTypeXSD(baseTypes, "base");
    Vocabulary thingTypes = ApplicationConnection.GetVocabulary("thing-types");
    foreach (KeyValuePair<string, VocabularyItem> item in thingTypes)
    {
            Guid thingType = new Guid(item.Key);
            HealthRecordItemTypeDefinition definition =
                ItemTypeManager.GetHealthRecordItemTypeDefinition(thingType, ApplicationConnection);
            SaveTypeXSD(definition, definition.Name);
    }
}
void SaveTypeXSD(HealthRecordItemTypeDefinition definition, string name)
{
    string directoryName = MapPath("platform");
    Directory.CreateDirectory(directoryName).CreateSubdirectory("web").CreateSubdirectory("xsd");
    string filename = MapPath(@"platform\web\xsd\" + name + ".xsd");
    using (StreamWriter writer = System.IO.File.CreateText(filename))
    {
        string schema = definition.XmlSchemaDefinition;
        writer.Write(schema);
    }
} 
```

Note that it puts the schema definitions in a directory named platform\\web\\xsd.
