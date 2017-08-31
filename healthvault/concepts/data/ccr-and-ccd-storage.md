---
title: Continuity of Care Record Storage
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn about how HealthVault stores Continuity of Care Records and Continuity of Care Documents. 
---

Storing CCR and CCD Data in HealthVault
=======================================

Both the Continuity of Care Record ([CCR](http://www.centerforhit.org/online/chit/home/project-ctr/astm.html)) and the Continuity of Care Document ([CCD](http://www.hl7.org/documentcenter/public/pressreleases/20070212.pdf)) are designed as ways of passing information between entities. For example, when a patient leaves the hospital, information can be passed to their primary care physician through one of these types. These types are examples of XML types (see [What Data Type Should I Use?](http://blogs.msdn.com/ericgu/archive/2007/10/30/what-data-type-should-i-use.aspx)), which simply means that they are types as far as the HealthVault platform is concerned (that is, they have an XML schema and thing type associated with them), but they don't have a client type (that is, a type derived from HealthRecordItem) in the .NET API.

To operate with such types, you need to use the HealthRecordItem type directly. To do so, you need to know the GUID associated with each type. You get the GUIDs from the [Thing Types Reference](/healthvault/reference/datatypes) page and encode them using the following:

```c#
      
readonly Guid CCR_THING_GUID =  new Guid("1e1ccbfc-a55d-4d91-8940-fa2fbf73c195"); 
readonly Guid CCD_THING_GUID =  new Guid("9c48a2b8-952c-4f5a-935d-f3292326bf54");
    
```

To insert a CCR, use the following:

```c#
void AddCCR() 
{ 
   XmlDocument ccrDocument = new XmlDocument(); 
   ccrDocument.Load(MapPath("ExampleCCR.xml")); 
   HealthRecordItem ccr =  
        newHealthRecordItem(CCR_THING_GUID, ccrDocument); 
 
   PersonInfo.SelectedRecord.NewItem(ccr); 
}
```

You might want to use XPathDocument instead of XMLDocument because it is cheaper than XMLDocument to use. Also note that the ExampleCCR.xml file must not have anything before the "&lt;ContinuityOfCareRecord&gt;" element—if it does, the framework rejects the file as poorly formatted.

To do the same thing with a CCD, change the appropriate "r" characters in the code to "d" characters.

To retrieve the types is also fairly simple. To look at all the CCDs stored in a record:

```c#
      List<HealthRecordItem> ccdItems =  
     GetValues<HealthRecordItem>(CCD_THING_GUID); 
 
foreach (HealthRecordItem ccd in ccdItems) 
{ 
   // ccd xml data is in ccd.TypeSpecificData 
}  
//where GetValues() is from the HelloWorld sample.
    
```

This is a simple form of support for these data types. For more information about creating a CCR from individual data items in HealthVault, or storing CCR data as individual items in HealthVault, see <a href="ccr-data" id="PageContent_14116_2">Using CCR Data in HealthVault</a>.
