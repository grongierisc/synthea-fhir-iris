/// Time range defined by start and end date/time.
Class HS.FHIR.Storage.vR4.Model.Datatype.Period Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// dateTime
/// <p>
/// Starting time with inclusive boundary.
Property start As %String(MAXLEN = 1000000, XMLNAME = "start", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// End time with inclusive boundary, 
/// if not ongoing.
Property end As %String(MAXLEN = 1000000, XMLNAME = "end", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Period";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Period";

Storage Default
{
<Data name="PeriodDefaultData">
<Subscript>"Period"</Subscript>
<Value name="1">
<Value>start</Value>
</Value>
<Value name="2">
<Value>end</Value>
</Value>
</Data>
<DefaultData>PeriodDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
