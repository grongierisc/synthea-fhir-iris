/// Map element to another set of definitions.
Class HS.FHIR.Storage.vR4.Model.Element.ElementDefinition.mapping Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// id
/// <p>
/// Reference to mapping declaration.
Property identity As %String(MAXLEN = 1000000, XMLNAME = "identity", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// Computable language of mapping.
/// <p>
/// mimetypes|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend mimetypes|4.0.1 and you may NOT use codes from other ValueSets.
Property language As %String(MAXLEN = 1000000, XMLNAME = "language", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Details of the mapping.
Property map As %String(MAXLEN = 1000000, XMLNAME = "map", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Comments about the mapping or its use.
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "mapping";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "mapping";

Storage Default
{
<Data name="mappingDefaultData">
<Subscript>"mapping"</Subscript>
<Value name="1">
<Value>identity</Value>
</Value>
<Value name="2">
<Value>language</Value>
</Value>
<Value name="3">
<Value>map</Value>
</Value>
<Value name="4">
<Value>comment</Value>
</Value>
</Data>
<DefaultData>mappingDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
