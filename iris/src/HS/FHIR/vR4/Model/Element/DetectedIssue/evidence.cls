/// Supporting evidence.
Class HS.FHIR.vR4.Model.Element.DetectedIssue.evidence Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Manifestation.
/// <p>
/// any FHIR4 code may be used; 
/// manifestation-or-symptom shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Supporting information.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property detail As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "detail", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DetectedIssue.evidence";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DetectedIssue.evidence";

}
