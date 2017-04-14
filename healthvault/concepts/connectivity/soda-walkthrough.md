SODA sample walkthrough
=======================

This article describes the steps required to create a very basic SODA application. The application uses the Windows console to demonstrate the core functionality of a SODA client. It uses the HealthVault .NET API to:

-   Connect to the HealthVault platform from an application running locally on a client machine.
-   Create and provision a new HealthVault application instance for each user of the client application.
-   Establish an authorized connection to a HealthVault user account.
-   Use offline access rules inherited from a SODA master application to read a HealthVault data item from a user record.

Requirements
------------

You will need the following resources to create the application as described in this document.

-   Visual Studio 2005, or a later version of Visual Studio
-   The HealthVault SDK, version 1.0.2145.4504 or later
-   A user account in the HealthVault Pre-Production Environment (PPE)

Create the SODA master application
----------------------------------

The first step is to create the SODA master application on the HealthVault servers.

The master application provides information that describes and identifies all client application instances. It also defines offline access rules that are inherited by client instances and that allow them to read, write and modify HealthVault data.

### Create an application

Use the Application Manager tool to create a new application in the HealthVault PPE.

1.  In the Start menu, navigate to **Start -&gt; Program Files -&gt; Microsoft HealthVault -&gt; SDK**.
2.  Select and run **HealthVault Application Manager**. (In Vista or Windows 7, right click and **Run as administrator**.)
3.  In the Application Manager window, click **Create New Application**.
4.  Enter the name of your application.
5.  Deselect **Automatically create Visual Studio website for this Application**. (As of version 1.0.2145.4504 of the HealthVault SDK, the Application Manager can only automatically create Visual Studio projects for ASP.NET applications.)
6.  Click **Create and Register Application**.

If you are not already logged in to the PPE shell, you will be asked to log in to a HealthVault PPE user account.

The Application Manager automatically performs the following steps:

-   Creates a new application with the Default application type.
-   Creates a public/private key pair.
-   Adds the private key to the local certificate store.
-   Uploads the public certificate to the PPE.
-   Assigns the public certificate to the new application.
-   Opens the PPE Application Configuration Center in a new browser window.

If you choose not to use the Application Manager, you will need to perform those steps manually.

### Configure the SODA master application

Next, configure the application as a SODA master application in the Application Configuration Center.

1.  Click on the new application in the Application Configuration Center.
2.  Go to the **Misc** tab.
3.  In the **Change Application Type** row, select **Soda**.
4.  Click **Save**. Click **OK** to confirm. **Note:** Changing the application type to "Soda" changes the default values in many of the other tabs.
5.  Go to the **Soda app rules** tab.
6.  Click **Create a new offline auth rule**.
7.  In **Rule Name**, enter “Read Basic Info”.
8.  In **Why String**, enter “Demonstrate access to a widely available HealthVault data type.”
9.  In **Permissions**, check **Read**.
10. Check the check box next to “Basic Demographic Information”.
11. Click **Save**.
12. Go to the **Information** tab.
13. Remove text from the **Action URL**. (The HealthVault Shell will handle redirect responses for SODA applications with no action URL.)
14. Add text to the **Privacy Statement** and **Terms of Use**. (If you do not specify a redirect URL, you must provide a Privacy Statement and Terms of Use.)

Create the client application
-----------------------------

The client application runs locally on a client machine and uses the API to authenticate against and access data on the HealthVault servers.

The following example creates a C\# Windows console application that communicates with the HealthVault platform and shell services using the .NET API.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Note</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>It is not necessary to enter each code snippet individually. The complete source code for this application is included at the end of this document.</p></td>
</tr>
</tbody>
</table>

### Create a Visual Studio console application project

1.  In Visual Studio, open the **New Project** dialog.
2.  Select the “Visual C\#/Windows” project type.
3.  Select the “Console Application” template.
4.  In **Name**, enter the name of your application.
5.  Click **OK**.

### Add references to the HealthVault SDK DLLs

1.  In the **Solution Explorer** window, right click on the new console application project.
2.  Select Add **Reference**.
3.  In the Add **Reference** dialog, go to the Browse tab.
4.  Navigate to &lt;HealthVault SDK Root&gt;\\DotNet\\Assemblies.
5.  Select Microsoft.Health.dll and Microsoft.Health.ItemTypes.dll.
6.  Click **OK**.
7.  Add the following lines to the beginning of the Program.cs source file:

```
      using Microsoft.Health;
using Microsoft.Health.ItemTypes;
```

### Create the user and application settings

When the SODA API creates and provisions a new HealthVault application for a new SODA client application instance, the SDK also creates a new certificate and adds the private key to the certificate store of the current user. The combination of the private key and the client ID allows the HealthVault platform to identify and authenticate the application instance each time it opens a connection.

Since the private key is located in the user certificate store, the client ID should also be stored on a per-user basis. You should create a new client ID the first time each user runs the application, then store that ID and use it to establish an authenticated connection when the user runs the application again. This application uses a settings file and the C\# **Properties** object to store the client ID in the user's Windows desktop profile.

**Add a settings file to the Visual Studio project**

1.  Right click on the project name in Solution Explorer.
2.  Select **Properties**.
3.  On the **Settings** tab, click the link in the center of the page to create a default settings file.

**Add a user setting for the client application ID**

1.  Select the first row in the **Settings** tab.
2.  Set the **Name** to clientAppId.
3.  Set the **Type** to **System.Guid**.
4.  Leave the **Scope** set to **User**.
5.  Leave the **Value** set to **Guid.Empty** ("00000000-0000-0000-0000-000000000000").

**Add application settings**

The settings file also provides a convenient location to store the configuration values required to locate the HealthVault web services and identify the master SODA application.

The **master application ID** identifies the SODA master application that defines the offline access rules that the client instance will inherit. For the master app ID,

1.  In a new row, set the **Name** to masterAppId.
2.  Set the **Type** to **System.Guid**.
3.  Set the **Scope** to **Application**.
4.  Set the **Value** to the ID of the SODA master application (you can retrieve this from ACC).

-   The **shell URL** is the URL of the HealthVault shell service. For the shell URL, The **platform URL** is the URL of the HealthVault platform service. For the platform URL, **Add a Client ID handler**
-   [Master and Child Applications](https://msdn.microsoft.com/en-US/library/ff803647.aspx)

1.  In a new row, set the **Name** to shellUrl.
2.  Leave the **Type** as **String**.
3.  Set the **Scope** to **Application**.
4.  Set the **Value** to "https://account.healthvault-ppe.com/".

<!-- -->

1.  In a new row, set the **Name** to platformUrl.
2.  Leave the **Type** as **String**.
3.  Set the **Scope** to **Application**.
4.  Set the **Value** to "https://platform.healthvault-ppe.com/platform/".

The application should load the client ID from the user profile. If its value is **Guid.Empty**, it should create a new GUID, store it, and use the new GUID to create the client instance.

Append the following method to Program.cs:

```
      // ----------------------------------------------------------------------
      // Retrieve the client application ID from user.config
      //
      static Guid GetClientID()
{
    // Read the client ID from the user settings file.
    Guid ClientID = Properties.Settings.Default.clientAppId;

    // If the stored value is Guid.Empty, create and store//   a new ID.if (ClientID.CompareTo(Guid.Empty) == 0)
    {
        ClientID = Guid.NewGuid();
        Properties.Settings.Default.clientAppId = ClientID;
        Properties.Settings.Default.Save();
    }

    return ClientID;
}
```

### Create the client application instance

To create a client application instance, you need to provide a master application ID, a client application ID, and URLs for the HealthVault shell and platform services.

If the master and client IDs correspond to an existing application, and the local and remote certificates match, the API returns a connection to the existing client application. If the IDs exist but the certificates do not match, it returns an error.

If the client ID does not exist, the API creates a new certificate and adds it to the user certificate store. It uses the public key and the [CREATEAPPLICATION target](https://msdn.microsoft.com/en-US/library/ff803620.aspx) to create a new client application on the HealthVault platform, then returns a connection to the new application.

To create the client instance, add the following lines to the **Main** method in Program.cs:

```
      // ------------------------------------------------------------------
      // Create application instance with a new client ID, existing master
      //   ID, and URLs for the HealthVault pre-production 
      //   environment (PPE).
      // The values for the master app ID, shell URL, and platform URL are 
      //   specified in the application config file (Settings.settings in 
      //   the Visual Studio Solution Explorer).
      // The value of the client ID is managed by GetClientID(), which 
      //   creates and stores a unique ID in each user's config file.

HealthClientApplication clientApp = HealthClientApplication.Create(
    GetClientID(),
    Properties.Settings.Default.masterAppId,
    new Uri(Properties.Settings.Default.shellUrl),
    new Uri(Properties.Settings.Default.platformUrl)
    );

// Verify the application instance.//   Create a new instance if necessary.if (clientApp.GetApplicationInfo() == null)
{
    // Create a new client instance.      
    clientApp.StartApplicationCreationProcess();

    // A new client instance always requests authorization from the //   current user using the default browser.// Wait for the user to return from the shell.
    Console.WriteLine("Authorizing new application:");
    Console.WriteLine("When authorization is complete, press a key to continue.");
    Console.WriteLine();
    Console.ReadKey(true);
}
```

### Get a list of authorized users

The **ApplicationConnection** property of a new **HealthClientApplication** object provides a preliminary connection to the HealthVault platform service. This connection operates in the context of the client application instance, but does not specify a user context. Without a user context, its functionality is limited: for instance, it cannot be used to query individual user account records. However, it can be used to get a list of HealthVault users who have authorized the client application instance to access their accounts.

The authorized user list identifies the users whose accounts are visible to the client application instance, and whose IDs can be used to establish an authorized connection to the HealthVault platform.

Append the following code to the **Main** method:

```
      // Use an anonymous connection to get a list of HealthVault users who have
      //   authorized this client instance (not the master application) to read 
      //   basic demographic data.

List<PersonInfo> authorizedPeople = new List<PersonInfo>(clientApp.ApplicationConnection.GetAuthorizedPeople());
```

### Verify and authorize

It is possible to create a valid application instance without being authorized to use it. (That is, it is possible to have a non-null **ApplicationInfo** object whose **GetAuthorizedPeople()** method returns an empty list.)

To explicitly request authorization by opening the HealthVault shell in the default browser, call **clientApp.StartUserAuthorizationProcess()**. Then call **GetAuthorizedPeople()** again to refresh the list.

Append the following code to the **Main** method:

```
      // ------------------------------------------------------------------
      // Verify that there is at least one authorized user.
      //   If there isn't, request authorization from the current user 
      //   using the default browser.
      if (authorizedPeople.Count == 0)
{
    // Request authorization.
    clientApp.StartUserAuthorizationProcess();

    // Wait for the user to return from the shell.
    Console.WriteLine("Authorizing existing application:");
    Console.WriteLine("When authorization is complete, press a key to continue.");
    Console.WriteLine();
    Console.ReadKey(true);

    // Refresh the list
    authorizedPeople = new List<PersonInfo>(clientApp.ApplicationConnection.GetAuthorizedPeople());
}
```

### Get an authorized connection to a user account

Unlike an anonymous connection, an authorized connection provides the client application with full access to its authorized data items in the user record. This includes all the data items covered by non-optional offline access rules defined by the master SODA application. Items covered by optional offline access rules are available only if the user has explicitly authorized those rules.

Append the following code to the **Main** method:

```
      foreach (PersonInfo authorizedPerson in authorizedPeople)
{
    // Create an authorized connection for each person on the list.
    HealthClientAuthorizedConnection authConnection = clientApp.CreateAuthorizedConnection(authorizedPerson.PersonId);
}
```

### Read data from a health record

Once the SODA client application has established an authorized connection, the API calls for data access are very similar to those for data access from a Web application. The client needs to connect to a health record, create and configure a data access object (such as a record searcher, below), get a collection of items, and cast them to **HealthRecordItem** objects of the appropriate type.

The following code searches for record items using the **TypeId** of the **Basic** item type, then casts the results to **Basic** and writes their default string representation to the console.

The client search for items matching **Basic.TypeId** will only succeed if the following conditions are met:

-   The SODA master application defines an offline access rule that grants Read access to Basic Demographic Information.
-   The user logged in to the HealthVault shell and authorized the access rule for the current client application instance.
-   The public key specified by the SODA client application matches the private key in the certificate store of the local machine.
-   The user account record actually contains a Basic Demographic Information data item. (Most user accounts do include basic demographic information in the “Self” record associated with the account.)

To read data from the default health record for the user account, add the following code to the **foreach** block in Program.cs:

```
      // Use the authorized connection to read the user's default health record.
HealthRecordAccessor access = new HealthRecordAccessor(authConnection, authConnection.GetPersonInfo().GetSelfRecord().Id);

// Search the health record for basic demographic information.  
HealthRecordSearcher search = access.CreateSearcher();
search.Filters.Add(new HealthRecordFilter(Basic.TypeId));
HealthRecordItemCollection searchResultsGroup = search.GetMatchingItems()[0];

Console.Write(authorizedPerson.Name + ": ");
if (searchResultsGroup.Count > 0)
{
    // Success - write the user name and default basic demographic info //   to the console.
    Basic info = (Basic)searchResultsGroup[0];
    Console.WriteLine(info.ToString());
}
else
    Console.WriteLine("No basic demographic information is available.");
```

### Run the application

To test the sample application:

1.  Press **F5** to launch the application in Visual Studio.
2.  The application will open the HealthVault shell in the default browser.
3.  Log in to the HealthVault shell using a LiveID or OpenID account.
4.  Select the person whose account you wish to authorize and click **Continue**.
5.  Click **Allow Access** to grant access to Basic Demographic Information in the user’s Personal Profile.
6.  Return to the console application window. Press any key to resume the application.
7.  The application will list the names of the users who have authorized the client application to access their accounts, along with a piece of basic demographic information for each user.

Press any key to close the application window.

Sample code
-----------

The following is the complete source code for the sample application, including additional comments and exception handling.

```c#
using System;
using System.Collections.Generic;
using Microsoft.Health;
using Microsoft.Health.ItemTypes;

namespace ConsoleApplication1
{
    class Program
    {
        // ----------------------------------------------------------------------
        // Introductory HealthVault SODA client application
        //
        //   This application demonstrates the minimum functionality of a
        //      HealthVault SODA client.
        //   It uses the .NET API to:
        //
        //      * Connect to the HealthVault platform
        //      * Establish an authorized connection to a user account
        //      * Use offline access rules inherited from a SODA master 
        //          application to read a HealthVault data item from a user 
        //          record
        //
        //   It is intended to be used with the following MSDN document:
        //      "Creating a HealthVault SODA Application"
        //      http://msdn.microsoft.com/en-us/healthvault/ee708278.aspx
        static void Main(string[] args)
        {
            // ------------------------------------------------------------------
            // Create application instance with a new client ID, existing master
            //   ID, and URLs for the HealthVault pre-production 
            //   environment (PPE).
            // The values for the master app ID, shell URL, and platform URL are 
            //   specified in the application config file (Settings.settings in 
            //   the Visual Studio Solution Explorer).
            // The value of the client ID is managed by GetClientID(), which 
            //   creates and stores a unique ID in each user's config file.

            HealthClientApplication clientApp = HealthClientApplication.Create(
                GetClientID(),
                Properties.Settings.Default.masterAppId,
                new Uri(Properties.Settings.Default.shellUrl),
                new Uri(Properties.Settings.Default.platformUrl)
                );

            // Verify the application instance.
            //   Create a new instance if necessary.
            if (clientApp.GetApplicationInfo() == null)
            {
                // Create a new client instance.                  
                clientApp.StartApplicationCreationProcess();

                // A new client instance always requests authorization from the 
                //   current user using the default browser.
                // Wait for the user to return from the shell.
                Console.WriteLine("Authorizing new application:");
                Console.WriteLine("When authorization is complete, press a key to continue.");
                Console.WriteLine();
                Console.ReadKey(true);
            }

            // ------------------------------------------------------------------
            // Use an anonymous connection to get a list of HealthVault users 
            //   that have authorized this client instance (not the master 
            //   application) to read basic demographic data.
            // Anonymous connections provide limited functionality and cannot be 
            //   used to query individual user records.

            List<PersonInfo> authorizedPeople = new List<PersonInfo>(clientApp.ApplicationConnection.GetAuthorizedPeople());

            // ------------------------------------------------------------------
            // Verify that there is at least one authorized user.
            //   If there isn't, request authorization from the current user 
            //   using the default browser.if (authorizedPeople.Count == 0)
            {
                // Request authorization.
                clientApp.StartUserAuthorizationProcess();

                // Wait for the user to return from the shell.
                Console.WriteLine("Authorizing existing application:");
                Console.WriteLine("When authorization is complete, press a key to continue.");
                Console.WriteLine();
                Console.ReadKey(true);

                // Refresh the list
                authorizedPeople = new List<PersonInfo>(clientApp.ApplicationConnection.GetAuthorizedPeople());
            }

            // ------------------------------------------------------------------
            // Create an authorized connection for each person on the list, then 
            //   read and display some basic demographic information for each 
            //   user.
            if (authorizedPeople.Count > 0)
                Console.WriteLine("Authorized users:");
            else
                Console.WriteLine("There are no authorized users available.");            

            foreach (PersonInfo authorizedPerson in authorizedPeople)
            {
                try
                {
                    // Create an authorized connection for each person on the 
                    //   list.
                    HealthClientAuthorizedConnection authConnection = clientApp.CreateAuthorizedConnection(authorizedPerson.PersonId);

                    // Use the authorized connection to read the user's default 
                    //   health record.
                    HealthRecordAccessor access = new HealthRecordAccessor(authConnection, authConnection.GetPersonInfo().GetSelfRecord().Id);

                    // Search the health record for basic demographic 
                    //   information.
                    //   Most user records contain an item of this type.
                    HealthRecordSearcher search = access.CreateSearcher();
                    search.Filters.Add(new HealthRecordFilter(Basic.TypeId));
                    HealthRecordItemCollection searchResultsGroup = search.GetMatchingItems()[0];

                    Console.Write(authorizedPerson.Name + ": ");
                    if (searchResultsGroup.Count > 0)
                    {
                        // Success - write the user name and default basic 
                        //   demographic info to the console.
                        Basic info = (Basic)searchResultsGroup[0];
                        Console.WriteLine(info.ToString());
                    }
                    else
                        Console.WriteLine("No basic demographic information is available.");
                }
                catch (HealthServiceException ex)
                {
                    String msg = String.Empty;

                    if (ex is HealthServiceAccessDeniedException)
                        msg = "The application may be trying to read user data from an anonymous connection.\n";

                    msg += ex.Error.ErrorInfo + "\n" + ex.Message.ToString();
                    Console.WriteLine(msg);
                }
            }

            Console.WriteLine();
            Console.WriteLine("Press any key to close the application.");
            Console.ReadKey(true);
        }

        // ----------------------------------------------------------------------
        // Retrieve the client application ID from user.config//static Guid GetClientID()
        {
            // Read the client ID from the user settings file.
            Guid ClientID = Properties.Settings.Default.clientAppId;

            // If the stored value is Guid.Empty, create and store
            //   a new ID.
            if (ClientID.CompareTo(Guid.Empty) == 0)
            {
                ClientID = Guid.NewGuid();
                Properties.Settings.Default.clientAppId = ClientID;
                Properties.Settings.Default.Save();
            }

            return ClientID;
        }
    }
}
```
