/// Information about patient's relatives, 
/// relevant for patient.
Class HS.FHIR.vR4.Model.Resource.FamilyMemberHistory Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External Id(s) for this record.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Instantiates FHIR protocol or definition.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property instantiatesCanonical As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "instantiatesCanonical", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Instantiates external protocol or definition.
Property instantiatesUri As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "instantiatesUri", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// partial | completed | entered-in-error | health-unknown
/// <p>
/// history-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend history-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// subject-unknown | withheld | unable-to-obtain | deferred
/// <p>
/// any FHIR4 code may be used; 
/// history-absent-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property dataAbsentReason As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "dataAbsentReason", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Patient history is about.
/// <p>
/// Patient
Property patient As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

/// dateTime
/// <p>
/// When history was recorded or last updated.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// The family member described.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Relationship to the subject.
/// <p>
/// any FHIR4 code may be used; 
/// v3-FamilyMember shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property relationship As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "relationship", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// male | female | other | unknown
/// <p>
/// administrative-gender is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in administrative-gender, 
/// you may formally EXTEND administrative-gender to add codes to it.
Property sex As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "sex", XMLPROJECTION = "ELEMENT");

/// date
/// <p>
/// (approximate) date of birth.
Property bornDate As %String(MAXLEN = 1000000, XMLNAME = "bornDate", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// (approximate) date of birth.
Property bornPeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "bornPeriod", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// (approximate) date of birth.
Property bornString As %String(MAXLEN = 1000000, XMLNAME = "bornString", XMLPROJECTION = "ATTRIBUTE");

/// Age
/// <p>
/// (approximate) age.
Property ageAge As HS.FHIR.vR4.Model.Datatype.Age(XMLNAME = "ageAge", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// (approximate) age.
Property ageRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "ageRange", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// (approximate) age.
Property ageString As %String(MAXLEN = 1000000, XMLNAME = "ageString", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Age is estimated?
Property estimatedAge As %Boolean(XMLNAME = "estimatedAge", XMLPROJECTION = "ATTRIBUTE");

/// Age
/// <p>
/// Dead? How old/when?
Property deceasedAge As HS.FHIR.vR4.Model.Datatype.Age(XMLNAME = "deceasedAge", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Dead? How old/when?
Property deceasedBoolean As %Boolean(XMLNAME = "deceasedBoolean", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// Dead? How old/when?
Property deceasedDate As %String(MAXLEN = 1000000, XMLNAME = "deceasedDate", XMLPROJECTION = "ATTRIBUTE");

/// Range
/// <p>
/// Dead? How old/when?
Property deceasedRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "deceasedRange", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Dead? How old/when?
Property deceasedString As %String(MAXLEN = 1000000, XMLNAME = "deceasedString", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Why was family member history performed?
/// <p>
/// any FHIR4 code may be used; 
/// clinical-findings shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why was family member history performed?
/// <p>
/// Condition | Observation | AllergyIntolerance | QuestionnaireResponse | DiagnosticReport | DocumentReference
Property reasonReference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// General note about related person.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Condition that the related person had.
Property condition As List Of HS.FHIR.vR4.Model.Element.FamilyMemberHistory.condition(XMLNAME = "condition", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "FamilyMemberHistory";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "FamilyMemberHistory";

}
