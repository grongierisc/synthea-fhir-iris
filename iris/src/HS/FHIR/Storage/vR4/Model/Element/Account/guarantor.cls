/// The parties ultimately responsible for balancing the Account.
Class HS.FHIR.Storage.vR4.Model.Element.Account.guarantor Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Responsible entity.
/// <p>
/// Patient | RelatedPerson | Organization
Property party As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "party", XMLPROJECTION = "ELEMENT") [ Required ];

/// boolean
/// <p>
/// Credit or other hold applied.
Property onHold As %Boolean(XMLNAME = "onHold", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Guarantee account during.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Account.guarantor";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Account.guarantor";

Storage Default
{
<Data name="guarantorDefaultData">
<Subscript>"guarantor"</Subscript>
<Value name="1">
<Value>party</Value>
</Value>
<Value name="2">
<Value>onHold</Value>
</Value>
<Value name="3">
<Value>period</Value>
</Value>
</Data>
<DefaultData>guarantorDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
