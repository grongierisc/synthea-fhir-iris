/// A structured set of questions.
Class HS.FHIR.vR4.Model.Resource.Questionnaire Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Canonical identifier for this questionnaire, 
/// represented as a URI (globally unique)
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Additional identifier for the questionnaire.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Business version of the questionnaire.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this questionnaire (computer friendly)
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this questionnaire (human friendly)
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Instantiates protocol or definition.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property derivedFrom As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "derivedFrom", XMLPROJECTION = "ELEMENT");

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

/// code
/// <p>
/// Resource that can be subject of QuestionnaireResponse.
/// <p>
/// resource-types|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend resource-types|4.0.1 and you may NOT use codes from other ValueSets.
Property subjectType As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "subjectType", XMLPROJECTION = "ELEMENT");

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
/// Natural language description of the questionnaire.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As List Of HS.FHIR.vR4.Model.Datatype.UsageContext(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for questionnaire (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Why this questionnaire is defined.
Property purpose As %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Use and/or publishing restrictions.
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// When the questionnaire was approved by publisher.
Property approvalDate As %String(MAXLEN = 1000000, XMLNAME = "approvalDate", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// When the questionnaire was last reviewed.
Property lastReviewDate As %String(MAXLEN = 1000000, XMLNAME = "lastReviewDate", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When the questionnaire is expected to be used.
Property effectivePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Concept that represents the overall questionnaire.
/// <p>
/// any FHIR4 code may be used; 
/// questionnaire-questions shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As List Of HS.FHIR.vR4.Model.Datatype.Coding(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Questions and sections within the Questionnaire.
Property item As List Of HS.FHIR.vR4.Model.Element.Questionnaire.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Questionnaire";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Questionnaire";

}
