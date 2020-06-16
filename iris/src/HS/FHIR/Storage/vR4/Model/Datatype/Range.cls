/// Set of values bounded by low and high.
Class HS.FHIR.Storage.vR4.Model.Datatype.Range Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// Quantity
/// <p>
/// Low limit.
Property low As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "low", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// High limit.
Property high As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "high", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Range";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Range";

Storage Default
{
<Data name="RangeDefaultData">
<Subscript>"Range"</Subscript>
<Value name="1">
<Value>low</Value>
</Value>
<Value name="2">
<Value>high</Value>
</Value>
</Data>
<DefaultData>RangeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
