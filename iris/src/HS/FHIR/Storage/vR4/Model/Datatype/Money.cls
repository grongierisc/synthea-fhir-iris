/// An amount of economic utility in some recognized currency.
Class HS.FHIR.Storage.vR4.Model.Datatype.Money Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// decimal
/// <p>
/// Numerical value (with implicit precision)
Property value As %Decimal(XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// ISO 4217 Currency Code.
/// <p>
/// currencies|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend currencies|4.0.1 and you may NOT use codes from other ValueSets.
Property currency As %String(MAXLEN = 1000000, XMLNAME = "currency", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Money";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Money";

Storage Default
{
<Data name="MoneyDefaultData">
<Subscript>"Money"</Subscript>
<Value name="1">
<Value>value</Value>
</Value>
<Value name="2">
<Value>currency</Value>
</Value>
</Data>
<DefaultData>MoneyDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
