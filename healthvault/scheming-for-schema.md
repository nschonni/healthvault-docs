Downloading type schemas
========================

You can access the schemas for the HealthVault types through the [Method and Data Type Schemas](method-and-data-type-schemas.md). If you want to look at all the schemas together in a tool, you can access the schemas programmatically. The schema for a data type is built on some lower-level schemas (or types, if you wish):

-   base.xsd
-   [dates.xsd](https://platform.healthvault-ppe.com/platform/xsd/dates.xsd)
-   [types.xsd](https://platform.healthvault-ppe.com/platform/xsd/types.xsd)

Base.xsd can be fetched programmatically. To get dates.xsd and types.xsd, download directly from the links provided.

Access to the schema is provided through the ItemTypeManager class.

To get the xsd for a specific type:

1.  Call GetBaseHealthRecordItemTypeDefinition() to get the base schema (base.xsd).
2.  Use GetHealthRecordItemTypeDefinition() to get the xsd for a specific type.

To get a list of all the types from the "thing-types" vocabulary:

`Vocabulary thingTypes = ApplicationConnection.GetVocabulary("thing-types"); `
The following code fetches all the schemas and stores them in separate files:

`protected void Page_Load(object sender, EventArgs e){    HealthRecordItemTypeDefinition baseTypes =        ItemTypeManager.GetBaseHealthRecordItemTypeDefinition(ApplicationConnection);    SaveTypeXSD(baseTypes, "base");    Vocabulary thingTypes = ApplicationConnection.GetVocabulary("thing-types");    foreach (KeyValuePair<string, VocabularyItem> item in thingTypes)    {        Guid thingType = new Guid(item.Key);        HealthRecordItemTypeDefinition definition =            ItemTypeManager.GetHealthRecordItemTypeDefinition(thingType, ApplicationConnection);        SaveTypeXSD(definition, definition.Name);    }}void SaveTypeXSD(HealthRecordItemTypeDefinition definition, string name){    string directoryName = MapPath("platform");    Directory.CreateDirectory(directoryName).CreateSubdirectory("web").CreateSubdirectory("xsd");    string filename = MapPath(@"platform\web\xsd\" + name + ".xsd");    using (StreamWriter writer = System.IO.File.CreateText(filename))    {        string schema = definition.XmlSchemaDefinition;        writer.Write(schema);    }} `
Note that it puts the schema definitions in a directory named platform\\web\\xsd.

### Integrating with HealthVault

Schema

-   <a href="thing-type-schema.md" id="RightRailLinkListSection_14061_7">Thing type schema</a>
-   <a href="downloading-type-schemas.md" id="RightRailLinkListSection_14061_8">Downloading type schemas</a>
-   <a href="thing-type-versioning.md" id="RightRailLinkListSection_14061_9">Thing type versioning</a>
-   <a href="common-data-types.md" id="RightRailLinkListSection_14061_10">Common data types</a>
-   <a href="extending-data-types.md" id="RightRailLinkListSection_14061_11">Extending data types</a>
-   <a href="custom-data-types.md" id="RightRailLinkListSection_14061_12">Custom data types</a>
-   <a href="active-and-inactive-status.md" id="RightRailLinkListSection_14061_13">Active and inactive status</a>
-   <a href="digital-signatures.md" id="RightRailLinkListSection_14061_14">Digital signatures</a>

