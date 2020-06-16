/// The setup operation to perform.
Class HS.FHIR.Storage.vR4.Model.Element.TestScript.setup.action.operation Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Coding
/// <p>
/// The operation code type that will be executed.
/// <p>
/// testscript-operation-codes is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in testscript-operation-codes, 
/// you may formally EXTEND testscript-operation-codes to add codes to it.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// Resource type.
/// <p>
/// defined-types|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend defined-types|4.0.1 and you may NOT use codes from other ValueSets.
Property resource As %String(MAXLEN = 1000000, XMLNAME = "resource", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Tracking/logging operation label.
Property label As %String(MAXLEN = 1000000, XMLNAME = "label", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Tracking/reporting operation description.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Mime type to accept in the payload of the response, 
/// with charset etc.
/// <p>
/// mimetypes|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend mimetypes|4.0.1 and you may NOT use codes from other ValueSets.
Property accept As %String(MAXLEN = 1000000, XMLNAME = "accept", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Mime type of the request payload contents, 
/// with charset etc.
/// <p>
/// mimetypes|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend mimetypes|4.0.1 and you may NOT use codes from other ValueSets.
Property contentType As %String(MAXLEN = 1000000, XMLNAME = "contentType", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Server responding to the request.
Property destination As %Integer(XMLNAME = "destination", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Whether or not to send the request url in encoded format.
Property encodeRequestUrl As %Boolean(XMLNAME = "encodeRequestUrl", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// delete | get | options | patch | post | put | head
/// <p>
/// http-operations|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend http-operations|4.0.1 and you may NOT use codes from other ValueSets.
Property method As %String(MAXLEN = 1000000, XMLNAME = "method", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Server initiating the request.
Property origin As %Integer(XMLNAME = "origin", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Explicitly defined path parameters.
Property params As %String(MAXLEN = 1000000, XMLNAME = "params", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Each operation can have one or more header elements.
Property requestHeader As array Of HS.FHIR.Storage.vR4.Model.Element.TestScript.setup.action.operation.requestHeader(XMLNAME = "requestHeader", XMLPROJECTION = "ELEMENT");

/// id
/// <p>
/// Fixture Id of mapped request.
Property requestId As %String(MAXLEN = 1000000, XMLNAME = "requestId", XMLPROJECTION = "ATTRIBUTE");

/// id
/// <p>
/// Fixture Id of mapped response.
Property responseId As %String(MAXLEN = 1000000, XMLNAME = "responseId", XMLPROJECTION = "ATTRIBUTE");

/// id
/// <p>
/// Fixture Id of body for PUT and POST requests.
Property sourceId As %String(MAXLEN = 1000000, XMLNAME = "sourceId", XMLPROJECTION = "ATTRIBUTE");

/// id
/// <p>
/// Id of fixture used for extracting the [id], 
///  [type], 
/// and [vid] for GET requests.
Property targetId As %String(MAXLEN = 1000000, XMLNAME = "targetId", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Request URL.
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.setup.action.operation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.setup.action.operation";

Storage Default
{
<Data name="operationDefaultData">
<Subscript>"operation"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>resource</Value>
</Value>
<Value name="3">
<Value>label</Value>
</Value>
<Value name="4">
<Value>description</Value>
</Value>
<Value name="5">
<Value>accept</Value>
</Value>
<Value name="6">
<Value>contentType</Value>
</Value>
<Value name="7">
<Value>destination</Value>
</Value>
<Value name="8">
<Value>encodeRequestUrl</Value>
</Value>
<Value name="9">
<Value>method</Value>
</Value>
<Value name="10">
<Value>origin</Value>
</Value>
<Value name="11">
<Value>params</Value>
</Value>
<Value name="12">
<Value>requestId</Value>
</Value>
<Value name="13">
<Value>responseId</Value>
</Value>
<Value name="14">
<Value>sourceId</Value>
</Value>
<Value name="15">
<Value>targetId</Value>
</Value>
<Value name="16">
<Value>url</Value>
</Value>
</Data>
<Data name="requestHeader">
<Attribute>requestHeader</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.TestScript.setup.action.operation.requestHeader"</Subscript>
</Data>
<DefaultData>operationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
