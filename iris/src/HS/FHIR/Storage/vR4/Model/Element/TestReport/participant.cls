/// A participant in the test execution, 
/// either the execution engine, 
/// a client, 
/// or a server.
Class HS.FHIR.Storage.vR4.Model.Element.TestReport.participant Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// test-engine | client | server
/// <p>
/// report-participant-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend report-participant-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// uri
/// <p>
/// The uri of the participant. 
/// An absolute URL is preferred.
Property uri As %String(MAXLEN = 1000000, XMLNAME = "uri", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// The display name of the participant.
Property display As %String(MAXLEN = 1000000, XMLNAME = "display", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestReport.participant";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestReport.participant";

Storage Default
{
<Data name="participantDefaultData">
<Subscript>"participant"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>uri</Value>
</Value>
<Value name="3">
<Value>display</Value>
</Value>
</Data>
<DefaultData>participantDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
