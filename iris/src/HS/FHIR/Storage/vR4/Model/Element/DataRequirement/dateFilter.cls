/// What dates/date ranges are expected.
Class HS.FHIR.Storage.vR4.Model.Element.DataRequirement.dateFilter Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// string
/// <p>
/// A date-valued attribute to filter on.
Property path As %String(MAXLEN = 1000000, XMLNAME = "path", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// A date valued parameter to search on.
Property searchParam As %String(MAXLEN = 1000000, XMLNAME = "searchParam", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// The value of the filter, 
/// as a Period, 
/// DateTime, 
/// or Duration value.
Property valueDateTime As %String(MAXLEN = 1000000, XMLNAME = "valueDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Duration
/// <p>
/// The value of the filter, 
/// as a Period, 
/// DateTime, 
/// or Duration value.
Property valueDuration As HS.FHIR.Storage.vR4.Model.Datatype.Duration(XMLNAME = "valueDuration", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// The value of the filter, 
/// as a Period, 
/// DateTime, 
/// or Duration value.
Property valuePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "valuePeriod", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "dateFilter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "dateFilter";

Storage Default
{
<Data name="dateFilterDefaultData">
<Subscript>"dateFilter"</Subscript>
<Value name="1">
<Value>path</Value>
</Value>
<Value name="2">
<Value>searchParam</Value>
</Value>
<Value name="3">
<Value>valueDateTime</Value>
</Value>
<Value name="4">
<Value>valueDuration</Value>
</Value>
<Value name="5">
<Value>valuePeriod</Value>
</Value>
</Data>
<DefaultData>dateFilterDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
