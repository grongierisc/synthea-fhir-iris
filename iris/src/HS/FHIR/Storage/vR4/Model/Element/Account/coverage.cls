/// The party(s) that are responsible for covering the payment of this account, 
/// and what order should they be applied to the account.
Class HS.FHIR.Storage.vR4.Model.Element.Account.coverage Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// The party(s), 
/// such as insurances, 
/// that may contribute to the payment of this account.
/// <p>
/// Coverage
Property coverage As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "coverage", XMLPROJECTION = "ELEMENT") [ Required ];

/// positiveInt
/// <p>
/// The priority of the coverage in the context of this account.
Property priority As %Integer(XMLNAME = "priority", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Account.coverage";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Account.coverage";

Storage Default
{
<Data name="coverageDefaultData">
<Subscript>"coverage"</Subscript>
<Value name="1">
<Value>coverage</Value>
</Value>
<Value name="2">
<Value>priority</Value>
</Value>
</Data>
<DefaultData>coverageDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
