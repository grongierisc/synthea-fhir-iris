/// A ratio of two Quantity values - a numerator and a denominator.
Class HS.FHIR.Storage.vR4.Model.Datatype.Ratio Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// Quantity
/// <p>
/// Numerator value.
Property numerator As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "numerator", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Denominator value.
Property denominator As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "denominator", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Ratio";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Ratio";

Storage Default
{
<Data name="RatioDefaultData">
<Subscript>"Ratio"</Subscript>
<Value name="1">
<Value>numerator</Value>
</Value>
<Value name="2">
<Value>denominator</Value>
</Value>
</Data>
<DefaultData>RatioDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
