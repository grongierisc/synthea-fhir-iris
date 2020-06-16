/// Patient insurance information.
Class HS.FHIR.Storage.vR4.Model.Element.Claim.insurance Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Insurance instance identifier.
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// Coverage to be used for adjudication.
Property focal As %Boolean(XMLNAME = "focal", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Identifier
/// <p>
/// Pre-assigned Claim number.
Property identifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Insurance information.
/// <p>
/// Coverage
Property coverage As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "coverage", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Additional provider contract number.
Property businessArrangement As %String(MAXLEN = 1000000, XMLNAME = "businessArrangement", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Prior authorization reference number.
Property preAuthRef As array Of %String(MAXLEN = 1000000, XMLNAME = "preAuthRef", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Adjudication results.
/// <p>
/// ClaimResponse
Property claimResponse As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "claimResponse", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Claim.insurance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Claim.insurance";

Storage Default
{
<Data name="insuranceDefaultData">
<Subscript>"insurance"</Subscript>
<Value name="1">
<Value>sequence</Value>
</Value>
<Value name="2">
<Value>focal</Value>
</Value>
<Value name="3">
<Value>identifier</Value>
</Value>
<Value name="4">
<Value>coverage</Value>
</Value>
<Value name="5">
<Value>businessArrangement</Value>
</Value>
<Value name="6">
<Value>claimResponse</Value>
</Value>
</Data>
<Data name="preAuthRef">
<Attribute>preAuthRef</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Claim.insurance.preAuthRef"</Subscript>
</Data>
<DefaultData>insuranceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
