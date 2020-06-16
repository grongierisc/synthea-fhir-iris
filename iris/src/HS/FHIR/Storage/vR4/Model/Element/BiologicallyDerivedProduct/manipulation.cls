/// Any manipulation of product post-collection.
Class HS.FHIR.Storage.vR4.Model.Element.BiologicallyDerivedProduct.manipulation Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Description of manipulation.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Time of manipulation.
Property timeDateTime As %String(MAXLEN = 1000000, XMLNAME = "timeDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Time of manipulation.
Property timePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "timePeriod", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "BiologicallyDerivedProduct.manipulation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "BiologicallyDerivedProduct.manipulation";

Storage Default
{
<Data name="manipulationDefaultData">
<Subscript>"manipulation"</Subscript>
<Value name="1">
<Value>description</Value>
</Value>
<Value name="2">
<Value>timeDateTime</Value>
</Value>
<Value name="3">
<Value>timePeriod</Value>
</Value>
</Data>
<DefaultData>manipulationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
