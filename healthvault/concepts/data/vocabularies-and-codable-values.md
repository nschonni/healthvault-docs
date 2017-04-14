Vocabularies and CodableValue
=============================

The [Vocabulary](/healthvault/sdks/dotnet/microsoft.health.vocabulary.yml) and [CodableValue](/healthvault/sdks/dotnet/microsoft.health.itemtypes.codablevalue.yml) types are designed to solve two issues:

In medicine, there are long lists of lab tests you can order, medications you can prescribe, physician specialties, and so on. The names of items in these lists can be unwieldy. For physician specialties, you see things like:

-   Medical Toxicology - Emergency Medicine
-   Neurodevelopmental Disabilities (Pediatrics)
-   Adult Reconstructive Orthopedics

So to make things simpler, there is a set of codes—using one to three letters in this case—that are the "standard" ways of encoding the longer strings (what we'll call the "Display Text"). Combine that code with the display text (and sometimes an abbreviation) to get a vocabulary item. Create a list of [VocabularyItem](/healthvault/sdks/dotnet/microsoft.health.vocabularyitem.yml) objects (along with some other information discussed later) and you have a Vocabulary, which defines both a list of possible options and the accepted way of encoding them (the key).

To fetch a vocabulary describing the different kinds of aerobic activities:

```c#
Vocabulary vocabulary = ApplicationConnection.GetVocabulary("aerobic-activites");
foreach (KeyValuePair<string,VocabularyItem> item in vocabulary){
    string key = item.Key;
    string displayText = item.Value.DisplayText;
    string abbreviation = item.Value.AbbreviationText;
}
```
If you look closely at the <span class="code">foreach</span> part, you notice that item's **Value** property returns a [VocabularyItem](/healthvault/sdks/dotnet/microsoft.health.vocabularyitem.yml) object, and that's where the [DisplayText](/healthvault/sdks/dotnet/microsoft.health.vocabularyitem.displaytext.yml) and [AbbreviationText](/healthvault/sdks/dotnet/microsoft.health.vocabularyitem.abbreviationtext.yml) properties are defined.

Here's what you get from executing that code:

| Key  | DisplayText | AbbreviationText |
|------|-------------|------------------|
| run  | running     | run              |
| jog  | jogging     | jog              |
| hike | hiking      | hike             |
| bike | bicycling   | bike             |
| spin | spinning    | spin             |
| swim | swimming    | swim             |
| walk | walking     | walk             |
| row  | rowing      | row              |

In addition to the information on a specific vocabulary item, there is some general information on the [Vocabulary](/healthvault/sdks/dotnet/microsoft.health.vocabulary.yml) type.

[Culture](/healthvault/sdks/dotnet/microsoft.health.vocabulary.culture.yml)

The culture tells you the culture of the vocabulary. When you fetch a vocabulary, it comes back for the current culture, and you can control whether there is a fallback to other cultures if there is not one specific to the current culture. Note that the key is culture-invariant, and therefore may not make sense to users in your current culture.

[Family](/healthvault/sdks/dotnet/microsoft.health.vocabulary.family.yml)

The family defines the overall source for the vocabulary. If it's from HL7, HL7 would presumably be identified as the source. Or for example, it might say "AMA". The family lets you understand where the vocabulary came from. If it's something the HealthVault team defined, the family is "wc".

[Name](/healthvault/sdks/dotnet/microsoft.health.vocabulary.name.yml)

The name of the vocabulary. Together with the family, the name fully identifies the source.

[Version](/healthvault/sdks/dotnet/microsoft.health.vocabulary.version.yml)

A string defining a version of the vocabulary.

Coded and codable values
------------------------

How is a reference to a specific vocabulary item stored in HealthVault?

It is stored through the [CodedValue](/healthvault/sdks/dotnet/microsoft.health.itemtypes.codedvalue.yml) type. A quick look at the type shows the following properties:

-   [Family](/healthvault/sdks/dotnet/microsoft.health.itemtypes.codedvalue.family.yml)
-   [Value](/healthvault/sdks/dotnet/microsoft.health.itemtypes.codedvalue.value.yml)
-   [Version](/healthvault/sdks/dotnet/microsoft.health.itemtypes.codedvalue.version.yml)
-   [VocabularyName](/healthvault/sdks/dotnet/microsoft.health.itemtypes.codedvalue.vocabularyname.yml)

**Family**, **Version**, and **VocabularyName** are used to indicate what vocabulary you are using, and **Value** is used to store the key for the specific vocabulary item. An application can figure out exactly you mean by looking at a **CodedValue** object.

That works well when you have a vocabulary and know exactly what code to use. But there are two more scenarios you need to support.

First, you may have an item to store, and either the item is not in the vocabulary or you don't know what the appropriate vocabulary is. For example, you may want to store your juggling exercise data, but that's not part of the aerobic-activities vocabulary. Or you are taking an over-the-counter allergy medicine and all you know is the name on the box.

In other words, sometimes you have very precise information, and sometimes the information is less precise, but in both cases the platform and the applications that use the platform need to handle it well.

The second, rarer scenario is that there are times where a single entry may need to store multiple values.

Both of these scenarios are supported through the [CodableValue](/healthvault/sdks/dotnet/microsoft.health.itemtypes.codablevalue.yml) type, and that's the type that you see used in the data types. It provides a [Text](/healthvault/sdks/dotnet/microsoft.health.itemtypes.codablevalue.text.yml) property and a way of having multiple coded values.

The **Text** property is always set for all codable values, and that's the one that you display when you're showing that value to a user. Any underlying **CodedValue** instances are of a "more information" category: The application can use them to find out more information about that text.

All vocabularies
----------------

You can fetch the list of all vocabularies with the following:

<span class="code">ReadOnlyCollection&lt;VocabularyKey&gt; keys = ApplicationConnection.GetVocabularyKeys();</span>

This list is useful for browsing to see if the vocabulary that you want is currently defined in the system. If you need a vocabulary that is not in the system, you can request a new vocabulary using the same process you'd use to request a new data type.

Best practices
--------------

1.  Always set the **Text** property on the **CodableValue**, even if there are **CodedValue** objects underneath.
2.  Always display the **Text** property as the high-level summary of the **CodableValue** object.
3.  Be thoughtful about displaying the key to a vocabulary item to the user. It might be a number—in which case it is probably okay—but it also might be a string that works well only in one locale.

