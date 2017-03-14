This documentation is archived and is not being maintained.

**HealthVault**

<span></span>
This topic provides more information about the information messages that HealthVault Application Data Checkup generates. For more information about the tool, see <span>[HealthVault Application Data Checkup](healthvault-application-data-checkup.md)</span>.

Last updated: September 2012

<span id="Section1"></span>
<span id="HVC0001"></span>
**HVC0001**: No Validator For Type

> The HealthVault Application Data Checkup program does not currently provide analysis for this data type.

<span id="HVC0002"></span>
**HVC0002**: Lower Version of Type

> The record contains instances of data that are stored using older versions of one of the HealthVault data types. Information is most useful to other applications when it is stored using the newest version of all data types.

<span id="HVC0003"></span>
**HVC0003**: Related Item Does Not Exist

> Related items are used to relate one data type instance to another. This instance lists another instance as a related item, but that instance cannot be found in the current method.

<span id="HVC0004"></span>
**HVC0004**: Extension Source Format Incorrect

> All HealthVault data instances can be extended by adding additional information to the instance. To facilitate interoperation between different applications, each extension is labelled with source information.
>
> It is recommended that the source be constructed using the <span class="parameter">company-name</span>.<span class="parameter">extension-name</span> to prevent confusion between extensions.

<span id="HVC1000"></span>
**HVC1000**: Codable value could be present

> The information in the specified instance of data will be more useful if a value for the specified codable value is specified.

<span id="HVC1001"></span>
**HVC1001**: Codable value should be coded

> The specified codable value is an important part of the information stored in this data type. It will be easier for other applications to understand this information if a coded value is added to this codable value.

<span id="HVC1002"></span>
**HVC1002**: Codable value could be coded

> It will be easier for other applications to understand this information if a coded value is added to this codable value.

<span id="HVC1010"></span>
**HVC1010**: General measurement could include structured measurement

> The named element specifies the display portion of a general measurement. This information would be easier for other applications to consume if it also specified the structured portion of the general measurement.

<span id="HVC1020"></span>
**HVC1020**: The month and day must be set if time is present

> The specified date and time specifies a time without fully specifying a day. Please specify the day and month of the date.

<span id="HVC1021"></span>
**HVC1021**: The month must be present if day is

> The specified date and time specifies a day without specifying a month. Please specify the month for the date.

<span id="HVC1022"></span>
**HVC1022**: The seconds must be specified if the milliseconds are

> The specified date and time defines a milliseconds value without defining the seconds. Please specify the seconds value.

<span id="HVC1030"></span>
**HVC1030**: The first and last name should be present together

> The first and last name should be specified together.

<span id="HVC1031"></span>
**HVC1031**: A middle name is specified without a first and last name

> A last and first name should be specified with a middle name.

<span id="HVC1032"></span>
**HVC1032**: A title is specified without a first and last name

> A last and first name should be specified with a title.

<span id="HVC1033"></span>
**HVC1033**: A suffix is specified without a first and last name

> A last and first name should be specified with a suffix.

<span id="HVC1040"></span>
**HVC1040**: Address has multiple primary addresses

> This instance specifies more than one address that is marked as the primary one. Please mark only one address as the primary one.

<span id="HVC1041"></span>
**HVC1041**: Phone has multiple primary phones

> This instance specifies more than one phone that is marked as the primary one. Please mark only one phone as the primary one.

<span id="HVC1042"></span>
**HVC1042**: Email has multiple primary emails

> This instance specifies more than one email that is marked as the primary one. Please mark only one email as the primary one.

<span id="HVC1043"></span>
**HVC1043**: Contact should define address or phone or email

> This instance specifies a contact that doesn't have an address, phone, or email. Please define at least one of these.

<span id="HVC1050"></span>
**HVC1050**: String is empty or contains only whitespace characters

> The specified string is empty or contains only whitespace characters. Please ensure that the information in this string is useful.

<span id="HVC1051"></span>
**HVC1051**: Date time is in the future

> The specified date and time is intended to store a date or time that is in the future, but it contains one that is in the past.

<span id="HVC1052"></span>
**HVC1052**: Date time is in the past

> The specified date and time is intended to store a date or time that is in the past, but it contains one that is in the future.

<span id="HVC2001"></span>
**HVC2001**: Date discontinued is earlier than date started

> The date the medication was discontinued is before the date the mediation was started.

<span id="HVC2002"></span>
**HVC2002**: Date prescribed could be present

> The medication instance would be more useful if it recorded the date the medication was prescribed.

<span id="HVC2003"></span>
**HVC2003**: Instructions could be present

> The medication instance would be more useful if it recorded the prescription instructions.

<span id="HVC2004"></span>
**HVC2004**: Prescription expiration could be present

> The medication instance would be more useful if it recorded the date the prescription expires.

<span id="HVC2020"></span>
**HVC2020**: Date administered could be present

> The immunization instance would be more useful if it recorded the date the immunization was administered.

<span id="HVC2021"></span>
**HVC2021**: Date administered is after the expiration date

> The date the immunization was administered is after the expiration date.

<span id="HVC2040"></span>
**HVC2040**: A when value could be present

> The lab test results instance would be more useful if it recorded when the results were created.

<span id="HVC2041"></span>
**HVC2041**: Result groups are nested too deep

> The lab test results instance has groups that are too deeply nested. Please restructure the results to contain only groups and one level of sub groups.

<span id="HVC2042"></span>
**HVC2042**: Range value should specify a minimum or maximum

> The range value specified does not specify a minimum or maximum. It should specify at least one of these.

<span class="LW_CollapsibleArea_TitleAhref"><span class="cl_CollapsibleArea_expanding LW_CollapsibleArea_Img"></span><span class="LW_CollapsibleArea_Title">See Also</span></span>
<a href="/en-us/library/jj551249.aspx#Anchor_0" class="LW_CollapsibleArea_Anchor_Img" title="Right-click to copy and share the link for this section"></a>

------------------------------------------------------------------------

<span id="seeAlsoToggle"></span>
#### Other Resources

<span>[HealthVault Application Data Checkup](healthvault-application-data-checkup.md) </span>

<span>Show:</span> Inherited Protected
