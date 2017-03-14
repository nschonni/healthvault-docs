This documentation is archived and is not being maintained.

**HealthVault**

<span></span>
In Online you can manage data types and the access (Create, Read, Update and Delete) your application needs when the user is online and Offline rules is applicable when user is offline. By default, there is a single online rule created with Application-Specific Information data type selected when you first create your application configuration. This rule can be edited to include the set of data types and level of access your application requires. You can also add new rules if you require different levels of access to different data types. The detail for each access rule is displayed to the consumer during the application authorization approval process. It is critical that these rules contain no more access to the consumers' HealthVault data than is required by your application.

<span id="Content"></span>
<span class="label">Rule Name</span>: This a mandatory field which allows you to name your sets of rules and it has a character limit of 16.

<span class="label">Why String</span>: This is required for all rules and should be less than 160 characters. Each Why String should accurately describe why your application is requesting the specified access and how that information will be used if approved by the consumer. These descriptions should be a refinement of the <span class="label">Auth Reason</span> that you entered on the <span class="label">Information</span> tab and are especially useful when you have set the rule to optional (<span class="label">Is Optional</span>? = <span class="literalValue">True</span>). These descriptions are presented to the consumer when they are requested to approve access to their HealthVault information for your application.

<span class="label">Is Optional</span>: You can create two different types of rules for your HealthVault application which are required and optional. To make a rule optional, select <span class="label">Is Optional</span>. For optional rules, consumers are not required to approve access for them to be able to use your application.

For example, if the primary scenario of your application is to chart existing weight measurements and as a secondary scenario, it can allow editing of profile information, you should consider creating two rules, where the first rule has Read permission for the Weight Measurement data type and is not marked as optional and the second rule has All permission to the Personal Demographic Information data type and is marked as optional.

Only those rules that apply to the core functionality of your application should be required. All other rules should be optional.

For more information, see [Optional Authorization](https://msdn.microsoft.com/en-us/healthvault/cc539985.aspx).

<span class="label">Display flags</span>: By setting these values you can control the display behavior of your optional rule in authorization page. For more information, see [Optional Authorization](https://msdn.microsoft.com/en-us/healthvault/cc539985.aspx).

<span class="label">Permissions</span>: This defines the level of access your application requires for the selected set of data types. Be sure to set this to the minimum set required for your application for each set of data types. If your application requires a different level of permissions across the set of data types, then you should create multiple rules that group the data types with the corresponding levels of permission. For example, if your application charts existing weight measurements and allows creation and editing of profile information, then you should create two rules with the first rule having Read permission for the Weight Measurement data type and the second rule having Create, Edit, Update, Delete (or All) permission for the Personal Demographic Information data type.

<span class="label">Data Types</span>: Here you can find the list of data types available in HealthVault. You can select the data types which you want to have access user’s health record where it is used by your application. If you hover through the help for each data type then you can see the Type ID (GUID) and the brief summary corresponding to that data type. An addition information – the HealthVault .NET SDK type name will be displayed for data types having multiple versions.

To uncheck all the data types you have chosen, click <span class="label">Uncheck All</span>. For more information about each data type, see [List of all thing types](http://developer.healthvault.com/types/types.aspx).

We recommend choosing the latest HealthVault Data Types for your application. The highest version of a data type is listed on the top among its different versions. Medication and Lab Test Results are examples for data types which are having more than one version in HealthVault.

<span>Show:</span> Inherited Protected
