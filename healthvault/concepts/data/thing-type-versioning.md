Thing type versioning
=====================

The HealthVault team designs data types with significant research and input from developers. If the usage patterns for applications change or scientific understanding advances, a new version of the type may be introduced with a different schema to fix these issues. When a data type is updated, applications don't need to rationalize the old and new versions themselves. HealthVault uses a versioning scheme that returns all the relevant data for a thing type in the schema version that the application understands.

Versioning
----------

When applications are developed, they have an explicit understanding of a specific XML schema defined for a type. This <span class="parameter">type contract</span> is defined through the base authorization rules for the application.

Whenever an application requests data for a versioned type, HealthVault transforms the data of that type in the record to the schema for the type defined by the application's type contract. This ensures that HealthVault always returns data in the format that matches the application's authorization rule for that data type, even when other versions of the type exist. In some cases, HealthVault might remove data fields that are not part of the schema the app expects. In other cases, HealthVault might restructure the data to fit the schema. The **flags** element in the common section indicates whether the data has been up-versioned or down-versioned. For more information about the flags element, see the Flags section of <a href="thing-type-schema.md" id="PageContent_14094_2">Thing Type Schema</a>.

For writing or updating existing data:

-   In the case where the data is down-versioned, updates are not allowed. Since most type versioning is done to add data fields to the type, updating an instance of a newer version by an application with an older type contract would cause data loss without the application or user knowing. Therefore, HealthVault actively prevents this from happening.

-   Applications that receive up-versioned instances of a thing type can update the instance stored in the record to the newer version without error.

Most applications should define authorizations rules for a single version of a type, thus defining their type contract. HealthVault then manages all the versioning of data for the application. However, in some rare cases applications may need to authorize multiple versions of a type. This should be done with care and only when absolutely necessary.

Applications may also subvert their type contract by specifying the **type-format-version** parameter of the **GetThings** method request. This parameter tells HealthVault to always format the output of the type in the specified version.

How type versioning works—an example
------------------------------------

As an example, the original blood pressure type does not have a field for body position, to tell whether the person was sitting, standing, or lying down when the measurement was taken. Assume a new version of the blood pressure type is introduced that includes body position. The blood pressure type is identified by two identifiers: the thing type identifier and the version type identifier. When a new version is introduced, a new version type identifier is allocated but the same type identifier is used.

Assume the user has authorized two applications, one called AppBPV1 that uses version 1 of the blood pressure type, and one called AppBPV2 that uses version 2 of the blood pressure type. The user has created instances of blood pressure things in the record using both applications. AppBPV1 creates instances using the blood pressure version 1 schema, and the data is stored in the record in that schema. AppBPV2 creates instances using the blood pressure version 2 schema, and the data is stored in the record in that schema.

Both applications have graphs for the systolic and diastolic data. The user would like to use each app to see all their blood pressure data, not just the data created in the app they are using.

AppBPV1 reads the blood pressure data from the record. Some of the data in the record is already in the version 1 format and will be returned directly. Any data in the version 2 format (which was created by AppBPV2) will be run through an XSL transform that transforms the data into the version 1 format before it is returned. In this case, that means removing the body position information.

AppBPV1 now has all the data in version 1 format and can display it to the user without any code changes to understand the new version format.

### Integrating with HealthVault

Schema

-   <a href="thing-type-schema.md" id="RightRailLinkListSection_14094_8">Thing type schema</a>
-   <a href="downloading-type-schemas.md" id="RightRailLinkListSection_14094_9">Downloading type schemas</a>
-   <a href="thing-type-versioning.md" id="RightRailLinkListSection_14094_10">Thing type versioning</a>
-   <a href="common-data-types.md" id="RightRailLinkListSection_14094_11">Common data types</a>
-   <a href="extending-data-types.md" id="RightRailLinkListSection_14094_12">Extending data types</a>
-   <a href="custom-data-types.md" id="RightRailLinkListSection_14094_13">Custom data types</a>
-   <a href="active-and-inactive-status.md" id="RightRailLinkListSection_14094_14">Active and inactive status</a>
-   <a href="digital-signatures.md" id="RightRailLinkListSection_14094_15">Digital signatures</a>

