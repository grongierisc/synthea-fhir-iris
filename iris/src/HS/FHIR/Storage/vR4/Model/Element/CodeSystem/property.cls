/// Additional information supplied about each concept.
Class HS.FHIR.Storage.vR4.Model.Element.CodeSystem.property Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// Identifies the property on the concepts, 
/// and when referred to in operations.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// uri
/// <p>
/// Formal identifier for the property.
Property uri As %String(MAXLEN = 1000000, XMLNAME = "uri", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Why the property is defined, 
/// and/or what it conveys.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// code | Coding | string | integer | boolean | dateTime | decimal
/// <p>
/// concept-property-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend concept-property-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CodeSystem.property";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CodeSystem.property";

Storage Default
{
<Data name="propertyDefaultData">
<Subscript>"property"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>uri</Value>
</Value>
<Value name="3">
<Value>description</Value>
</Value>
<Value name="4">
<Value>type</Value>
</Value>
</Data>
<DefaultData>propertyDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
