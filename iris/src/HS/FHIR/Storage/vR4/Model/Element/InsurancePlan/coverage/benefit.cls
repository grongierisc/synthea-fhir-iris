/// List of benefits.
Class HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.coverage.benefit Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of benefit.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Referral requirements.
Property requirement As %String(MAXLEN = 1000000, XMLNAME = "requirement", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Benefit limits.
Property limit As array Of HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.coverage.benefit.limit(XMLNAME = "limit", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan.coverage.benefit";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan.coverage.benefit";

Storage Default
{
<Data name="benefitDefaultData">
<Subscript>"benefit"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>requirement</Value>
</Value>
</Data>
<Data name="limit">
<Attribute>limit</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.coverage.benefit.limit"</Subscript>
</Data>
<DefaultData>benefitDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
