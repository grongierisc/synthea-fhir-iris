/// Supporting evidence.
Class HS.FHIR.vR4.Model.Element.Condition.evidence Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Manifestation/symptom.
/// <p>
/// any FHIR4 code may be used; 
/// manifestation-or-symptom shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Supporting information found elsewhere.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property detail As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "detail", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Condition.evidence";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Condition.evidence";

}
