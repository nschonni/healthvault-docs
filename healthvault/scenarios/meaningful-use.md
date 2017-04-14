Meaningful Use
==============

This document provides an overview of the HealthVault capabilities to support Meaningful Use Stage 2 (2014 Edition) objectives.

What is supported
-----------------

HealthVault has EHR modular certification for the following Meaningful Use Stage 2 objectives:

-   View, download, and transmit to a 3 <span class="sup">rd</span> party (inpatient settings)

-   View, download, and transmit to a 3 <span class="sup">rd</span> party (ambulatory settings)

-   Automated numerator recording (inpatient settings)

-   Automated numerator recording (ambulatory settings).

See [HealthVault Meaningful Use](https://www.healthvault.com/us/en/Meaningful-Use) for more information about HealthVault’s certification.

Third-party products that use HealthVault to meet these certification criteria may be able to do so without independently certifying for these objectives. The remainder of the document describes the processes that third-party products can use to satisfy the above Meaningful Use (MU2) objectives using HealthVault.

Process overview
----------------

An outline of using HealthVault for the supported MU2 criteria is as follows:

1.  A third-party product vendor (typically an EHR) chooses the HealthVault connectivity model to use for sending CCDA documents to patients, integrates this into their product, and makes the solution available to their customers.

2.  When a patient visit or discharge is complete at a customer site, the product can send a CCDA document representing this event to the patient in HealthVault according to the workflows of the chosen connectivity model.

3.  The patient is notified that new data is available and is directed to HealthVault to perform a view, download, or transmit (VDT) action.

4.  When it’s time for the provider to determine if MU2 measures were met, the product calls HealthVault to query for reports that assist the provider in calculating the value for the measure. The reports include for example, the list of patients that took action on their data during the reporting period.

Connectivity models for Meaningful Use integration
--------------------------------------------------

Product developers integrating with HealthVault to retrieve Meaningful Use reports must choose a connectivity model to send CCDAs to HealthVault users. A summary of the options is provided next. It's recommended that product developers new to HealthVault learn about the HealthVault connectivity models before continuing. For more information see <a href="/healthvault/concepts/connectivity/connectivity.md" id="PageContent_14102_10">Establishing connectivity with HealthVault users</a>.

### Drop-off pick-up (DOPU) and MU2

Drop-off pick-up (DOPU) provides a simple model for applications to send CCDAs to patients (HealthVault users) for Meaningful Use purposes. When a new CCDA is available, the application sends it to HealthVault and gives the patient a pickup code (for example by including it in an e-mail to the user or on a print-out given to the user). The code can be used to pick-up the information from HealthVault and add it to a HealthVault record. Once the patient picks up the information, HealthVault shows the CCDA to the patient in human-readable format. HealthVault records a “view” for this action and the patient will be included in VDT reports queried by the application for the reporting period.

Product developers should be aware that the DOPU option doesn’t allow reading data from HealthVault. If the integration scenario with HealthVault goes beyond Meaningful Use, consider one of the record authorization based connection models instead (discussed below). Applications can start with the DOPU model, and if the scenarios expand beyond Meaningful Use with HealthVault, they can at that time change to use a record authorization-based model.

See [HealthVault Meaningful Use Reporting Sample](http://code.msdn.microsoft.com/HealthVault-Meaningful-Use-c88846f8) for a code sample demonstrating the process.

### Record authorization-based connection models and MU2

The record authorization-based models require the patient (HealthVault user) to authorize a connection with the application before the application can send CCDA documents to the patient’s HealthVault record. Once the connection is established, the application can add CCDA documents to the record without the need for the patient to take the action to pick up the information as in the DOPU case.

When a CCDA is sent to the patient through an *offline record authorization*, HealthVault will notify the patient with an e-mail that there’s new data available in HealthVault. The e-mail includes a link to the data and upon clicking the link and signing in, the CCDA document is displayed to the patient. HealthVault records a “view” for this action and the patient will be included in VDT reports queried by the application for the reporting period.

The record-authorization based approach allows reading data from HealthVault records in addition to writing data. If the application’s scenarios with HealthVault will go beyond Meaningful Use integration and require reading data from patients’ health records, consider this approach.

The primary models used to establish a record authorization for the purposes of Meaningful Use, are through a website and using the Patient Connect model.

See [HealthVault Meaningful Use Reporting Sample](http://code.msdn.microsoft.com/HealthVault-Meaningful-Use-c88846f8) for a code sample demonstrating the process.

### Direct Messaging

HealthVault supports the Direct Messaging protocols and gives each HealthVault user a Direct messaging inbox and address to send and receive messages. Products with Direct Messaging capabilities can use this as a model for sending CCDAs to patients for the purposes of Meaningful Use VDT criteria.

See <a href="/healthvault/concepts/connectivity/direct-messaging.md" id="PageContent_14102_2">Direct Messaging</a> for more information on setting up Direct messaging with HealthVault and sending health information to patients.

There are two integration methods for sending Direct messages with CCDA attachments to patients.

If the HealthVault Direct address for the recipient patient is known (for example if the patient has already created a HealthVault account), the sender attaches a CCDA to the Direct message and sends it to this HealthVault Direct address. When HealthVault receives it, the recipient is notified with an e-mail message sent to their regular contact e-mail address, informing them that a new Direct message is available for viewing in HealthVault. This e-mail contains a link to HealthVault that once visited, allows viewing the message and CCDA attachments. HealthVault records a “view” for this action and the patient will be included in VDT reports that the data source organization can retrieve.

If the HealthVault Direct address for the recipient patient is not known, or if the sending organization does not want to store patients’ HealthVault Direct addresses, it can use the *newuser* method of sending the message with the CCDA attachment. When using this method, HealthVault will also notify the patient at their regular e-mail address that new data is waiting to be picked up in HealthVault. When the user visits HealthVault to pick up the information, first, the user can sign-up for a new account or sign-in to an existing account. Subsequently, HealthVault asks the user to answer a question that was established between the user and organization at the time of the encounter. After answering the question, HealthVault adds the message and CCDA to the user’s HealthVault record and displays the CCDA to the user. HealthVault records a “view” for this action and the patient will be included in VDT reports that the data source organization can retrieve.

Applications that use Direct Messaging integration to send CCDAs to HealthVault for Meaningful Use purposes, must register an application in the [Application Configuration Center](https://config.healthvault-ppe.com/), enable Meaningful Use on the *Methods* tab, and associate their sending Direct Messaging domain with the application ID on the *Meaningful Use* tab. When the application is ready to be configured in the HealthVault production environment, contact <hvbd@microsoft.com> to start the process.

Deployment models
-----------------

Developers deploying their solutions to multiple customer sites might consider the HealthVault [master-child](/healthvault/concepts/advanced/master-and-child-applications.md) model for deploying their applications.

­Key CCDA fields for Meaningful Use integration
-----------------------------------------------

Certain fields from CCDA documents received by HealthVault from Meaningful Use-enabled applications are used for the purpose of generating and querying HealthVault Meaningful Use reports. Specifically, the Patient ID field within a CCDA is returned in the reports from HealthVault, and the event date (discharge or visit date) is used to facilitate querying for the reports.

The following table lists the XPath locations of these fields within CCDA documents.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Field</p></th>
<th><p>CCDA XPath</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Patient ID</p></td>
<td><p>/ClinicalDocument/recordTarget/patientRole/id[1]/@*</p>
<p>Both the extension and root attributes are extracted and returned in reports</p></td>
</tr>
<tr class="even">
<td><p>Visit date (ambulatory settings)</p></td>
<td><p>/ClinicalDocument/documentationOf/serviceEvent[@classCode='PCPR']/effectiveTime&quot;</p></td>
</tr>
<tr class="odd">
<td><p>Discharge date (inpatient settings)</p></td>
<td><p>/ClinicalDocument/componentOf/encompassingEncounter/effectiveTime</p></td>
</tr>
</tbody>
</table>

Overriding CCDA fields
----------------------

In some cases, the data source may wish to override the patient ID or event date (discharge or visit date) before sending the CCDA to HealthVault. This may be useful for example, when needing to specify a patient identifier from a source system that’s different than the one that generated the CCDA document, or needing to specify a visit or discharge date when a source system does not include this data within the CCDA content itself.

When overriding these fields, HealthVault does not modify the underlying CCDA document. The overriding fields are used to get the reports and in the reports themselves, but the original CCDA document is not modified.

### Thing extensions

When using DOPU, or a record authorization-based approach to send CCDA documents to HealthVault, applications use *thing extensions* to specify the overriding fields.

The following lists the thing extension fields used to override the patient ID and event date.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Extension Description</p></th>
<th><p>Field name</p></th>
<th><p>Example</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>The MU2 thing extension source</p></td>
<td><p>hv-meaningfuluse</p></td>
<td><span style="FONT-SIZE: 0.75em; LINE-HEIGHT: 1.5">&lt;extension source=&quot;hv-meaningfuluse&quot;&gt;...&lt;/extension&gt;</span></td>
</tr>
<tr class="even">
<td><p>The event date override extension</p></td>
<td><p>event-date</p></td>
<td><span style="FONT-SIZE: 0.75em; LINE-HEIGHT: 1.5">&lt;event-date&gt;2013-09-10T18:12:54Z&lt;/event-date&gt;</span></td>
</tr>
<tr class="odd">
<td><p>The patient ID override  extension</p></td>
<td><p>patient-id</p></td>
<td><span style="FONT-SIZE: 0.75em; LINE-HEIGHT: 1.5">&lt;patient-id&gt;TestPatientId&lt;/patient-id&gt;</span></td>
</tr>
</tbody>
</table>

Putting this together in an example, the following is an XML snippet of a CCDA document along with the thing extension overrides.

HealthVault CCDA thing with extension overrides

```xml
<info>
  <thing>
    <type-id>9c48a2b8-952c-4f5a-935d-f3292326bf54</type-id>
    <data-xml>
      <ClinicalDocument
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xmlns="urn:hl7-org:v3"
          xmlns:cda="urn:hl7-org:v3"
           xmlns:sdtc="urn:hl7-org:sdtc">
       ......
       </ClinicalDocument>
       <common>
         <extension source="hv-meaningfuluse">
           <event-date>2013-09-10T18:12:54Z</event-date>
           <patient-id>TestPatientId</patient-id>
         </extension>
       </common>
     </data-xml>
   </thing>
 </info> 
 ```
The following is a code sample demonstrating how to specify the event date and patient id thing extension overrides in the HealthVault .NET SDK:

```cs
HealthRecordItem ccda = new HealthRecordItem(
        new Guid("9c48a2b8-952c-4f5a-935d-f3292326bf54"),
         ccdaDocumentData);
     StringBuilder stringBuilder = new StringBuilder(150);
     string extSource = "hv-meaningfuluse";
     using (XmlWriter writer = XmlWriter.Create(stringBuilder, new XmlWriterSettings() { OmitXmlDeclaration=true }))
     {    
         writer.WriteStartElement("extension");
         writer.WriteAttributeString("source", extSource);
         writer.WriteElementString("event-date", "2013-10-30T18:12:54Z");
         writer.WriteElementString("patient-id", "12345678");    
         writer.WriteEndElement();
     }
     HealthRecordItemExtension ext = new HealthRecordItemExtension(extSource);
     ext.ExtensionData.CreateNavigator().InnerXml = stringBuilder.ToString(); 
     ccda.CommonData.Extensions.Add(ext);
```
See <a href="extending-data-types.md" id="PageContent_14102_3">Extending data types</a> for more information on specifying thing extensions.

In the HealthVault .NET SDK, the [HealthRecordItemExtension](/healthvault/sdks/dotnet/microsoft.health.healthrecorditemextension.aspx) class is used to specify extensions.

The [HealthVault Meaningful Use Reporting Sample](https://github.com/Microsoft/healthvault-samples/tree/master/dotNET/HealthVault%20Meaningful%20Use%20Reporting) also demonstrates overriding the patient ID and event date in .NET.

### Direct Message Headers

When the data source uses Direct Messaging to send CCDA documents to HealthVault, HealthVault allows the sender to include message headers in the Direct message for overriding the patient ID and event date. The following lists these Direct message headers:

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Description</p></th>
<th><p>Header name</p></th>
<th><p>Example</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>The event date override message header</p></td>
<td><p>X-HV-MU-EventDate</p></td>
<td><p>X-HV-MU-EventDate : 2013-10-30T18:12:54Z</p></td>
</tr>
<tr class="even">
<td><p>The patient ID override message header</p></td>
<td><p>X-HV-MU-PatientID</p></td>
<td><p>X-HV-MU-PatientID : 12345678</p></td>
</tr>
</tbody>
</table>

The View, Download, Transmit (VDT) report
-----------------------------------------

The View, Download, and Transmit (VDT) report gives applications information to determine if they meet the Meaningful Use Stage 2 measure for patients taking action on their health information.

For ambulatory settings, the measure states "More than 5 percent of all unique patients seen by the EP during the EHR reporting period (or their authorized representatives) view, download or transmit to a third party their health information".

For inpatient settings, the measure states "More than 5 percent of all patients who are discharged from the Inpatient or emergency department (POS 21 or 23) of an eligible hospital or CAH (or their authorized representative) view, download or transmit to a third party their information during the EHR reporting period."

For more information regarding this measure see "View, download, and transmit to a 3rd party" in the [Meaningful Use Stage 2 Reference Grid](http://www.healthit.gov/policy-researchers-implementers/meaningful-use-stage-2).

HealthVault returns an entry in the VDT report that includes each patient to which the data source has sent a CCDA document where the patient has viewed, downloaded, or transmitted to a 3rd party health information from his health record. The entries in the report are filtered such that only those CCDAs having an event date (which is the visit date for ambulatory settings, and the discharge date for inpatient settings) within the specified reporting period date filter, will lead to the patient receiving the CCDA being included in the report. The application can use the patient identifiers in the report to help calculate the percentage value of the measure. Specifically, the patient IDs in the report, which represent the patients that took a view, download, or transmit action, can be used to determine the numerator for the measure.

Note that HealthVault does not know the full list of patients seen by the provider. To calculate the percentage for this measure, the application must take into account the denominator which is based on the total number of unique patients seen or discharged within the reporting period.

The following table lists the parameters used to query for the VDT report.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Parameter</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Reporting period min date</p></td>
<td><p>Specifies the minimum event date (which is the visit date for ambulatory settings, and the discharge date for inpatient settings) used to filter the results of the report.</p>
<p>The event date for a particular CCDA document is extracted from the CCDA, or is overridden when sending the CCDA to HealthVault. See <a href="#_Key_CCDA_fields">Key CCDA fields for Meaningful Use integration</a> for more information.</p></td>
</tr>
<tr class="even">
<td><p>Reporting period max date</p></td>
<td><p>Specifies the maximum event date (which is the visit date for ambulatory settings, and the discharge date for inpatient settings) used to filter the results of the report.</p>
<p>The event date for a particular CCDA document is extracted from the CCDA, or is overridden when sending the CCDA to HealthVault. See <a href="#_Key_CCDA_fields">Key CCDA fields for Meaningful Use integration</a> for more information.</p></td>
</tr>
</tbody>
</table>

The following table lists the fields returned for each patient matching the criteria described above.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Parameter</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Patient ID</p></td>
<td><p>The patient ID that is either extracted from the CCDA or overridden in the CCDA document that was sent to HealthVault. This represents a patient that performed a view, download, or transmit action within the queried reporting period.</p></td>
</tr>
<tr class="even">
<td><p>Organization ID</p></td>
<td><p>The ID of the organization (from the patient ID node) extracted from the CCDA document that was sent to HealthVault.</p></td>
</tr>
<tr class="odd">
<td><p>Source</p></td>
<td><p>The data source for the CCDA document. This is either the HealthVault application ID that sent the CCDA, or the Direct Messaging domain that sent the CCDA.</p></td>
</tr>
</tbody>
</table>

The HealthVault method used to retrieve the VDT report is *GetMeaningfulUseVDTReport*.

The following is an XML snippet of a request to HealthVault for the VDT report.

```xml
<info>
  <filters>
    <reporting-period>
      <min-date>2013-09-11T18:50:49.1216167Z</min-date>
      <max-date>2013-09-15T18:50:49.1216167Z</max-date>
    </reporting-period>
  </filters>
</info> 
```
The following is an XML snippet of the response from HealthVault with the VDT report.

```xml
<wc:info xmlns:wc="urn:com.microsoft.wc.methods.response.GetMeaningfulUseVDTReport">
  <sources>
    <source id="AppId">
      <patient-activities>
        <activity patient-id="X" />
        ....
      </patient-activities>
    </source>
  </sources>
</wc:info> 
```
A code snippet demonstrating how to retrieve the report when using the HealthVault .NET SDK follows.

```cs 
DateRange dateFilter = new DateRange(DateTime.UtcNow.AddMonths(-1), DateTime.UtcNow);
IEnumerable<PatientActivity> resultActivities = appConnection.GetMeaningfulUseVDTReport(dateFilter);
```
Refer to <span class="nolink">GetMeaningfulUseVDTReport</span> in the .NET SDK.

### See also

-   <a href="https://www.healthvault.com/us/en/Meaningful-Use" id="RightRailLinkListSection_14102_9">HealthVault MU2 certification</a>

