/// Results of execution (transaction/batch/history)
Class HS.FHIR.Storage.vR4.Model.Element.Bundle.entry.response Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Status response code (text optional)
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// uri
/// <p>
/// The location (if the operation returns a location)
Property location As %String(MAXLEN = 1000000, XMLNAME = "location", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// The Etag for the resource (if relevant)
Property etag As %String(MAXLEN = 1000000, XMLNAME = "etag", XMLPROJECTION = "ATTRIBUTE");

/// instant
/// <p>
/// Server's date time modified.
Property lastModified As %String(MAXLEN = 1000000, XMLNAME = "lastModified", XMLPROJECTION = "ATTRIBUTE");

/// Resource
/// <p>
/// OperationOutcome with hints and warnings (for batch/transaction)
Property outcome As HS.FHIR.Storage.vR4.Model.Base.Resource(XMLNAME = "outcome", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Bundle.entry.response";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Bundle.entry.response";

Storage Default
{
<Data name="responseDefaultData">
<Subscript>"response"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>location</Value>
</Value>
<Value name="3">
<Value>etag</Value>
</Value>
<Value name="4">
<Value>lastModified</Value>
</Value>
<Value name="5">
<Value>outcome</Value>
</Value>
</Data>
<DefaultData>responseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
