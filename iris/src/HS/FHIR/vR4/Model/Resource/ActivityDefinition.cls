/// The definition of a specific activity to be taken, 
/// independent of any particular patient or context.
Class HS.FHIR.vR4.Model.Resource.ActivityDefinition Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Canonical identifier for this activity definition, 
/// represented as a URI (globally unique)
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Additional identifier for the activity definition.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Business version of the activity definition.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this activity definition (computer friendly)
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this activity definition (human friendly)
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Subordinate title of the activity definition.
Property subtitle As %String(MAXLEN = 1000000, XMLNAME = "subtitle", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// draft | active | retired | unknown
/// <p>
/// publication-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend publication-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// For testing purposes, 
/// not real usage.
Property experimental As %Boolean(XMLNAME = "experimental", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Type of individual the activity definition is intended for.
/// <p>
/// subject-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in subject-type, 
/// you may formally EXTEND subject-type to add codes to it.
Property subjectCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "subjectCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Type of individual the activity definition is intended for.
/// <p>
/// Group.
Property subjectReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subjectReference", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Date last changed.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name of the publisher (organization or individual)
Property publisher As %String(MAXLEN = 1000000, XMLNAME = "publisher", XMLPROJECTION = "ATTRIBUTE");

/// ContactDetail
/// <p>
/// Contact details for the publisher.
Property contact As List Of HS.FHIR.vR4.Model.Datatype.ContactDetail(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Natural language description of the activity definition.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As List Of HS.FHIR.vR4.Model.Datatype.UsageContext(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for activity definition (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Why this activity definition is defined.
Property purpose As %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Describes the clinical usage of the activity definition.
Property usage As %String(MAXLEN = 1000000, XMLNAME = "usage", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Use and/or publishing restrictions.
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// When the activity definition was approved by publisher.
Property approvalDate As %String(MAXLEN = 1000000, XMLNAME = "approvalDate", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// When the activity definition was last reviewed.
Property lastReviewDate As %String(MAXLEN = 1000000, XMLNAME = "lastReviewDate", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When the activity definition is expected to be used.
Property effectivePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// E.g. 
/// Education, 
/// Treatment, 
/// Assessment, 
/// etc.
/// <p>
/// any FHIR4 code may be used; 
/// definition-topic shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property topic As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "topic", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// Who authored the content.
Property author As List Of HS.FHIR.vR4.Model.Datatype.ContactDetail(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "author", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// Who edited the content.
Property editor As List Of HS.FHIR.vR4.Model.Datatype.ContactDetail(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "editor", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// Who reviewed the content.
Property reviewer As List Of HS.FHIR.vR4.Model.Datatype.ContactDetail(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "reviewer", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// Who endorsed the content.
Property endorser As List Of HS.FHIR.vR4.Model.Datatype.ContactDetail(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "endorser", XMLPROJECTION = "ELEMENT");

/// RelatedArtifact
/// <p>
/// Additional documentation, 
/// citations, 
/// etc.
Property relatedArtifact As List Of HS.FHIR.vR4.Model.Datatype.RelatedArtifact(XMLNAME = "relatedArtifact", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Logic used by the activity definition.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property library As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "library", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// Kind of resource.
/// <p>
/// request-resource-types|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-resource-types|4.0.1 and you may NOT use codes from other ValueSets.
Property kind As %String(MAXLEN = 1000000, XMLNAME = "kind", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// What profile the resource needs to conform to.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property profile As %String(MAXLEN = 1000000, XMLNAME = "profile", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Detail type of activity.
/// <p>
/// any FHIR4 code may be used; 
/// procedure-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option
/// <p>
/// request-intent|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-intent|4.0.1 and you may NOT use codes from other ValueSets.
Property intent As %String(MAXLEN = 1000000, XMLNAME = "intent", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// routine | urgent | asap | stat
/// <p>
/// request-priority|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-priority|4.0.1 and you may NOT use codes from other ValueSets.
Property priority As %String(MAXLEN = 1000000, XMLNAME = "priority", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// True if the activity should not be performed.
Property doNotPerform As %Boolean(XMLNAME = "doNotPerform", XMLPROJECTION = "ATTRIBUTE");

/// Age
/// <p>
/// When activity is to occur.
Property timingAge As HS.FHIR.vR4.Model.Datatype.Age(XMLNAME = "timingAge", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When activity is to occur.
Property timingDateTime As %String(MAXLEN = 1000000, XMLNAME = "timingDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Duration
/// <p>
/// When activity is to occur.
Property timingDuration As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "timingDuration", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// When activity is to occur.
Property timingPeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "timingPeriod", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// When activity is to occur.
Property timingRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "timingRange", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// When activity is to occur.
Property timingTiming As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "timingTiming", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where it should happen.
/// <p>
/// Location
Property location As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Who should participate in the action.
Property participant As List Of HS.FHIR.vR4.Model.Element.ActivityDefinition.participant(XMLNAME = "participant", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// What's administered/supplied.
/// <p>
/// any FHIR4 code may be used; 
/// medication-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property productCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "productCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// What's administered/supplied.
/// <p>
/// Medication | Substance
Property productReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "productReference", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// How much is administered/consumed/supplied.
Property quantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

/// Dosage
/// <p>
/// Detailed dosage instructions.
Property dosage As List Of HS.FHIR.vR4.Model.Element.Dosage(XMLNAME = "dosage", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// What part of body to perform on.
/// <p>
/// any FHIR4 code may be used; 
/// body-site shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property bodySite As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// What specimens are required to perform this action.
/// <p>
/// SpecimenDefinition
Property specimenRequirement As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "specimenRequirement", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// What observations are required to perform this action.
/// <p>
/// ObservationDefinition
Property observationRequirement As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "observationRequirement", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// What observations must be produced by this action.
/// <p>
/// ObservationDefinition
Property observationResultRequirement As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "observationResultRequirement", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Transform to apply the template.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property transform As %String(MAXLEN = 1000000, XMLNAME = "transform", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Dynamic aspects of the definition.
Property dynamicValue As List Of HS.FHIR.vR4.Model.Element.ActivityDefinition.dynamicValue(XMLNAME = "dynamicValue", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ActivityDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ActivityDefinition";

}
