/// The assertion to perform.
Class HS.FHIR.Storage.vR4.Model.Element.TestReport.setup.action.assert Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// pass | skip | fail | warning | error
/// <p>
/// report-action-result-codes|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend report-action-result-codes|4.0.1 and you may NOT use codes from other ValueSets.
Property result As %String(MAXLEN = 1000000, XMLNAME = "result", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// markdown
/// <p>
/// A message associated with the result.
Property message As %String(MAXLEN = 1000000, XMLNAME = "message", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// A link to further details on the result.
Property detail As %String(MAXLEN = 1000000, XMLNAME = "detail", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestReport.setup.action.assert";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestReport.setup.action.assert";

Storage Default
{
<Data name="assertDefaultData">
<Subscript>"assert"</Subscript>
<Value name="1">
<Value>result</Value>
</Value>
<Value name="2">
<Value>message</Value>
</Value>
<Value name="3">
<Value>detail</Value>
</Value>
</Data>
<DefaultData>assertDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
