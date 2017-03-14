Windows 8 sharing and HealthVault
=================================

HealthVault for Windows, available from the Windows App Store, allows a user to access their health data from the HealthVault service. The user can share data from the HealthVault app to other Windows Store apps and use other Windows Store apps to share information to the HealthVault app. Using the Windows Share feature allows your app to exchange data with HealthVault for lightweight occasional data exchange without connecting to the HealthVault service.

This article covers best practices for sharing data with the HealthVault for Windows app.

Considerations for using Windows sharing features
-------------------------------------------------

In order to share health information with HealthVault for Windows, the following conditions must be met:

-   Your app is a Windows Store app.

-   To receive content from the HealthVault app, your app has registered that it can receive one or more of the types of data HealthVault shares (see [What's shared](#whatIsShared) below).

-   To share content to the HealthVault app, your app shares a type of data that HealthVault can receive (see [What's shared](#whatIsShared) below).

For more information about sharing content between Windows Store apps, see the following articles:

-   [Sharing and exchanging data (Windows Store apps using JavaScript and HTML) (Windows)](http://go.microsoft.com/?linkid=9827952)

-   [Sharing and receiving content (Windows Store apps using JavaScript and HTML) (Windows)](http://go.microsoft.com/?linkid=9827956)

-   [Guidelines for sharing content (Windows Store apps) (Windows)](http://go.microsoft.com/?linkid=9827953)

-   [Quickstart: Sharing content (Windows Store apps using JavaScript and HTML) (Windows)](http://go.microsoft.com/?linkid=9827955)

-   [Quickstart: Receiving shared content (Windows Store apps using JavaScript and HTML) (Windows)](http://go.microsoft.com/?linkid=9827954)

### When to share information with HealthVault for Windows

The Windows 8 sharing features allows "lightweight" data exchange between your app and the HealthVault service. It's a great solution for infrequent, user-initiated, one-off data exchange. However, if your app requires a more robust, ongoing data exchange with the HealthVault service, you will need to create an app that connects with the HealthVault service as part of the HealthVault ecosystem. You can learn more about creating HealthVault-connected apps at [http://msdn.microsoft.com/HealthVault](http://go.microsoft.com/?linkid=9813179).

When designing an app, note that:

-   Each sharing action is user initiated and does not establish an ongoing connection.

-   Only make data sharable when it's in context and it is clear to the user what data will be shared.

For more information, see [Guidelines for sharing content (Windows Store apps) (Windows)](http://go.microsoft.com/?linkid=9827953).

### What's shared

**Data the HealthVault app can share**

Currently, the HealthVault app allows users to Share the following data types:

-   Weight

-   Blood pressure

-   Cholesterol

-   Exercise

-   Dietary Intake

We plan to add more types in future releases.

**Data the HealthVault app can receive**

Currently, the HealthVault app subscribes to three data contracts:

-   A collection of custom HealthVault.Types.RecordItem data. You can browse the schema in the [Thing types and sample data browser](http://go.microsoft.com/?linkid=9810880). The HealthVault app sends the thing-XML in a **PutThings** request to the HealthVault service.

-   A file as an inline blob. For a list of the file extensions that the HealthVault app supports, see the **allowedDocumentExtensions** configuration item in the Service Definition Details section of the [Method browser](http://go.microsoft.com/?linkid=9810881).

-   An individual picture as a bitmap.

The receiving app should display the data it receives and indicate how the data will be used. For more information about the Windows UI guidelines, see [Guidelines for sharing content (Windows Store apps) (Windows)](https://msdn.microsoft.com/en-us/library/windows/apps/hh465251.aspx).

Sharing content to HealthVault for Windows

The HealthVault app registers for data it can receive using the format name HealthVault.Types.RecordItem. This format allows the HealthVault app to receive any valid data that conforms to the RecordItem XML structure and send it to the HealthVault service, even if the HealthVault app itself can't display that type of data.

The HealthVault app can receive files as inline blobs. The **allowedDocumentExtensions** configuration item lists the file extensions that the service currently recognizes.

To share data to the HealthVault app, serialize the things to XML and create the data package with the HealthVault.Types.RecordItem format.  <span style="TEXT-ALIGN: center">Sharing actions are user initiated and one-time only. Share data only when it's in context. For more information about the Windows 8 UI guidelines, see </span>[Guidelines for sharing content (Windows Store apps) (Windows)](http://go.microsoft.com/?linkid=9827953)<span style="TEXT-ALIGN: center">. </span><span style="TEXT-ALIGN: center">If a user saves information or a file to their record via Share, the user might not see that information in the HealthVault app. For example, if a user shares a PDF file to the HealthVault app, the app saves the file to the user’s record but does not display the file to the user.</span>

### The user could share that data to the HealthVault app by following these steps: User workflow: sharing data to HealthVault for Windows

Assume a user is viewing health data in your app, and your app registers this data for sharing.

1.  Select the data to share.

2.  Swipe to bring up the charms bar.

3.  Select Share.

4.  Select the HealthVault app as the sharing target.

    The HealthVault app displays a confirmation message with the information that the user selected to share.

5.  Confirm the sharing action.

### Code example: sharing weight data

The following example is a fragment of Windows 8 JavaScript for a page that displays and shares weight data. The ready function populates a grid with weight data and registers that data for sharing. The unload function unregisters the weight data.

When the user activates the Sharing charm and activates a target app for sharing, the Windows share broker calls the page's dataRequested event handler, which serializes the weight data into a data package that the share broker will send to the target app.

For more information about sharing data, see [Sharing content (Windows Store apps using JavaScript and HTML) (Windows)](http://go.microsoft.com/?linkid=9827957).

`(function () {"use strict";WinJS.UI.Pages.define("/pages/grid/grid.html", {    // This function is called whenever a user navigates to this page. It    // populates the page elements with the app's data.    ready: function (element, options) {        loadGrid();        var dataTransferManager =        Windows.ApplicationModel.DataTransfer.DataTransferManager.getForCurrentView();        dataTransferManager.addEventListener("datarequested", dataRequested);    },    unload: function () {        var dataTransferManager = Windows.ApplicationModel.DataTransfer.DataTransferManager.getForCurrentView();        dataTransferManager.removeEventListener("datarequested", dataRequested);    }});function dataRequested(e) {    var request = e.request;    request.data.properties.title = "HealthVault Sample App";    request.data.properties.description = "Sharing some weights";    request.data.setDataProvider(        "HealthVault.ItemTypes." + HealthVault.ItemTypes.Weight.typeID,        dataShareItems);    request.data.setDataProvider("HealthVault.Types.RecordItem", dataShareItems);}function dataShareItems(request) {    var deferral = request.getDeferral();    var record = getCurrentRecord();    var query = HealthVault.ItemTypes.Weight.queryFor();    record.getAllItemsAsync(query).then(        function (items) {            request.setData(HealthVault.Types.RecordItem.serializeMultiple(items));            deferral.complete();        },        function () {            deferral.complete();    });}})();`
Receiving content from HealthVault for Windows
----------------------------------------------

Register to share or receive specific types of data (called "thing types" in HealthVault) by using the string <span class="literalValue">HealthVault.ItemTypes. <span class="parameter">thingtypeID</span></span>, where <span class="parameter">thingtypeID</span> is the ID of the thing type. For example, for weight information, use <span class="literalValue">HealthVault.ItemTypes.3d34d87e-7fc1-4153-800f-f56592cb0d17</span>. (3d34d87e-7fc1-4153-800f-f56592cb0d17 is the type ID for the weight thing type.) For more information about thing types and type IDs, see the **HealthRecordItem** type in the [Thing types and sample data browser](http://go.microsoft.com/?linkid=9810880) and the Microsoft.Health.HealthRecordItem type in the Windows 8 SDK for HealthVault.

When you receive HealthVault data, deserialize the XML. The Windows 8 SDK for HealthVault provides methods for deserializing HealthVault data.

### User workflow: receiving data from HealthVault for Windows

Assume a user is viewing health data in the HealthVault app, and your app has registered to receive this type of data.

The user could share that data to your app by following these steps:

1.  Select the data to share.

2.  Swipe to bring up the charms bar.

3.  Select Share.

4.  Select your app as the sharing target.

    Your app should display a confirmation message with the information that the user selected to share.

5.  Confirm the sharing action.

### Example: receiving shared weight data

The following Windows 8 JavaScript example defines an application-activated event handler for a target app that can receive weight data. The event handler first checks whether that app was activated to share data and whether the shared data is weight data. The event handler then deserializes the data and constructs a preview.

This example assumes that the target app supports the Share Target contract in its manifest.

This example demonstrates only receiving and deserializing HealthVault data and does not include other aspects of supporting sharing in a target app. For more information about receiving shared data, see [Receiving shared content (Windows Store apps using JavaScript and HTML) (Windows)](http://go.microsoft.com/?linkid=9827958).

`var weightDataContract = "HealthVault.ItemTypes." + HealthVault.ItemTypes.Weight.typeID;/// <summary>Handler executed when ready to share; handling the share/// operation should be performed outside the activation handler/// </summary>function shareReady(eventArgs) {    HealthVault.ItemTypes.ItemTypeManager.init();    if (eventArgs.detail.kind === Windows.ApplicationModel.Activation.ActivationKind.shareTarget) {        var shareOperation = eventArgs.detail.shareOperation;        if (shareOperation.data.contains(weightDataContract)) {            shareOperation.data.getTextAsync(weightDataContract).done(function (customFormatString) {                var items = HealthVault.Types.RecordItem.deserializeToTypedItems(customFormatString);                document.getElementById("title").innerText = shareOperation.data.properties.title;                document.getElementById("description").innerText = shareOperation.data.properties.description;                var contentString = "Weight: <br/>";                for (var i = 0; i < items.size; i++) {                    contentString += items[i].when.toString() + " " + items[i].value.inKg + "<br/>";                }                displayContent("Weight: ", contentString, true);            });        }    }}`
Serialization and deserialization of HealthVault data
-----------------------------------------------------

The HealthVault app shares health data in a custom format: HealthVault.Types.RecordItem.

In the Windows 8 SDK for HealthVault, the **HealthVault.Types.RecordItem** class provides the **SerializeMultiple** and **SerializeTypedItems** methods for serializing a list of record items or typed data, respectively, into an **ArrayOfThing** XML element. The **RecordItem** class also provides the **DeserializeMultiple** and **DeserializeToTypedItems** methods for deserializing an **ArrayOfThing** element into the original list of record items or typed data.

`public  static  string SerializeMultiple(IList<RecordItem> items)public static string SerializeTypedItems(IList<IItemDataTyped> items)public static IList<RecordItem> DeserializeMultiple(string xml)public static IList<IItemDataTyped> DeserializeToTypedItems(string xml)`

