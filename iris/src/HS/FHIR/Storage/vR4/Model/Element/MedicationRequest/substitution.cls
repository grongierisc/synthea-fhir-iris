/// Any restrictions on medication substitution.
Class HS.FHIR.Storage.vR4.Model.Element.MedicationRequest.substitution Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// Whether substitution is allowed or not.
Property allowedBoolean As %Boolean(XMLNAME = "allowedBoolean", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Whether substitution is allowed or not.
/// <p>
/// any FHIR4 code may be used; 
/// v3-ActSubstanceAdminSubstitutionCode shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property allowedCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "allowedCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Why should (not) substitution be made.
/// <p>
/// any FHIR4 code may be used; 
/// v3-SubstanceAdminSubstitutionReason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reason As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationRequest.substitution";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationRequest.substitution";

Storage Default
{
<Data name="substitutionDefaultData">
<Subscript>"substitution"</Subscript>
<Value name="1">
<Value>allowedBoolean</Value>
</Value>
<Value name="2">
<Value>allowedCodeableConcept</Value>
</Value>
<Value name="3">
<Value>reason</Value>
</Value>
</Data>
<DefaultData>substitutionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
