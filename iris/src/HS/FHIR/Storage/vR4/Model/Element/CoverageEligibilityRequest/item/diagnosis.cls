/// Applicable diagnosis.
Class HS.FHIR.Storage.vR4.Model.Element.CoverageEligibilityRequest.item.diagnosis Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Nature of illness or problem.
/// <p>
/// any FHIR4 code may be used; 
/// icd-10 shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property diagnosisCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "diagnosisCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Nature of illness or problem.
/// <p>
/// Condition.
Property diagnosisReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "diagnosisReference", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CoverageEligibilityRequest.item.diagnosis";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CoverageEligibilityRequest.item.diagnosis";

Storage Default
{
<Data name="diagnosisDefaultData">
<Subscript>"diagnosis"</Subscript>
<Value name="1">
<Value>diagnosisCodeableConcept</Value>
</Value>
<Value name="2">
<Value>diagnosisReference</Value>
</Value>
</Data>
<DefaultData>diagnosisDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
