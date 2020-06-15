/// A description of when an event can occur.
Class HS.FHIR.vR4.Model.Resource.EventDefinition Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Canonical identifier for this event definition, 
/// represented as a URI (globally unique)
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Additional identifier for the event definition.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Business version of the event definition.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this event definition (computer friendly)
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this event definition (human friendly)
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Subordinate title of the event definition.
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
/// Type of individual the event definition is focused on.
/// <p>
/// subject-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in subject-type, 
/// you may formally EXTEND subject-type to add codes to it.
Property subjectCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "subjectCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Type of individual the event definition is focused on.
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
/// Natural language description of the event definition.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As List Of HS.FHIR.vR4.Model.Datatype.UsageContext(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for event definition (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Why this event definition is defined.
Property purpose As %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Describes the clinical usage of the event definition.
Property usage As %String(MAXLEN = 1000000, XMLNAME = "usage", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Use and/or publishing restrictions.
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// When the event definition was approved by publisher.
Property approvalDate As %String(MAXLEN = 1000000, XMLNAME = "approvalDate", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// When the event definition was last reviewed.
Property lastReviewDate As %String(MAXLEN = 1000000, XMLNAME = "lastReviewDate", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When the event definition is expected to be used.
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

/// TriggerDefinition
/// <p>
/// \"when\" the event occurs (multiple = 'or')
Property trigger As List Of HS.FHIR.vR4.Model.Datatype.TriggerDefinition(XMLNAME = "trigger", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EventDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EventDefinition";

}
