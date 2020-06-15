/// Possible or likely findings and diagnoses.
Class HS.FHIR.vR4.Model.Element.ClinicalImpression.finding Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// What was found.
/// <p>
/// any FHIR4 code may be used; 
/// condition-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property itemCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "itemCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// What was found.
/// <p>
/// Condition | Observation | Media
Property itemReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "itemReference", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Which investigations support finding.
Property basis As %String(MAXLEN = 1000000, XMLNAME = "basis", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClinicalImpression.finding";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClinicalImpression.finding";

}
