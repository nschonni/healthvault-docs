---
uid: HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195
title: Continuity of Care Record (CCR)
---

# Continuity of Care Record (CCR)

## Overview

Property|Value
---|---
id|1e1ccbfc-a55d-4d91-8940-fa2fbf73c195
name|Continuity of Care Record (CCR)
immutable|True
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## Details

<a name='ContinuityOfCareRecord'></a>

### Root element: ContinuityOfCareRecord

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
CCRDocumentObjectID|string|1|1||
Language|[CodedDescriptionType](#CodedDescriptionType)|1|1||
Version|string|1|1||
DateTime|[DateTimeType](#DateTimeType)|1|1||
Patient|[Patient](#Patient)|1|2||
From|[From](#From)|1|1||
To|[To](#To)|0|1||
Purpose|[PurposeType](#PurposeType)|0|unbounded||
Body|[Body](#Body)|1|1||
Actors|[Actors](#Actors)|1|1||
References|[References](#References)|0|1||
Comments|[Comments](#Comments)|0|1||
Signatures|[Signatures](#Signatures)|0|1||

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Patient'></a>
>
> ### Patient
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> ActorID|string|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='From'></a>
>
> ### From
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> ActorLink|[ActorReferenceType](#ActorReferenceType)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='To'></a>
>
> ### To
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> ActorLink|[ActorReferenceType](#ActorReferenceType)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Body'></a>
>
> ### Body
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Payers|[Payers](#Payers)|0|1||
> AdvanceDirectives|[AdvanceDirectives](#AdvanceDirectives)|0|1||
> Support|[Support](#Support)|0|1||
> FunctionalStatus|[FunctionalStatus](#FunctionalStatus)|0|1||
> Problems|[Problems](#Problems)|0|1||
> FamilyHistory|[FamilyHistory](#FamilyHistory)|0|1||
> SocialHistory|[SocialHistory](#SocialHistory)|0|1||
> Alerts|[Alerts](#Alerts)|0|1||
> Medications|[Medications](#Medications)|0|1||
> MedicalEquipment|[MedicalEquipment](#MedicalEquipment)|0|1||
> Immunizations|[Immunizations](#Immunizations)|0|1||
> VitalSigns|[VitalSigns](#VitalSigns)|0|1||
> Results|[Results](#Results)|0|1||
> Procedures|[Procedures](#Procedures)|0|1||
> Encounters|[Encounters](#Encounters)|0|1||
> PlanOfCare|[PlanOfCare](#PlanOfCare)|0|1||
> HealthCareProviders|[HealthCareProviders](#HealthCareProviders)|0|1||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Payers'></a>
> >
> > ### Payers
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Payer|[InsuranceType](#InsuranceType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='AdvanceDirectives'></a>
> >
> > ### AdvanceDirectives
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > AdvanceDirective|[CCRCodedDataObjectType](#CCRCodedDataObjectType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Support'></a>
> >
> > ### Support
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > SupportProvider|[ActorReferenceType](#ActorReferenceType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='FunctionalStatus'></a>
> >
> > ### FunctionalStatus
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Function|[FunctionType](#FunctionType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Problems'></a>
> >
> > ### Problems
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Problem|[ProblemType](#ProblemType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='FamilyHistory'></a>
> >
> > ### FamilyHistory
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > FamilyProblemHistory|[FamilyHistoryType](#FamilyHistoryType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='SocialHistory'></a>
> >
> > ### SocialHistory
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > SocialHistoryElement|[SocialHistoryType](#SocialHistoryType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Alerts'></a>
> >
> > ### Alerts
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Alert|[AlertType](#AlertType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Medications'></a>
> >
> > ### Medications
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Medication|[StructuredProductType](#StructuredProductType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='MedicalEquipment'></a>
> >
> > ### MedicalEquipment
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Equipment|[StructuredProductType](#StructuredProductType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Immunizations'></a>
> >
> > ### Immunizations
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Immunization|[StructuredProductType](#StructuredProductType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='VitalSigns'></a>
> >
> > ### VitalSigns
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Result|[ResultType](#ResultType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Results'></a>
> >
> > ### Results
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Result|[ResultType](#ResultType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Procedures'></a>
> >
> > ### Procedures
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Procedure|[ProcedureType](#ProcedureType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Encounters'></a>
> >
> > ### Encounters
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Encounter|[EncounterType](#EncounterType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='PlanOfCare'></a>
> >
> > ### PlanOfCare
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Plan|[PlanType](#PlanType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='HealthCareProviders'></a>
> >
> > ### HealthCareProviders
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Provider|[ActorReferenceType](#ActorReferenceType)|1|unbounded||
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Actors'></a>
>
> ### Actors
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Actor|[ActorType](#ActorType)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='References'></a>
>
> ### References
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Reference|[ReferenceType](#ReferenceType)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Comments'></a>
>
> ### Comments
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Comment|[CommentType](#CommentType)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Signatures'></a>
>
> ### Signatures
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> CCRSignature|[SignatureType](#SignatureType)|1|unbounded||
>
>

<a name='Actor'></a>

### Root element: Actor
 Type: ActorReferenceType
<a name='InternalCCRLink'></a>

### Root element: InternalCCRLink

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
LinkID|string|1|1||
LinkRelationship|string|0|unbounded||
Source|[Source](#Source)|0|1||

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Source'></a>
>
> ### Source
>
> ### Extension
>
> Base type: [SourceType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#SourceType)
>
>

<a name='Age'></a>

### Root element: Age
 Type: MeasureType
<a name='Description'></a>

### Root element: Description
 Type: CodedDescriptionType
<a name='Direction'></a>

### Root element: Direction

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
xs:element||0|1||
DoseIndicator|[CodedDescriptionType](#CodedDescriptionType)|0|1||
DeliveryMethod|[CodedDescriptionType](#CodedDescriptionType)|0|1||
Dose|[Dose](#Dose)|0|unbounded||
DoseCalculation|[DoseCalculation](#DoseCalculation)|0|unbounded||
Vehicle|[VehicleType](#VehicleType)|0|unbounded||
Route|[Route](#Route)|0|unbounded||
Site|[SiteType](#SiteType)|0|unbounded||
AdministrationTiming|[AdministrationTiming](#AdministrationTiming)|0|unbounded||
Frequency|[FrequencyType](#FrequencyType)|0|unbounded||
Interval|[IntervalType](#IntervalType)|0|unbounded||
Duration|[DurationType](#DurationType)|0|unbounded||
DoseRestriction|[DoseRestriction](#DoseRestriction)|0|unbounded||
Indication|[IndicationType](#IndicationType)|0|unbounded||
StopIndicator|[CodedDescriptionType](#CodedDescriptionType)|0|1||
DirectionSequencePosition|integer|0|1||
MultipleDirectionModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Dose'></a>
>
> ### Dose
>
> ### Extension
>
> Base type: [MeasureType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#MeasureType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Rate|[RateType](#RateType)|0|unbounded||
> DoseSequencePosition|integer|0|1||
> VariableDoseModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DoseCalculation'></a>
>
> ### DoseCalculation
>
> ### Extension
>
> Base type: [DoseCalculationType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#DoseCalculationType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Rate|[RateType](#RateType)|0|unbounded||
> CalculationSequencePosition|[CalculationSequencePosition](#CalculationSequencePosition)|0|1||
> VariableCalculationModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='CalculationSequencePosition'></a>
> >
> > ### CalculationSequencePosition
> >
> > ### Restriction
> >
> > Base type: integer
> >
> > #### Restriction facets
> >
> > Restriction type|Value|Summary|Remarks
> > ---|---|---|---
> > minInclusive|1||
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Route'></a>
>
> ### Route
>
> ### Extension
>
> Base type: [CodedDescriptionType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CodedDescriptionType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> RouteSequencePosition|integer|0|1||
> MultipleRouteModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AdministrationTiming'></a>
>
> ### AdministrationTiming
>
> ### Extension
>
> Base type: [DateTimeType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#DateTimeType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> TimingSequencePosition|[TimingSequencePosition](#TimingSequencePosition)|0|1||
> VariableTimingModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='TimingSequencePosition'></a>
> >
> > ### TimingSequencePosition
> >
> > ### Restriction
> >
> > Base type: integer
> >
> > #### Restriction facets
> >
> > Restriction type|Value|Summary|Remarks
> > ---|---|---|---
> > minInclusive|1||
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DoseRestriction'></a>
>
> ### DoseRestriction
>
> ### Extension
>
> Base type: [DoseCalculationType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#DoseCalculationType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Rate|[RateType](#RateType)|0|unbounded||
> RestrictionSequencePosition|[RestrictionSequencePosition](#RestrictionSequencePosition)|0|1||
> VariableRestrictionModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='RestrictionSequencePosition'></a>
> >
> > ### RestrictionSequencePosition
> >
> > ### Restriction
> >
> > Base type: integer
> >
> > #### Restriction facets
> >
> > Restriction type|Value|Summary|Remarks
> > ---|---|---|---
> > minInclusive|1||
> >
> >
>
>

<a name='Directions'></a>

### Root element: Directions

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
xs:element||1|unbounded||

<a name='Encounters'></a>

### Root element: Encounters

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
Encounter|[EncounterType](#EncounterType)|1|unbounded||

<a name='Goals'></a>

### Root element: Goals

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
Goal|[GoalType](#GoalType)|1|unbounded||

<a name='IDs'></a>

### Root element: IDs
 Type: IDType
<a name='Immunizations'></a>

### Root element: Immunizations

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
Immunization|[StructuredProductType](#StructuredProductType)|1|unbounded||

<a name='Indications'></a>

### Root element: Indications

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
Indication|[IndicationType](#IndicationType)|1|unbounded||

<a name='Instructions'></a>

### Root element: Instructions

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
Instruction|[CodedDescriptionType](#CodedDescriptionType)|1|unbounded||

<a name='Location'></a>

### Root element: Location

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
xs:element||0|1||
Actor|[ActorReferenceType](#ActorReferenceType)|0|1||

<a name='Locations'></a>

### Root element: Locations

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
xs:element||1|unbounded||

<a name='Medications'></a>

### Root element: Medications

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
Medication|[StructuredProductType](#StructuredProductType)|1|unbounded||

<a name='Practitioners'></a>

### Root element: Practitioners

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
Practitioner|[ActorReferenceType](#ActorReferenceType)|1|unbounded||

<a name='Procedures'></a>

### Root element: Procedures

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
Procedure|[ProcedureType](#ProcedureType)|1|unbounded||

<a name='Products'></a>

### Root element: Products

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
Product|[StructuredProductType](#StructuredProductType)|1|unbounded||

<a name='Agent'></a>

### Root element: Agent

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
Products|[Products](#Products)|0|1||
EnvironmentalAgents|[EnvironmentalAgents](#EnvironmentalAgents)|0|1||
Problems|[Problems](#Problems)|0|1||
xs:element||0|1||
Results|[Results](#Results)|0|1||

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Products'></a>
>
> ### Products
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Product|[StructuredProductType](#StructuredProductType)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EnvironmentalAgents'></a>
>
> ### EnvironmentalAgents
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> EnvironmentalAgent|[CCRCodedDataObjectType](#CCRCodedDataObjectType)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Problems'></a>
>
> ### Problems
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Problem|[ProblemType](#ProblemType)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Results'></a>
>
> ### Results
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Result|[ResultType](#ResultType)|1|unbounded||
>
>

<a name='Reaction'></a>

### Root element: Reaction

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
xs:element||0|1||
xs:element||0|1||
Severity|[CodedDescriptionType](#CodedDescriptionType)|0|1||
Interventions|[Interventions](#Interventions)|0|1||
ReactionSequencePosition|integer|0|1||
MultipleReactionModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Interventions'></a>
>
> ### Interventions
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Intervention|[Intervention](#Intervention)|1|unbounded||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Intervention'></a>
> >
> > ### Intervention
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > CCRDataObjectID|string|1|1||
> > DateTime|[DateTimeType](#DateTimeType)|0|unbounded||
> > xs:element||0|1||
> > xs:element||0|1||
> > xs:element||0|1||
> > xs:element||0|1||
> > xs:element||0|1||
> > xs:element||0|1||
> > xs:element||0|1||
> > xs:element||0|1||
> > xs:element||0|1||
> >
> >
>
>

<a name='Services'></a>

### Root element: Services

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
Service|[EncounterType](#EncounterType)|1|unbounded||

<a name='Status'></a>

### Root element: Status
 Type: CodedDescriptionType
<a name='Type'></a>

### Root element: Type
 Type: CodedDescriptionType

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActorType'></a>
>
> ### ActorType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> ActorObjectID|string|1|1||
> IDs|[IDType](#IDType)|0|unbounded||
> Relation|[CodedDescriptionType](#CodedDescriptionType)|0|unbounded||
> Specialty|[CodedDescriptionType](#CodedDescriptionType)|0|unbounded||
> Address|[Address](#Address)|0|unbounded||
> Telephone|[CommunicationType](#CommunicationType)|0|unbounded||
> EMail|[CommunicationType](#CommunicationType)|0|unbounded||
> URL|[CommunicationType](#CommunicationType)|0|unbounded||
> xs:element||0|1||
>
> ### Choice
>
> Min occurs: 1
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Person|[Person](#Person)|0|1||
> Organization|[Organization](#Organization)|0|1||
> InformationSystem|[InformationSystem](#InformationSystem)|0|1||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Person'></a>
> >
> > ### Person
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Name|[Name](#Name)|0|1||
> > DateOfBirth|[DateTimeType](#DateTimeType)|0|1||
> > Gender|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> >
> > >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> > >
> > > <a name='Name'></a>
> > >
> > > ### Name
> > >
> > > ### Element sequence
> > >
> > > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > > ---|---|---|---|---|---
> > > BirthName|[PersonNameType](#PersonNameType)|0|1||
> > > AdditionalName|[PersonNameType](#PersonNameType)|0|unbounded||
> > > CurrentName|[PersonNameType](#PersonNameType)|0|1||
> > > DisplayName|string|0|1||
> > >
> > >
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Organization'></a>
> >
> > ### Organization
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Name|string|1|1||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='InformationSystem'></a>
> >
> > ### InformationSystem
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Name|string|1|1||
> > Type|string|0|1||
> > Version|string|0|1||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Address'></a>
> >
> > ### Address
> >
> > ### Attributes
> >
> > Name|Type|Use|Default value|Summary|Remarks
> > ---|---|---|---|---|---
> > Preferred|string||||
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > xs:element||0|1||
> > Line1|string|0|1||
> > Line2|string|0|1||
> > City|string|0|1||
> > County|string|0|1||
> > State|string|0|1||
> > Country|string|0|1||
> > PostalCode|string|0|1||
> > Priority|string|0|1||
> > xs:element||0|1||
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CCRCodedDataObjectType'></a>
>
> ### CCRCodedDataObjectType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> CCRDataObjectID|string|1|1||
> DateTime|[DateTimeType](#DateTimeType)|0|unbounded||
> IDs|[IDType](#IDType)|0|unbounded||
> xs:element||0|1||
> xs:element||0|1||
> xs:element||0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CodedDescriptionType'></a>
>
> ### CodedDescriptionType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Text|string|0|1||
> ObjectAttribute|[ObjectAttribute](#ObjectAttribute)|0|unbounded||
> Code|[CodeType](#CodeType)|0|unbounded||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='ObjectAttribute'></a>
> >
> > ### ObjectAttribute
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Attribute|string|1|1||
> > AttributeValue|[AttributeValue](#AttributeValue)|1|unbounded||
> > Code|[CodeType](#CodeType)|0|unbounded||
> >
> > >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> > >
> > > <a name='AttributeValue'></a>
> > >
> > > ### AttributeValue
> > >
> > > ### Element sequence
> > >
> > > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > > ---|---|---|---|---|---
> > > Value||1|1||
> > > Code|[CodeType](#CodeType)|0|unbounded||
> > >
> > >
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CodeType'></a>
>
> ### CodeType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Value|string|1|1||
> CodingSystem|string|0|1||
> Version|string|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CommentType'></a>
>
> ### CommentType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> CommentObjectID|string|1|1||
> DateTime|[DateTimeType](#DateTimeType)|1|1||
> xs:element||0|1||
> xs:element||1|1||
> Source|[ActorReferenceType](#ActorReferenceType)|1|unbounded||
> ReferenceID|string|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DateTimeType'></a>
>
> ### DateTimeType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> xs:element||0|1||
> ExactDateTime|string|0|1||
> xs:element||0|1||
> ApproximateDateTime|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> DateTimeRange|[DateTimeRange](#DateTimeRange)|0|unbounded||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='DateTimeRange'></a>
> >
> > ### DateTimeRange
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > BeginRange|[BeginRange](#BeginRange)|0|1||
> > EndRange|[EndRange](#EndRange)|0|1||
> >
> > >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> > >
> > > <a name='BeginRange'></a>
> > >
> > > ### BeginRange
> > >
> > > ### Element sequence
> > >
> > > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > > ---|---|---|---|---|---
> > > ExactDateTime|string|0|1||
> > > xs:element||0|1||
> > > ApproximateDateTime|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> > >
> > >
> >
> > >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> > >
> > > <a name='EndRange'></a>
> > >
> > > ### EndRange
> > >
> > > ### Element sequence
> > >
> > > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > > ---|---|---|---|---|---
> > > ExactDateTime|string|0|1||
> > > xs:element||0|1||
> > > ApproximateDateTime|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> > >
> > >
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IDType'></a>
>
> ### IDType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> DateTime|[DateTimeType](#DateTimeType)|0|unbounded||
> xs:element||0|1||
> ID|string|1|1||
> IssuedBy|[ActorReferenceType](#ActorReferenceType)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ReferenceType'></a>
>
> ### ReferenceType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> ReferenceObjectID|string|1|1||
> DateTime|[DateTimeType](#DateTimeType)|0|unbounded||
> xs:element||0|1||
> xs:element||0|1||
> Source|[ActorReferenceType](#ActorReferenceType)|1|unbounded||
> xs:element||0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SignatureType'></a>
>
> ### SignatureType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> SignatureObjectID|string|1|1||
> ExactDateTime|string|0|1||
> xs:element||0|1||
> xs:element||0|unbounded||
> Source|[ActorReferenceType](#ActorReferenceType)|0|1||
> Signature||1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActorReferenceType'></a>
>
> ### ActorReferenceType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> ActorID|string|0|1||
> ActorRole|[CodedDescriptionType](#CodedDescriptionType)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AlertType'></a>
>
> ### AlertType
>
> ### Extension
>
> Base type: [CCRCodedDataObjectType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CCRCodedDataObjectType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> xs:element||0|unbounded||
> xs:element||0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AuthorizationType'></a>
>
> ### AuthorizationType
>
> ### Extension
>
> Base type: [CCRCodedDataObjectType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CCRCodedDataObjectType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Purpose|[PurposeType](#PurposeType)|0|unbounded||
> xs:element||0|1||
> xs:element||0|1||
> xs:element||0|1||
> xs:element||0|1||
> Immunizations|[Immunizations](#Immunizations)|0|1||
> xs:element||0|1||
> xs:element||0|1||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Immunizations'></a>
> >
> > ### Immunizations
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Immunization|[StructuredProductType](#StructuredProductType)|1|unbounded||
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CommunicationType'></a>
>
> ### CommunicationType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Value|string|1|1||
> xs:element||0|1||
> Priority|string|0|1||
> xs:element||0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CurrentHealthStatusType'></a>
>
> ### CurrentHealthStatusType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> DateTime|[DateTimeType](#DateTimeType)|0|unbounded||
> xs:element||0|1||
> CauseOfDeath|string|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DoseCalculationType'></a>
>
> ### DoseCalculationType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Dose|[MeasureType](#MeasureType)|0|1||
> Variable|[Variable](#Variable)|0|unbounded||
> CalculationEquation|[CalculationEquation](#CalculationEquation)|0|1||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Variable'></a>
> >
> > ### Variable
> >
> > ### Extension
> >
> > Base type: [MeasureType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#MeasureType)
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > VariableIdentifier|string|1|1||
> > VariableSequencePosition|[VariableSequencePosition](#VariableSequencePosition)|0|1||
> > VariableModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> >
> > >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> > >
> > > <a name='VariableSequencePosition'></a>
> > >
> > > ### VariableSequencePosition
> > >
> > > ### Restriction
> > >
> > > Base type: integer
> > >
> > > #### Restriction facets
> > >
> > > Restriction type|Value|Summary|Remarks
> > > ---|---|---|---
> > > minInclusive|1||
> > >
> > >
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='CalculationEquation'></a>
> >
> > ### CalculationEquation
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Value|string|1|1||
> > Code|[CodeType](#CodeType)|0|unbounded||
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DurationType'></a>
>
> ### DurationType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> xs:element||0|1||
> DateTime|[DateTimeType](#DateTimeType)|0|unbounded||
> DurationSequencePosition|[DurationSequencePosition](#DurationSequencePosition)|0|1||
> VariableDurationModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='DurationSequencePosition'></a>
> >
> > ### DurationSequencePosition
> >
> > ### Restriction
> >
> > Base type: integer
> >
> > #### Restriction facets
> >
> > Restriction type|Value|Summary|Remarks
> > ---|---|---|---
> > minInclusive|1||
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EpisodeType'></a>
>
> ### EpisodeType
>
> ### Extension
>
> Base type: [CCRCodedDataObjectType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CCRCodedDataObjectType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Duration|[DurationType](#DurationType)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EpisodesType'></a>
>
> ### EpisodesType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Number|string|0|1||
> Frequency|[MeasureType](#MeasureType)|0|1||
> Episode|[EpisodeType](#EpisodeType)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EncounterType'></a>
>
> ### EncounterType
>
> ### Extension
>
> Base type: [CCRCodedDataObjectType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CCRCodedDataObjectType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> xs:element||0|1||
> xs:element||0|1||
> Frequency|[FrequencyType](#FrequencyType)|0|unbounded||
> Interval|[IntervalType](#IntervalType)|0|unbounded||
> Duration|[DurationType](#DurationType)|0|unbounded||
> xs:element||0|unbounded||
> xs:element||0|1||
> Consent|[CCRCodedDataObjectType](#CCRCodedDataObjectType)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='FamilyHistoryType'></a>
>
> ### FamilyHistoryType
>
> ### Extension
>
> Base type: [CCRCodedDataObjectType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CCRCodedDataObjectType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> FamilyMember|[FamilyMember](#FamilyMember)|0|unbounded||
> Problem|[Problem](#Problem)|0|unbounded||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='FamilyMember'></a>
> >
> > ### FamilyMember
> >
> > ### Extension
> >
> > Base type: [ActorReferenceType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#ActorReferenceType)
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > HealthStatus|[CurrentHealthStatusType](#CurrentHealthStatusType)|0|1||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Problem'></a>
> >
> > ### Problem
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > xs:element||0|1||
> > xs:element||0|1||
> > Episodes|[EpisodesType](#EpisodesType)|0|1||
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='FrequencyType'></a>
>
> ### FrequencyType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> xs:element||0|1||
> FrequencySequencePosition|integer|0|1||
> VariableFrequencyModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='FunctionType'></a>
>
> ### FunctionType
>
> ### Extension
>
> Base type: [CCRCodedDataObjectType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CCRCodedDataObjectType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Problem|[ProblemType](#ProblemType)|0|unbounded||
> Test|[ResultType](#ResultType)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='GoalType'></a>
>
> ### GoalType
>
> ### Extension
>
> Base type: [EncounterType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#EncounterType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Milestones|[Milestones](#Milestones)|0|1||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Milestones'></a>
> >
> > ### Milestones
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Outcome|[CCRCodedDataObjectType](#CCRCodedDataObjectType)|1|unbounded||
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IndicationType'></a>
>
> ### IndicationType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> PRNFlag|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> xs:element||0|unbounded||
> Problem|[ProblemType](#ProblemType)|0|unbounded||
> PhysiologicalParameter|[PhysiologicalParameter](#PhysiologicalParameter)|0|unbounded||
> IndicationSequencePosition|integer|0|1||
> MultipleIndicationModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='PhysiologicalParameter'></a>
> >
> > ### PhysiologicalParameter
> >
> > ### Extension
> >
> > Base type: [MeasureType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#MeasureType)
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > ParameterSequencePosition|integer|0|1||
> > VariableParameterModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='InstructionType'></a>
>
> ### InstructionType
>
> ### Extension
>
> Base type: [CodedDescriptionType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CodedDescriptionType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> instructionSequencePosition|integer|0|1||
> MultipleInstructionModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='InsuranceType'></a>
>
> ### InsuranceType
>
> ### Extension
>
> Base type: [CCRCodedDataObjectType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CCRCodedDataObjectType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> PaymentProvider|[ActorReferenceType](#ActorReferenceType)|0|1||
> Subscriber|[ActorReferenceType](#ActorReferenceType)|0|1||
> Authorizations|[Authorizations](#Authorizations)|0|1||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Authorizations'></a>
> >
> > ### Authorizations
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Authorization|[AuthorizationType](#AuthorizationType)|0|unbounded||
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntervalType'></a>
>
> ### IntervalType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> xs:element||0|1||
> IntervalSequencePosition|integer|0|1||
> VariableIntervalModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='InterventionType'></a>
>
> ### InterventionType
>
> ### Extension
>
> Base type: [CCRCodedDataObjectType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CCRCodedDataObjectType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> xs:element||0|1||
> xs:element||0|1||
> Medications|[Medications](#Medications)|0|1||
> Immunizations|[Immunizations](#Immunizations)|0|1||
> xs:element||0|1||
> xs:element||0|1||
> Authorizatons|[Authorizatons](#Authorizatons)|0|1||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Medications'></a>
> >
> > ### Medications
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Medication|[StructuredProductType](#StructuredProductType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Immunizations'></a>
> >
> > ### Immunizations
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Immunization|[StructuredProductType](#StructuredProductType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Authorizatons'></a>
> >
> > ### Authorizatons
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Authorization|[AuthorizationType](#AuthorizationType)|1|unbounded||
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='MeasureType'></a>
>
> ### MeasureType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Value|string|1|1||
> Units|[Units](#Units)|0|1||
> Code|[CodeType](#CodeType)|0|unbounded||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Units'></a>
> >
> > ### Units
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Unit|string|1|1||
> > Code|[CodeType](#CodeType)|0|unbounded||
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='MethodType'></a>
>
> ### MethodType
>
> ### Extension
>
> Base type: [CodedDescriptionType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CodedDescriptionType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> MethodSequencePosition|integer|0|1||
> MultipleMethodModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='NormalType'></a>
>
> ### NormalType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> xs:element||0|1||
> xs:element||0|1||
> ValueSequencePosition|integer|0|1||
> VariableNormalModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='OrderRxHistoryType'></a>
>
> ### OrderRxHistoryType
>
> ### Extension
>
> Base type: [CCRCodedDataObjectType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CCRCodedDataObjectType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> FulfillmentMethod|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> Provider|[ActorReferenceType](#ActorReferenceType)|0|1||
> Location|[ActorReferenceType](#ActorReferenceType)|0|1||
> xs:element||0|unbounded||
> ProductName|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> BrandName|string|0|1||
> Manufacturer|[ActorReferenceType](#ActorReferenceType)|0|1||
> IDs|[IDType](#IDType)|0|unbounded||
> Strength|[MeasureType](#MeasureType)|0|unbounded||
> Form|[CodedDescriptionType](#CodedDescriptionType)|0|unbounded||
> Concentration|[MeasureType](#MeasureType)|0|unbounded||
> Quantity|[MeasureType](#MeasureType)|0|unbounded||
> LabelInstructions|[InstructionType](#InstructionType)|0|unbounded||
> SeriesNumber|string|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PatientKnowledgeType'></a>
>
> ### PatientKnowledgeType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> PatientAware|string|1|1||
> xs:element||0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PersonNameType'></a>
>
> ### PersonNameType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Given|string|0|unbounded||
> Middle|string|0|unbounded||
> Family|string|0|unbounded||
> Suffix|string|0|unbounded||
> Title|string|0|unbounded||
> NickName||0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PlanOfCareType'></a>
>
> ### PlanOfCareType
>
> ### Extension
>
> Base type: [InterventionType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#InterventionType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> xs:element||0|1||
> OrderSequencePosition|integer|0|1||
> MultipleOrderModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PlanType'></a>
>
> ### PlanType
>
> ### Extension
>
> Base type: [CCRCodedDataObjectType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CCRCodedDataObjectType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> OrderRequest|[PlanOfCareType](#PlanOfCareType)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PositionType'></a>
>
> ### PositionType
>
> ### Extension
>
> Base type: [CodedDescriptionType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CodedDescriptionType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> PositionSequencePosition|integer|0|1||
> MultiplePositionModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ProblemType'></a>
>
> ### ProblemType
>
> ### Extension
>
> Base type: [CCRCodedDataObjectType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CCRCodedDataObjectType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Episodes|[EpisodesType](#EpisodesType)|0|1||
> HealthStatus|[CurrentHealthStatusType](#CurrentHealthStatusType)|0|1||
> PatientKnowledge|[PatientKnowledgeType](#PatientKnowledgeType)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ProcedureType'></a>
>
> ### ProcedureType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> CCRDataObjectID|string|1|1||
> DateTime|[DateTimeType](#DateTimeType)|0|unbounded||
> IDs|[IDType](#IDType)|0|1||
> xs:element||0|1||
> xs:element||0|1||
> xs:element||0|1||
> xs:element||0|1||
> xs:element||0|1||
> Frequency|[FrequencyType](#FrequencyType)|0|unbounded||
> Interval|[IntervalType](#IntervalType)|0|unbounded||
> Duration|[DurationType](#DurationType)|0|unbounded||
> xs:element||0|unbounded||
> xs:element||0|1||
> Consent|[CCRCodedDataObjectType](#CCRCodedDataObjectType)|0|1||
> Products|[Products](#Products)|0|1||
> Substance|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> Method|[MethodType](#MethodType)|0|unbounded||
> Position|[PositionType](#PositionType)|0|unbounded||
> Site|[SiteType](#SiteType)|0|unbounded||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Products'></a>
> >
> > ### Products
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Product|[StructuredProductType](#StructuredProductType)|1|unbounded||
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PurposeType'></a>
>
> ### PurposeType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> DateTime|[DateTimeType](#DateTimeType)|0|unbounded||
> xs:element||1|unbounded||
> OrderRequest|[PlanOfCareType](#PlanOfCareType)|0|unbounded||
> xs:element||0|unbounded||
> ReferenceID|string|0|unbounded||
> CommentID|string|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='QuantityType'></a>
>
> ### QuantityType
>
> ### Extension
>
> Base type: [MeasureType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#MeasureType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> QuantitySequencePosition|integer|0|1||
> VariableQuantityModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RateType'></a>
>
> ### RateType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> xs:element||0|1||
> RateSequencePosition|integer|0|1||
> VariableRateModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ResultType'></a>
>
> ### ResultType
>
> ### Extension
>
> Base type: [CCRCodedDataObjectType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CCRCodedDataObjectType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Procedure|[ProcedureType](#ProcedureType)|0|unbounded||
> Substance|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> Test|[TestType](#TestType)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SiteType'></a>
>
> ### SiteType
>
> ### Extension
>
> Base type: [CodedDescriptionType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CodedDescriptionType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> SiteSequencePosition|integer|0|1||
> MultipleSiteModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SocialHistoryType'></a>
>
> ### SocialHistoryType
>
> ### Extension
>
> Base type: [CCRCodedDataObjectType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CCRCodedDataObjectType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Episodes|[EpisodesType](#EpisodesType)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SourceType'></a>
>
> ### SourceType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> xs:element||0|1||
> xs:element||0|unbounded||
> DateTime|[DateTimeType](#DateTimeType)|0|1||
> ReferenceID|string|0|unbounded||
> CommentID|string|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StructuredProductType'></a>
>
> ### StructuredProductType
>
> ### Extension
>
> Base type: [CCRCodedDataObjectType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CCRCodedDataObjectType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Product|[Product](#Product)|1|unbounded||
> Quantity|[QuantityType](#QuantityType)|0|unbounded||
> xs:element||0|unbounded||
> PatientInstructions|[PatientInstructions](#PatientInstructions)|0|1||
> FulfillmentInstructions|[FulfillmentInstructions](#FulfillmentInstructions)|0|1||
> Refills|[Refills](#Refills)|0|1||
> SeriesNumber|string|0|1||
> Consent|[CCRCodedDataObjectType](#CCRCodedDataObjectType)|0|1||
> xs:element||0|1||
> FulfillmentHistory|[FulfillmentHistory](#FulfillmentHistory)|0|1||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Product'></a>
> >
> > ### Product
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > ProductName|[CodedDescriptionType](#CodedDescriptionType)|1|1||
> > BrandName|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> > Strength|[Strength](#Strength)|0|unbounded||
> > Form|[Form](#Form)|0|unbounded||
> > Concentration|[Concentration](#Concentration)|0|unbounded||
> > Size|[Size](#Size)|0|unbounded||
> > Manufacturer|[ActorReferenceType](#ActorReferenceType)|0|1||
> > xs:element||0|unbounded||
> > ProductSequencePosition|integer|0|1||
> > MultipleProductModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> >
> > >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> > >
> > > <a name='Strength'></a>
> > >
> > > ### Strength
> > >
> > > ### Extension
> > >
> > > Base type: [MeasureType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#MeasureType)
> > >
> > > ### Element sequence
> > >
> > > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > > ---|---|---|---|---|---
> > > StrengthSequencePosition|integer|0|1||
> > > VariableStrengthModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> > >
> > >
> >
> > >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> > >
> > > <a name='Form'></a>
> > >
> > > ### Form
> > >
> > > ### Extension
> > >
> > > Base type: [CodedDescriptionType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CodedDescriptionType)
> > >
> > > ### Element sequence
> > >
> > > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > > ---|---|---|---|---|---
> > > FormSequencePosition|integer|0|1||
> > > MultipleFormModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> > >
> > >
> >
> > >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> > >
> > > <a name='Concentration'></a>
> > >
> > > ### Concentration
> > >
> > > ### Extension
> > >
> > > Base type: [MeasureType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#MeasureType)
> > >
> > > ### Element sequence
> > >
> > > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > > ---|---|---|---|---|---
> > > ConcentrationSequencePosition|integer|0|1||
> > > VariableConcentrationModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> > >
> > >
> >
> > >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> > >
> > > <a name='Size'></a>
> > >
> > > ### Size
> > >
> > > ### Extension
> > >
> > > Base type: [CodedDescriptionType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CodedDescriptionType)
> > >
> > > ### Element sequence
> > >
> > > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > > ---|---|---|---|---|---
> > > Dimensions|[Dimensions](#Dimensions)|0|1||
> > > SizeSequencePosition|integer|0|1||
> > > VariableSizeModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> > >
> > > >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> > > >
> > > > <a name='Dimensions'></a>
> > > >
> > > > ### Dimensions
> > > >
> > > > ### Element sequence
> > > >
> > > > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > > > ---|---|---|---|---|---
> > > > Dimension|[Dimension](#Dimension)|1|unbounded||
> > > >
> > > > >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> > > > >
> > > > > <a name='Dimension'></a>
> > > > >
> > > > > ### Dimension
> > > > >
> > > > > ### Extension
> > > > >
> > > > > Base type: [MeasureType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#MeasureType)
> > > > >
> > > > > ### Element sequence
> > > > >
> > > > > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > > > > ---|---|---|---|---|---
> > > > > xs:element||1|1||
> > > > >
> > > > >
> > > >
> > > >
> > >
> > >
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='PatientInstructions'></a>
> >
> > ### PatientInstructions
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Instruction|[InstructionType](#InstructionType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='FulfillmentInstructions'></a>
> >
> > ### FulfillmentInstructions
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Instruction|[InstructionType](#InstructionType)|1|unbounded||
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Refills'></a>
> >
> > ### Refills
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Refill|[Refill](#Refill)|1|unbounded||
> >
> > >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> > >
> > > <a name='Refill'></a>
> > >
> > > ### Refill
> > >
> > > ### Element sequence
> > >
> > > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > > ---|---|---|---|---|---
> > > Number|[Number](#Number)|1|unbounded||
> > > Quantity|[QuantityType](#QuantityType)|0|unbounded||
> > > xs:element||0|1||
> > > DateTime|[DateTimeType](#DateTimeType)|0|unbounded||
> > > Comment|[CommentType](#CommentType)|0|unbounded||
> > >
> > > >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> > > >
> > > > <a name='Number'></a>
> > > >
> > > > ### Number
> > > >
> > > > ### Restriction
> > > >
> > > > Base type: integer
> > > >
> > > > #### Restriction facets
> > > >
> > > > Restriction type|Value|Summary|Remarks
> > > > ---|---|---|---
> > > > minInclusive|0||
> > > >
> > > >
> > >
> > >
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='FulfillmentHistory'></a>
> >
> > ### FulfillmentHistory
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Fulfillment|[OrderRxHistoryType](#OrderRxHistoryType)|0|unbounded||
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TestResultType'></a>
>
> ### TestResultType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> xs:element||0|unbounded||
> ResultSequencePosition|integer|0|1||
> VariableResultModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TestType'></a>
>
> ### TestType
>
> ### Extension
>
> Base type: [CCRCodedDataObjectType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CCRCodedDataObjectType)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> Method|[CodedDescriptionType](#CodedDescriptionType)|0|unbounded||
> xs:element||0|unbounded||
> TestResult|[TestResultType](#TestResultType)|1|1||
> NormalResult|[NormalResult](#NormalResult)|0|1||
> Flag|[CodedDescriptionType](#CodedDescriptionType)|0|unbounded||
> ConfidenceValue|[CodedDescriptionType](#CodedDescriptionType)|0|1||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='NormalResult'></a>
> >
> > ### NormalResult
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > Normal|[NormalType](#NormalType)|1|unbounded||
> >
> >
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='VehicleType'></a>
>
> ### VehicleType
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> xs:element||0|1||
> Product|[Product](#Product)|0|unbounded||
> Manufacturer|[ActorReferenceType](#ActorReferenceType)|0|1||
> xs:element||0|1||
> Quantity|[Quantity](#Quantity)|0|unbounded||
> VehicleSequencePosition|integer|0|1||
> MultipleVehicleModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> xs:element||0|1||
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Product'></a>
> >
> > ### Product
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > ProductName|[CodedDescriptionType](#CodedDescriptionType)|1|1||
> > BrandName|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> > Strength|[Strength](#Strength)|0|unbounded||
> > Form|[Form](#Form)|0|unbounded||
> > Concentration|[Concentration](#Concentration)|0|unbounded||
> > Size|[Size](#Size)|0|unbounded||
> > ProductSequencePosition|integer|0|1||
> > MultipleProductModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> >
> > >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> > >
> > > <a name='Strength'></a>
> > >
> > > ### Strength
> > >
> > > ### Extension
> > >
> > > Base type: [MeasureType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#MeasureType)
> > >
> > > ### Element sequence
> > >
> > > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > > ---|---|---|---|---|---
> > > StrengthSequencePosition|integer|0|1||
> > > VariableStrengthModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> > >
> > >
> >
> > >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> > >
> > > <a name='Form'></a>
> > >
> > > ### Form
> > >
> > > ### Extension
> > >
> > > Base type: [CodedDescriptionType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CodedDescriptionType)
> > >
> > > ### Element sequence
> > >
> > > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > > ---|---|---|---|---|---
> > > FormSequencePosition|integer|0|1||
> > > MultipleFormModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> > >
> > >
> >
> > >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> > >
> > > <a name='Concentration'></a>
> > >
> > > ### Concentration
> > >
> > > ### Extension
> > >
> > > Base type: [MeasureType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#MeasureType)
> > >
> > > ### Element sequence
> > >
> > > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > > ---|---|---|---|---|---
> > > ConcentrationSequencePosition|integer|0|1||
> > > VariableConcentrationModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> > >
> > >
> >
> > >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> > >
> > > <a name='Size'></a>
> > >
> > > ### Size
> > >
> > > ### Extension
> > >
> > > Base type: [CodedDescriptionType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#CodedDescriptionType)
> > >
> > > ### Element sequence
> > >
> > > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > > ---|---|---|---|---|---
> > > SizeSequencePosition|integer|0|1||
> > > VariableSizeModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> > >
> > >
> >
> >
>
> >[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
> >
> > <a name='Quantity'></a>
> >
> > ### Quantity
> >
> > ### Extension
> >
> > Base type: [MeasureType](xref:HV_1e1ccbfc-a55d-4d91-8940-fa2fbf73c195#MeasureType)
> >
> > ### Element sequence
> >
> > Name|Type|Min occurs|Max occurs|Summary|Remarks
> > ---|---|---|---|---|---
> > QuantitySequencePosition|integer|0|1||
> > VariableQuantityModifier|[CodedDescriptionType](#CodedDescriptionType)|0|1||
> >
> >
>
>

## Example
[!code-xml[Example](../sample-xml/1e1ccbfc-a55d-4d91-8940-fa2fbf73c195.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/ccr.xsd)
[!code-xml[XSD schema](../xsd/ccr.xsd)]
