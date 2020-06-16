/// Times the Service Site is available.
Class HS.FHIR.Storage.vR4.Model.Element.PractitionerRole.availableTime Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// mon | tue | wed | thu | fri | sat | sun
/// <p>
/// days-of-week|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend days-of-week|4.0.1 and you may NOT use codes from other ValueSets.
Property daysOfWeek As array Of %String(MAXLEN = 1000000, XMLNAME = "daysOfWeek", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Always available? e.g. 
/// 24 hour service.
Property allDay As %Boolean(XMLNAME = "allDay", XMLPROJECTION = "ATTRIBUTE");

/// time
/// <p>
/// Opening time of day (ignored if allDay = true)
Property availableStartTime As %String(MAXLEN = 1000000, XMLNAME = "availableStartTime", XMLPROJECTION = "ATTRIBUTE");

/// time
/// <p>
/// Closing time of day (ignored if allDay = true)
Property availableEndTime As %String(MAXLEN = 1000000, XMLNAME = "availableEndTime", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "PractitionerRole.availableTime";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "PractitionerRole.availableTime";

Storage Default
{
<Data name="availableTimeDefaultData">
<Subscript>"availableTime"</Subscript>
<Value name="1">
<Value>allDay</Value>
</Value>
<Value name="2">
<Value>availableStartTime</Value>
</Value>
<Value name="3">
<Value>availableEndTime</Value>
</Value>
</Data>
<Data name="daysOfWeek">
<Attribute>daysOfWeek</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.PractitionerRole.availableTime.daysOfWeek"</Subscript>
</Data>
<DefaultData>availableTimeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
