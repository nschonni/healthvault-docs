---
title: Extending data types
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn how to store additional data in a HealthVault data type
---

Extend a HealthVault data type
====================

When building your application, you may find that you need to store additional information with an existing data type. For example, if you are using the Height data type, but you want to keep track of whether people were sleeping immediately before height was measured because the spine compresses during the day. The question is whether to:

-   Incorporate this information into the existing base data type
-   Use some other existing data type
-   Ask the HealthVault developers to create a new data type
-   Extend the existing data type

To determine the appropriate course of action, inquire in the [HealthVault Forum](http://social.msdn.microsoft.com/forums/en-US/healthvault/).

If the response to your inquiry is that the additional information should be stored as an extension of an existing type, you use the Extensions property of the [CommonItemData](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.commonitemdata) object returned by the [HealthRecordItem.CommonData](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.healthrecorditem) property, which is a collection of [HealthRecordItemExtension](https://docs.microsoft.com/en-us/dotnet/api/microsoft.health.healthrecorditemextension) objects. By default, there's nothing in this list. If you have an instance and you add an extension instance to it, the framework saves that instance to the server and returns it when you read that instance back out.

HealthVault data types can be extended by inserting XML into the HealthRecordItemExtension or by using a custom extension class. In the first method, you work with the XML details, which can be a bit clumsy. In the second method, you encapsulate the information in a class.

Using HealthRecordItemExtension
-------------------------------

Remember that this is a LIST of extensions, so you need to write your code so that it works with extensions that may have been put there by other users.

### Saving data to HealthVault

Here's the code to add the extension data:

```cs
string extensionSourceName = "Fabrikam.UserSpineState";
HealthRecordItemExtension extension =     
    new HealthRecordItemExtension(extensionSourceName);
height.CommonData.Extensions.Add(extension);
XPathNavigator navigator = extension.ExtensionData.CreateNavigator();
navigator.InnerXml = @"<extension source=""" + 
    extensionSourceName + @"""><SpineState>Compressed</SpineState></extension>"; 
```

The first line defines the source string. This is the "unique identifier" that differentiates your data from all the other data, so it's a good place to put a company name or some other unique string.

Next, create an instance of HealthRecordItemExtension with that name, and finally add some XML to the extension. Note that the string in the extension source attribute has to be identical to the source you specified when you created the HealthRecordItemExtension instance.

When, for example, the height instance is saved, that data is persisted.

### Pulling the data back out

To get the data out, you need to find your extension among the other extensions. Assuming, for example, that you have a Height instance, you can write the following:

```cs
foreach (HealthRecordItemExtension extension in height.CommonData.Extensions)
{    
    if (extension.Source == "Fabrikam.UserSpineState")    
    {        
        XPathNavigator navigator =         
            extension.ExtensionData.CreateNavigator();
        XPathNavigator spineStateNavigator =         
            navigator.SelectSingleNode("extension/SpineState");
        if (spineStateNavigator != null)        
        {            
            string spineState = spineStateNavigator.Value;
        }   
    }
}
```
And note that the source string you’re looking for is the same one you specified when you added the extension.

There are a few other properties that you can set on the extension:

**Transform** If you want your extension data to be visible in applications that show data generically, such as the HealthVault.com data view, you can provide the URL of an SSL transform that can convert the XML into HTML.

**Logo** Similarly, if you want a logo associated with the extension data, you can provide a URL here.

**Version** A version string that you can use for versioning.

### Using a custom extension class

```cs
public class UserSpineStateExtension : HealthRecordItemExtension
{    
    static readonly string ExtensionSource = "Fabrikam.UserSpineState";    
    string m_spineState;    
    public UserSpineStateExtension()    {    }    
    public UserSpineStateExtension(string spineState) : base(ExtensionSource)    
    {        
        m_spineState = spineState;       
        Source = ExtensionSource;    
    }    
    
    public string SpineState    
    {        
        get { return m_spineState; }        
        set { m_spineState = value; }    
    }    
    
    protected override void ParseXml(System.Xml.XPath.IXPathNavigable extensionData)    
    {        
        XPathNavigator navigator = extensionData.CreateNavigator();        
        XPathNavigator spineStateNode = navigator.SelectSingleNode("extension/SpineState");        
        if (spineStateNode != null)        
        {            
            m_spineState = spineStateNode.Value;        
        }    
    }   

    protected override void WriteXml(System.Xml.XmlWriter writer)    
    {        
        writer.WriteStartElement("SpineState");        
        writer.WriteString(m_spineState);        
        writer.WriteEndElement();    
    }    
    
    public static void RegisterExtensionHandler()    
    {       
        ItemTypeManager.RegisterExtensionHandler(            
            ExtensionSource,             
            typeof(UserSpineStateExtension), true);    
    }
}
```

There are two constructors. The empty one is used by the system when it is creating an instance for you. The other one takes in the value that you want to store and then sets the sources appropriately.

In ParseXml(), find the appropriate node, pull out the value, and store it in your own variable. In WriteXml(), add in the XML for your spine state value.

Note that the parse and write methods are not symmetrical. In the write method, you are already inside the &lt;extension&gt; tag, while in the parse one, you are up one level, pointing at the &lt;extension&gt; tag.

Finally, the RegisterExtensionHandler() method registers the type with the system so it knows where to find it. That method needs to be called someplace before you try to use the type.

### Using a custom extension class

Using the custom extensionTo use the extension is very simple. To add an extension, use this code:

```cs
UserSpineStateExtension extension =     
new UserSpineStateExtension("Extended");
height.CommonData.Extensions.Add(extension); 
```
And to get it back, here's what you write:

```cs
foreach(HealthRecordItemExtension extension in height.CommonData.Extensions)
{    
    UserSpineStateExtension userSpineState = extension as UserSpineStateExtension;   
    if (userSpineState != null)    
    {        
        string spineState = userSpineState.SpineState;    
    }
}
```
