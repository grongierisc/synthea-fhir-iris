/// What operations are supported?
Class HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.rest.resource.interaction Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// read | vread | update | patch | delete | history-instance | history-type | create | search-type
/// <p>
/// type-restful-interaction|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend type-restful-interaction|4.0.1 and you may NOT use codes from other ValueSets.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// markdown
/// <p>
/// Anything special about operation behavior.
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CapabilityStatement.rest.resource.interaction";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CapabilityStatement.rest.resource.interaction";

Storage Default
{
<Data name="interactionDefaultData">
<Subscript>"interaction"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>documentation</Value>
</Value>
</Data>
<DefaultData>interactionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
