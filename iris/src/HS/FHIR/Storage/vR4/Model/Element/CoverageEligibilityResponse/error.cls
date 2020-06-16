/// Processing errors.
Class HS.FHIR.Storage.vR4.Model.Element.CoverageEligibilityResponse.error Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Error code detailing processing issues.
/// <p>
/// any FHIR4 code may be used; 
/// adjudication-error shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CoverageEligibilityResponse.error";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CoverageEligibilityResponse.error";

Storage Default
{
<Data name="errorDefaultData">
<Subscript>"error"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
</Data>
<DefaultData>errorDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
