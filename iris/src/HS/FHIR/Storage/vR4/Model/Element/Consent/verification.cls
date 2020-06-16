/// Consent Verified by patient or family.
Class HS.FHIR.Storage.vR4.Model.Element.Consent.verification Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// Has been verified.
Property verified As %Boolean(XMLNAME = "verified", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Person who verified.
/// <p>
/// Patient | RelatedPerson
Property verifiedWith As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "verifiedWith", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When consent verified.
Property verificationDate As %String(MAXLEN = 1000000, XMLNAME = "verificationDate", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Consent.verification";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Consent.verification";

Storage Default
{
<Data name="verificationDefaultData">
<Subscript>"verification"</Subscript>
<Value name="1">
<Value>verified</Value>
</Value>
<Value name="2">
<Value>verifiedWith</Value>
</Value>
<Value name="3">
<Value>verificationDate</Value>
</Value>
</Data>
<DefaultData>verificationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
