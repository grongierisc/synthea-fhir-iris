/// Immunization evaluation information.
Class HS.FHIR.vR4.Model.Resource.ImmunizationEvaluation Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifier.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// completed | entered-in-error
/// <p>
/// immunization-evaluation-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend immunization-evaluation-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Who this evaluation is for.
/// <p>
/// Patient
Property patient As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

/// dateTime
/// <p>
/// Date evaluation was performed.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who is responsible for publishing the recommendations.
/// <p>
/// Organization
Property authority As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "authority", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Evaluation target disease.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-evaluation-target-disease shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property targetDisease As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "targetDisease", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Immunization being evaluated.
/// <p>
/// Immunization
Property immunizationEvent As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "immunizationEvent", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Status of the dose relative to published recommendations.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-evaluation-dose-status shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property doseStatus As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "doseStatus", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Reason for the dose status.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-evaluation-dose-status-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property doseStatusReason As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "doseStatusReason", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Evaluation notes.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name of vaccine series.
Property series As %String(MAXLEN = 1000000, XMLNAME = "series", XMLPROJECTION = "ATTRIBUTE");

/// positiveInt
/// <p>
/// Dose number within series.
Property doseNumberPositiveInt As %Integer(XMLNAME = "doseNumberPositiveInt", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Dose number within series.
Property doseNumberString As %String(MAXLEN = 1000000, XMLNAME = "doseNumberString", XMLPROJECTION = "ATTRIBUTE");

/// positiveInt
/// <p>
/// Recommended number of doses for immunity.
Property seriesDosesPositiveInt As %Integer(XMLNAME = "seriesDosesPositiveInt", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Recommended number of doses for immunity.
Property seriesDosesString As %String(MAXLEN = 1000000, XMLNAME = "seriesDosesString", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImmunizationEvaluation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImmunizationEvaluation";

}
