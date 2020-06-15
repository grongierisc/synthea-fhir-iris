/// One or more sets of investigations (signs, 
/// symptoms, 
/// etc.)
Class HS.FHIR.vR4.Model.Element.ClinicalImpression.investigation Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// A name/code for the set.
/// <p>
/// any FHIR4 code may be used; 
/// investigation-sets shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Record of a specific investigation.
/// <p>
/// Observation | QuestionnaireResponse | FamilyMemberHistory | DiagnosticReport | RiskAssessment | ImagingStudy | Media
Property item As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "item", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClinicalImpression.investigation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClinicalImpression.investigation";

}
