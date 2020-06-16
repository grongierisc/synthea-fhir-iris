/// Specific eligibility requirements required to use the service.
Class HS.FHIR.Storage.vR4.Model.Element.HealthcareService.eligibility Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Coded value for the eligibility.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Describes the eligibility conditions for the service.
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "HealthcareService.eligibility";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "HealthcareService.eligibility";

Storage Default
{
<Data name="eligibilityDefaultData">
<Subscript>"eligibility"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>comment</Value>
</Value>
</Data>
<DefaultData>eligibilityDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
