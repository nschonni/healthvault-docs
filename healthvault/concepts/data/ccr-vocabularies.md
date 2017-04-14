HealthVault CCR Vocabularies
============================

The following tables describe the data labels that are recognized by the transforms that convert CCR data into HealthVault types and back.

**Concept**   
The label used internally to identify the data element.

**Import Text**   
Labels that are recognized as equivalents when the data element is converted from an external source.

**Export Text**   
The label that is applied to the data element when an internal HealthVault representation is used to create a new record.

### General

<table>
<thead>
<tr class="header">
<th>Concept</th>
<th>Export Text</th>
<th>Import Text</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>healthcare-system</td>
<td>Healthcare Information System</td>
<td>healthcare information system</td>
</tr>
<tr class="even">
<td>patient</td>
<td>Patient</td>
<td>patient</td>
</tr>
<tr class="odd">
<td>priority-primary</td>
<td>Primary</td>
<td>primary<br />
preferred<br />
primary - preferred<br />
1</td>
</tr>
<tr class="even">
<td>priority-secondary</td>
<td>Secondary</td>
<td>secondary<br />
2</td>
</tr>
</tbody>
</table>

### Measurements

<table>
<thead>
<tr class="header">
<th>Concept</th>
<th>Export Text</th>
<th>Import Text</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>inches</td>
<td>in</td>
<td>in<br />
inch<br />
inches</td>
</tr>
<tr class="even">
<td>feet</td>
<td>ft</td>
<td>ft<br />
feet</td>
</tr>
<tr class="odd">
<td>meters</td>
<td>m</td>
<td>m<br />
meter<br />
meters</td>
</tr>
<tr class="even">
<td>centimeters</td>
<td>cm</td>
<td>cm<br />
centimeters</td>
</tr>
<tr class="odd">
<td>pounds</td>
<td>lbs</td>
<td>lbs<br />
lb<br />
pounds</td>
</tr>
<tr class="even">
<td>ounces</td>
<td>oz</td>
<td>oz<br />
ounce<br />
ounces</td>
</tr>
<tr class="odd">
<td>kilos</td>
<td>kg</td>
<td>kg<br />
kgs<br />
kilos</td>
</tr>
<tr class="even">
<td>grams</td>
<td>gm</td>
<td>gm<br />
gram<br />
grams</td>
</tr>
<tr class="odd">
<td>molarity</td>
<td>mmol/L</td>
<td>mmol/L</td>
</tr>
<tr class="even">
<td>concentration</td>
<td>mg/dL</td>
<td>mg/dL</td>
</tr>
<tr class="odd">
<td>liters</td>
<td>l</td>
<td>l<br />
liter<br />
liters</td>
</tr>
<tr class="even">
<td>liters-per-second</td>
<td>l/s</td>
<td>l/s</td>
</tr>
<tr class="odd">
<td>meters-per-second</td>
<td>m/s</td>
<td>m/s</td>
</tr>
<tr class="even">
<td>minutes</td>
<td>min</td>
<td>min<br />
m<br />
minute<br />
minutes</td>
</tr>
<tr class="odd">
<td>seconds</td>
<td>s</td>
<td>s<br />
sec<br />
second<br />
seconds</td>
</tr>
<tr class="even">
<td>hours</td>
<td>h</td>
<td>h<br />
hr<br />
hour<br />
hours</td>
</tr>
</tbody>
</table>

### Payer

<table>
<thead>
<tr class="header">
<th>Concept</th>
<th>Export Text</th>
<th>Import Text</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>payer-benefit-start-date</td>
<td>Benefit Start date</td>
<td>benefit start date<br />
start date<br />
effective date</td>
</tr>
<tr class="even">
<td>payer-benefit-stop-date</td>
<td>Benefit Stop date</td>
<td>benefit stop date<br />
termination date<br />
expiration date<br />
stop date<br />
end date</td>
</tr>
<tr class="odd">
<td>payer-primary-health-insurace</td>
<td>Primary Health Insurance</td>
<td>primary health insurance</td>
</tr>
<tr class="even">
<td>payer-plan-code</td>
<td>Plan code</td>
<td>plan code<br />
plan id<br />
plan number</td>
</tr>
<tr class="odd">
<td>payer-group-number</td>
<td>Group number</td>
<td>group number<br />
group code<br />
group id</td>
</tr>
<tr class="even">
<td>payer-subscriber-number</td>
<td>Subscriber number</td>
<td>subscriber number<br />
subscriber id<br />
subscriber code</td>
</tr>
<tr class="odd">
<td>payer-carrier-id</td>
<td>Carrier ID</td>
<td>carrier id<br />
carrier number<br />
carrier code</td>
</tr>
</tbody>
</table>

### Advance Directives

<table>
<thead>
<tr class="header">
<th>Concept</th>
<th>Export Text</th>
<th>Import Text</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>directive-start-date</td>
<td>Start date</td>
<td>start date</td>
</tr>
<tr class="even">
<td>directive-end-date</td>
<td>End date</td>
<td>end date</td>
</tr>
<tr class="odd">
<td>directive-treatment-physician</td>
<td>Treating physician</td>
<td>treating physician<br />
treating clinician<br />
treatment provider<br />
attending<br />
attending provider<br />
attending physician<br />
attending clinician</td>
</tr>
<tr class="even">
<td>directive-verified-treating-physician</td>
<td>Verified With Treating Physician</td>
<td>verified with treating physician</td>
</tr>
</tbody>
</table>

### Problem

<table>
<thead>
<tr class="header">
<th>Concept</th>
<th>Export Text</th>
<th>Import Text</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>problem-onset-date</td>
<td>Onset date</td>
<td>onset date<br />
date of onset<br />
start date<br />
begin date<br />
since age<br />
from age<br />
onset<br />
from date<br />
started</td>
</tr>
<tr class="even">
<td>problem-end-date</td>
<td>End date</td>
<td>end date<br />
stop date<br />
ended<br />
to date</td>
</tr>
</tbody>
</table>

### Alerts

<table>
<thead>
<tr class="header">
<th>Concept</th>
<th>Export Text</th>
<th>Import Text</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>allergy</td>
<td>Allergy</td>
<td>allergy<br />
adverse reaction</td>
</tr>
<tr class="even">
<td>allergy-start-date</td>
<td>Start date</td>
<td>start date<br />
onset date<br />
date of onset<br />
since age<br />
onset<br />
from date<br />
initial occurrence</td>
</tr>
</tbody>
</table>

### Medication

<table>
<thead>
<tr class="header">
<th>Concept</th>
<th>Export Text</th>
<th>Import Text</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>medication-start-date</td>
<td>Start date</td>
<td>start date<br />
administration date<br />
since age<br />
from age<br />
from date<br />
begin date<br />
started</td>
</tr>
<tr class="even">
<td>medication-stop-date</td>
<td>Stop date</td>
<td>stop date<br />
end date<br />
to date<br />
stopped</td>
</tr>
<tr class="odd">
<td>medication-prescription-date</td>
<td>Prescription date</td>
<td>prescription date<br />
prescribed date<br />
date prescribed<br />
prescribed</td>
</tr>
<tr class="even">
<td>medication-prescribing-provider</td>
<td>Prescribing provider</td>
<td>prescribing provider<br />
prescribing physician<br />
prescribing clinician<br />
prescriber</td>
</tr>
</tbody>
</table>

### Immunization

<table>
<thead>
<tr class="header">
<th>Concept</th>
<th>Export Text</th>
<th>Import Text</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>immunization-date</td>
<td>Immunization date</td>
<td>immunization date<br />
administration date<br />
administered</td>
</tr>
<tr class="even">
<td>immunization-lot-number</td>
<td>Immunization lot number</td>
<td>immunization lot number<br />
lot number<br />
lot</td>
</tr>
</tbody>
</table>

### Vital Signs

<table>
<thead>
<tr class="header">
<th>Concept</th>
<th>Export Text</th>
<th>Import Text</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>blood-glucose</td>
<td>Blood Glucose</td>
<td>blood glucose<br />
blood glucose (before breakfast)<br />
blood glucose (before lunch)<br />
blood glucose (before supper)<br />
blood glucose (before dinner)<br />
blood glucose (bedtime)<br />
blood glucose (night)</td>
</tr>
<tr class="even">
<td>blood-pressure</td>
<td>Blood Pressure</td>
<td>blood pressure</td>
</tr>
<tr class="odd">
<td>blood-pressure-systolic</td>
<td>Systolic Blood Pressure</td>
<td>systolic<br />
systolic blood pressure<br />
bp (systolic)<br />
systolic bp-sitting<br />
systolic bp sitting<br />
systolic bp<br />
bp sys</td>
</tr>
<tr class="even">
<td>blood-pressure-diastolic</td>
<td>Diastolic Blood Pressure</td>
<td>diastolic<br />
diastolic blood pressure<br />
bp (diastolic)<br />
diastolic bp-sitting<br />
diastolic bp sitting<br />
bp dias</td>
</tr>
<tr class="odd">
<td>blood-pressure-pulse</td>
<td>Pulse Rate</td>
<td>pulse rate<br />
pulse-rate<br />
pulse<br />
pul rate</td>
</tr>
<tr class="even">
<td>cholesterol</td>
<td>Cholesterol</td>
<td>cholesterol</td>
</tr>
<tr class="odd">
<td>cholesterol-ldl</td>
<td>LDL Cholesterol</td>
<td>ldl cholesterol<br />
ldl<br />
cholesterol ldl</td>
</tr>
<tr class="even">
<td>cholesterol-hdl</td>
<td>HDL Cholesterol</td>
<td>hdl cholesterol<br />
hdl<br />
cholesterol hdl</td>
</tr>
<tr class="odd">
<td>cholesterol-total</td>
<td>Total Cholesterol</td>
<td>total cholesterol<br />
cholesterol total<br />
total</td>
</tr>
<tr class="even">
<td>cholesterol-triglycerides</td>
<td>Triglycerides</td>
<td>triglycerides<br />
triglyceride<br />
trig</td>
</tr>
<tr class="odd">
<td>height</td>
<td>Height</td>
<td>height<br />
hgt</td>
</tr>
<tr class="even">
<td>weight</td>
<td>Weight</td>
<td>weight<br />
wgt</td>
</tr>
<tr class="odd">
<td>blood-oxygen-saturation</td>
<td>Blood oxygen saturation</td>
<td>blood oxygen saturation</td>
</tr>
<tr class="even">
<td>spirometer</td>
<td>Spirometer Reading</td>
<td>spirometer reading</td>
</tr>
<tr class="odd">
<td>pef</td>
<td>Peak Expiratory Flow Rate (PEFR)</td>
<td>pef<br />
pefr<br />
peak expiratory flow rate (pef)<br />
peak expiratory flow rate (pefr)</td>
</tr>
<tr class="even">
<td>fev1</td>
<td>Forced Expiratory Volume in One Second (FEV1)</td>
<td>fev1<br />
forced expiratory volume in one second (fev1)</td>
</tr>
<tr class="odd">
<td>fev6</td>
<td>Forced Expiratory Volume in Six Seconds (FEV6)</td>
<td>fev6<br />
forced expiratory volume in six seconds (fev6)</td>
</tr>
<tr class="even">
<td>exercise-distance</td>
<td>Exercise distance</td>
<td>exercise distance</td>
</tr>
<tr class="odd">
<td>exercise-duration</td>
<td>Exercise duration</td>
<td>exercise duration</td>
</tr>
<tr class="even">
<td>exercise-details</td>
<td>Exercise details</td>
<td>exercise details</td>
</tr>
</tbody>
</table>

### Results

<table>
<thead>
<tr class="header">
<th>Concept</th>
<th>Export Text</th>
<th>Import Text</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>result-collection-date</td>
<td>Collection start date</td>
<td>collection start date<br />
collection date time<br />
collection time<br />
measurement start date<br />
measurement time<br />
assessment time<br />
performed</td>
</tr>
<tr class="even">
<td>result-ordering-provider</td>
<td>Ordering provider</td>
<td>ordering provider<br />
ordering physician<br />
ordering clinician<br />
ordered by</td>
</tr>
<tr class="odd">
<td>radiology-lab-results</td>
<td>Radiology results</td>
<td>imaging - x-ray<br />
ultrasound<br />
ct<br />
mri<br />
angiography<br />
cardiac echo<br />
nuclear medicine<br />
radiology results</td>
</tr>
<tr class="even">
<td>result-discharge-summary</td>
<td>Discharge summary</td>
<td>discharge summary</td>
</tr>
<tr class="odd">
<td>discharge-summary-create-date</td>
<td>Created</td>
<td>clinical report creation date<br />
transcribed<br />
created<br />
creation date</td>
</tr>
<tr class="even">
<td>discharge-summary-comment</td>
<td>Discharge summary</td>
<td>discharge summary<br />
clinical report</td>
</tr>
<tr class="odd">
<td>discharge-summary-primary-provider</td>
<td>Primary provider</td>
<td>primary provider</td>
</tr>
<tr class="even">
<td>discharge-summary-secondary-provider</td>
<td>Secondary provider</td>
<td>secondary provider</td>
</tr>
<tr class="odd">
<td>discharge-summary-principal-procedure-physician</td>
<td>Principal procedure physician</td>
<td>principal procedure physician</td>
</tr>
<tr class="even">
<td>discharge-summary-primary-endorsement</td>
<td>Primary provider endorsement</td>
<td>primary provider endorsement</td>
</tr>
<tr class="odd">
<td>discharge-summary-secondary-endorsement</td>
<td>Secondary provider endorsement</td>
<td>secondary provider endorsement</td>
</tr>
<tr class="even">
<td>discharge-summary-discharge-date</td>
<td>Discharge date</td>
<td>discharge date</td>
</tr>
</tbody>
</table>

### Procedure

<table>
<thead>
<tr class="header">
<th>Concept</th>
<th>Export Text</th>
<th>Import Text</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>procedure-date</td>
<td>Performed</td>
<td>performed<br />
start date<br />
procedure date<br />
occurred<br />
service date</td>
</tr>
<tr class="even">
<td>procedure-primary-provider</td>
<td>Treating clinician</td>
<td>treating physician<br />
treating clinician<br />
treatment provider<br />
primary care provider<br />
primary care physician<br />
primary care clinician<br />
administered by<br />
performed by</td>
</tr>
<tr class="odd">
<td>procedure-secondary-provider</td>
<td>Secondary care provider</td>
<td>secondary care provider<br />
secondary care physician<br />
secondary care clinician</td>
</tr>
</tbody>
</table>

### Encounter

<table>
<thead>
<tr class="header">
<th>Concept</th>
<th>Export Text</th>
<th>Import Text</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>encounter-date</td>
<td>Encounter date</td>
<td>encounter date<br />
occurred</td>
</tr>
<tr class="even">
<td>encounter-pending</td>
<td>Pending</td>
<td>pending<br />
scheduled</td>
</tr>
<tr class="odd">
<td>appointment-date</td>
<td>Appointment date</td>
<td>appointment date<br />
encounter date<br />
scheduled date</td>
</tr>
</tbody>
</table>


