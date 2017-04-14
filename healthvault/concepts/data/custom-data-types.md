Custom data types
=================

You may find that there isn’t a built-in data type that stores what you need. The .NET SDK provides a way for you to create your own custom type.

Creating the class
------------------

First, you need to create the class. The example here is a simplified version of a custom type, without properties, validation logic, etc.

```c#
using Microsoft.Health;
using Microsoft.Health.ItemTypes;
public class PeakFlowZone : HealthRecordItem
{    
    private double m_redOrangeBoundary;
    private double m_orangeYellowBoundary;    
    private double m_yellowGreenBoundary;    
    private HealthServiceDateTime m_when;    
    
    public PeakFlowZone() : base(new Guid("a5033c9d-08cf-4204-9bd3-cb412ce39fc0")){

    }
}
```

The two important features of the class are that it derives from HealthRecordItem—as all custom types should—and that it uses a specific GUID in the constructor. This is the magic "custom type GUID," and you need to use this exact one.

The custom data type XML format
-------------------------------

Next, you write the code to serialize and deserialize the data. This operation works a little like .NET serialization.

The platform expects that you conform to a specific XML schema when you store your data. For this class, here's the way it needs to look:

```
MyAppNamePeakZone200787000
```

The format-appid and format-tag elements are for your use; put anything you want in those elements. When is the timestamp for the element and summary is the summary text.

Those elements are required. The format of the XML that you actually use to store your data is up to you.

The XML methods
---------------

Now that you know what the format is, you need to write two methods. Here they are:

```c#
protected override void ParseXml(IXPathNavigable typeSpecificXml)
{    
    XPathNavigator navigator = typeSpecificXml.CreateNavigator();    
    navigator = navigator.SelectSingleNode("app-specific");    
    XPathNavigator when = navigator.SelectSingleNode("when");    
    m_when = new HealthServiceDateTime();   
    m_when.ParseXml(when);    
    XPathNavigator formatAppid = navigator.SelectSingleNode("format-appid");    
    string appid = formatAppid.Value;    
    XPathNavigator peakZone = navigator.SelectSingleNode("PeakZone");    
    peakZone.MoveToFirstAttribute();    
    
    for (; ; )    
    {       
        switch (peakZone.LocalName)        
        {            
            case"RedOrangeBoundary":                
                m_redOrangeBoundary = peakZone.ValueAsDouble;                
                break;            
            case"OrangeYellowBoundary":                
                m_orangeYellowBoundary = peakZone.ValueAsDouble;                
                break;            
            case"YellowGreenBoundary":               
                m_yellowGreenBoundary = peakZone.ValueAsDouble;                
                break;        
        }        
        
        if (!peakZone.MoveToNextAttribute())        
        {            
            break;        
        }    
    }
}

public override void WriteXml(XmlWriter writer)
{    
    writer.WriteStartElement("app-specific");
    {        
        writer.WriteStartElement("format-appid");        
        writer.WriteValue("MyAppName");        
        writer.WriteEndElement();        
        writer.WriteStartElement("format-tag");        
        writer.WriteValue("PeakZone");        
        writer.WriteEndElement();        
        m_when.WriteXml("when", writer);        
        writer.WriteStartElement("summary");        
        writer.WriteValue("");        
        writer.WriteEndElement();        
        writer.WriteStartElement("PeakZone");       
        writer.WriteAttributeString("RedOrangeBoundary", 
            m_redOrangeBoundary.ToString());        
        writer.WriteAttributeString("OrangeYellowBoundary",         
            m_orangeYellowBoundary.ToString());        
        writer.WriteAttributeString("YellowGreenBoundary",        
            m_yellowGreenBoundary.ToString());        
        writer.WriteEndElement();    
    }    
    writer.WriteEndElement();
}
```

Using the class
---------------

Now you need to use the class. Using this class is just like dealing with any other data type, with one exception. For the built-in types, the API layer already knows the correspondence between a specific GUID and the type that it represents. If a type comes across and the type ID is:

```
3d34d87e-7fc1-4153-800f-f56592cb0d17
```

the system knows that it should create a Weight item. You can find that value by looking at Weight.TypeId.

In this case, the system doesn't know what to do with your custom type yet, so you need to register it. You do that through the following bit of code:

```c#
ItemTypeManager.RegisterTypeHandler(new Guid("a5033c9d-08cf-4204-9bd3-cb412ce39fc0"), typeof(PeakFlowZone), true);
```

Note that you're using the magic "custom data type" GUID again, and then you're telling it the type of the data. The last parameter tells it not to worry if there's already a type registered for this GUID.

Caveats and limitations
-----------------------

The biggest caveat is that there is currently support for only one registered custom type per application. So once you've defined that PeakFlowZone type, you're through.

There are a couple of ways to get around this limitation.

First, you could introduce an "invalid data" concept for all the custom types that you wrote. The ParseXml() method would look at the format-tag attribute, and if it wasn't a PeakZone tag, it would just set the InvalidData flag. Then before you do the query, you would register whatever type you cared about, and then filter out the instances with invalid data (which really are valid, but just not the type you wanted).

Another option is to build a "custom data type" wrapper that does this sort of thing for you. The wrapper type is the one that is registered, and it knows how to create the appropriate type based on the format-tag setting. A query then returns a list of the wrapper types, and you need to drill into them to get out the values you want.

We recommend the second approach because it avoids having to get the registration correct, but it does involve a bit more code.

Creating a wrapper object for your custom data types
----------------------------------------------------

If your application creates multiple custom types, it needs a layer that can do the appropriate thing and give you the types that you want.

As is often the case in computer science, you can approach this situation by adding in a layer of indirection. You can write a wrapper object that seems to the platform to be the only custom object, and that wrapper object knows how to deal with multiple custom objects.

This approach is used in the HealthAndFitness sample. Look in the Web site\\app\_code\\ThingTypes directory to find the full implementations of the code listed here. You can use those implementations instead of using this code.

You start with a base class for our custom objects. It looks a lot like the HealthRecordItem class, but the ParseXml() method is public. You also use it to hold a bit of magic later.

```c# 
public class HealthRecordItemCustomBase
{    
    protected CustomHealthTypeWrapper m_wrapper;   
    public CustomHealthTypeWrapper Wrapper    
    {        
        get { return m_wrapper; }        
        set { m_wrapper = value; }   
    }    
    
    public virtual void ParseXml(IXPathNavigable typeSpecificXml) { }    
    public virtual void WriteXml(XmlWriter writer) { }
}
```

The Wrapper property lets you get back to the wrapper for this instance. The usefulness of that becomes apparent later.

The wrapper class looks like this:

```c#
public class CustomHealthTypeWrapper : HealthRecordItem
{    
    const string NullObjectTypeName = "NULLOBJECT";    
    private HealthServiceDateTime m_when;    
    private HealthRecordItemCustomBase m_wrappedObject = null;    
    public CustomHealthTypeWrapper() : this(null) { }   
    
    public CustomHealthTypeWrapper(HealthRecordItemCustomBase wrappedInstance) : base(new Guid(ApplicationCustomTypeID))    
    {       
        m_wrappedObject = wrappedInstance;        
        // Test for null here because the deserialization code         
        // needs to create this object first...        
        if (wrappedInstance != null)        
        {            
            wrappedInstance.Wrapper = this;        
        }    
    }    
    
    public HealthRecordItemCustomBase WrappedObject    
    {        
        get { return m_wrappedObject; }        
        set { m_wrappedObject = value; }    
    }
}
```

The wrapped object has a reference to the wrapper, and the wrapper has a reference to the wrapped object. You also have a constructor to create a wrapper around an object, and when you use that one, it sets both pointers.

It's now time to add some code to the wrapper class to save objects. Here's WriteXml():

```c#
public override void WriteXml(XmlWriter writer)
{    
    if (writer == null)    
    {        
        throw new ArgumentNullException("null writer");
    }    
    writer.WriteStartElement("app-specific");
    {       
        writer.WriteStartElement("format-appid");        
        writer.WriteValue("Custom");       
        writer.WriteEndElement();        
        string wrappedTypeName = NullObjectTypeName;        
        if (m_wrappedObject != null)        
        {            
            Type type = m_wrappedObject.GetType();            
            wrappedTypeName = type.FullName;        
        }        
        writer.WriteStartElement("format-tag");        
        writer.WriteValue(wrappedTypeName);        
        writer.WriteEndElement();         
        m_when.WriteXml("when", writer);       
        writer.WriteStartElement("summary");        
        writer.WriteValue("");        
        writer.WriteEndElement();        
        if (m_wrappedObject != null)        
        {            
            writer.WriteStartElement("CustomType");            
            m_wrappedObject.WriteXml(writer);            
            writer.WriteEndElement();        
        }    
    }
    writer.WriteEndElement();
}
```
That's essentially unchanged except for two changes. First, if there's a wrapped object, you write out the actual type name, and then when it comes to writing out the custom type data, you delegate that to the wrapped object.

### On to ParseXml()

```c#
protected override void ParseXml(IXPathNavigable typeSpecificXml)
{
    XPathNavigator navigator = typeSpecificXml.CreateNavigator();
    navigator = navigator.SelectSingleNode("app-specific");
    if (navigator == null)
    {
        throw new ArgumentNullException("null navigator");
    }
    XPathNavigator when = navigator.SelectSingleNode("when");
    m_when = new HealthServiceDateTime();
    m_when.ParseXml(when);
    XPathNavigator formatAppid = navigator.SelectSingleNode("format-appid");
    string appid = formatAppid.Value;
    XPathNavigator formatTag = navigator.SelectSingleNode("format-tag");
    string wrappedTypeName = formatTag.Value;
    if (wrappedTypeName != NullObjectTypeName)
    {
            m_wrappedObject = (HealthRecordItemCustomBase)
            CreateObjectByName(wrappedTypeName);
            if (m_wrappedObject != null)
            {
                    m_wrappedObject.Wrapper = this;
                    XPathNavigator customType =
                        navigator.SelectSingleNode("CustomType");
                        if (customType != null)
                        {
                                m_wrappedObject.ParseXml(customType);
                     }
            }
    }
}
```
This is also not very different. The big change is that if there is a type name stored in format-tag, you create an instance of that type, find the custom data for it, and then call ParseXml() on that object. Note that it's possible that that format-tag isn't a type that you know about, so you have to deal with those cases.

The object instances are created by CreateObjectByName():

```c#
public object CreateObjectByName(string typeName){
    Type type = Type.GetType(typeName);
    object o = null;
    if (type != null)
    {        
        if (type.BaseType != typeof(HealthRecordItemCustomBase))
        {
            throw new ApplicationException("Custom type not derived from HealthRecordItemCustomBase");
        }
        o = Activator.CreateInstance(type);
    }    
return o;
}
```

Look up the type to see if it's one you recognize. Make sure that it's derived from your base type, and then create an instance of it.

That's the basic scheme. You also provide a helper method to register the custom type:

```c#
public const string ApplicationCustomTypeID = "a5033c9d-08cf-4204-9bd3-cb412ce39fc0";
public static void RegisterCustomDataType()
{
        ItemTypeManager.RegisterTypeHandler(
                new Guid(ApplicationCustomTypeID),
                typeof(CustomHealthTypeWrapper), true);
}
```
You'll need to make sure this method is called before saving or loading any custom types.

Custom type XML format
----------------------

Because the custom type XML is no longer handled by the platform, it can be whatever XML format you want. On the theory that many custom types may migrate to become platform types, we recommend suggest using the XML format that the platform likes rather than inventing your own.

Using the wrapper type
----------------------

The wrapper type is fairly easy to use—instead of saving an instance of the custom item, you create a wrapper around it, and then pass the wrapper to NewItem(), or whatever method you're calling.

When you're querying, there is an extra step. You get back a HealthRecordItemCollection full of CustomHealthTypeWrapper instances. Some of them wrap the type you want, some of them wrap some other type, and some of them won't wrap anything. So you need to write something like the following:

```c#
List<MyCustomObject> customItems = new List<MyCustomObject>();
foreach (HealthRecordItem item in items){
    CustomHealthWrapper wrapper = (CustomHealthTypeWrapper)item;
    MyCustomObject custom = wrapper.WrappedObject as BPZone;
    if (custom != null)
    {
            customItems.Add(custom);
    }
}
```
Then you end up with an array that has only the types you care about.

A final bit of goodness
-----------------------

The scheme as described is a bit unfortunate, in that the type derived from HealthRecordItemCustomBase doesn't have the base class items that are present in the HealthRecordItem. So, if you want to get the Key value, you have to write:

```c#
myCustomInstance.Wrapper.Key
```
and similarly for the CommonData stuff:

```c#
myCustomInstance.Wrapper.CommonData.Note
```
The final bit of goodness is to add a few properties in the HealthRecordItemCustomBase class that forward requests to the wrapper class, so you can write:

```c#
myCustomInstance.CommonData.Note
```
and have it refer to the information in the wrapper class.
