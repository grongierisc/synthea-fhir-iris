/// Patient insurance information.
Class HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.insurance Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// Coverage to be used for adjudication.
Property focal As %Boolean(XMLNAME = "focal", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Insurance information.
/// <p>
/// Coverage
Property coverage As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "coverage", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Prior authorization reference number.
Property preAuthRef As array Of %String(MAXLEN = 1000000, XMLNAME = "preAuthRef", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExplanationOfBenefit.insurance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExplanationOfBenefit.insurance";

Storage Default
{
<Data name="insuranceDefaultData">
<Subscript>"insurance"</Subscript>
<Value name="1">
<Value>focal</Value>
</Value>
<Value name="2">
<Value>coverage</Value>
</Value>
</Data>
<Data name="preAuthRef">
<Attribute>preAuthRef</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.insurance.preAuthRef"</Subscript>
</Data>
<DefaultData>insuranceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
