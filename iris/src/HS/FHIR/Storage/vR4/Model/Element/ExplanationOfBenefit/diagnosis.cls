/// Pertinent diagnosis information.
Class HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.diagnosis Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Diagnosis instance identifier.
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Nature of illness or problem.
/// <p>
/// any FHIR4 code may be used; 
/// icd-10 shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property diagnosisCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "diagnosisCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Nature of illness or problem.
/// <p>
/// Condition.
Property diagnosisReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "diagnosisReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Timing or nature of the diagnosis.
/// <p>
/// any FHIR4 code may be used; 
/// ex-diagnosistype shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Present on admission.
/// <p>
/// any FHIR4 code may be used; 
/// ex-diagnosis-on-admission shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property onAdmission As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "onAdmission", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Package billing code.
/// <p>
/// any FHIR4 code may be used; 
/// ex-diagnosisrelatedgroup shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property packageCode As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "packageCode", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExplanationOfBenefit.diagnosis";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExplanationOfBenefit.diagnosis";

Storage Default
{
<Data name="diagnosisDefaultData">
<Subscript>"diagnosis"</Subscript>
<Value name="1">
<Value>sequence</Value>
</Value>
<Value name="2">
<Value>diagnosisCodeableConcept</Value>
</Value>
<Value name="3">
<Value>diagnosisReference</Value>
</Value>
<Value name="4">
<Value>onAdmission</Value>
</Value>
<Value name="5">
<Value>packageCode</Value>
</Value>
</Data>
<Data name="type">
<Attribute>type</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.diagnosis.type"</Subscript>
</Data>
<DefaultData>diagnosisDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
