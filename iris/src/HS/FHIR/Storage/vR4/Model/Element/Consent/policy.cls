/// Policies covered by this consent.
Class HS.FHIR.Storage.vR4.Model.Element.Consent.policy Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Enforcement source for policy.
Property authority As %String(MAXLEN = 1000000, XMLNAME = "authority", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Specific policy covered by this consent.
Property uri As %String(MAXLEN = 1000000, XMLNAME = "uri", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Consent.policy";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Consent.policy";

Storage Default
{
<Data name="policyDefaultData">
<Subscript>"policy"</Subscript>
<Value name="1">
<Value>authority</Value>
</Value>
<Value name="2">
<Value>uri</Value>
</Value>
</Data>
<DefaultData>policyDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
