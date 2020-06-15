/// Stage/grade, 
/// usually assessed formally.
Class HS.FHIR.vR4.Model.Element.Condition.stage Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Simple summary (disease specific)
/// <p>
/// any FHIR4 code may be used; 
/// condition-stage shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property summary As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "summary", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Formal record of assessment.
/// <p>
/// ClinicalImpression | DiagnosticReport | Observation
Property assessment As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "assessment", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Kind of staging.
/// <p>
/// any FHIR4 code may be used; 
/// condition-stage-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Condition.stage";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Condition.stage";

}
