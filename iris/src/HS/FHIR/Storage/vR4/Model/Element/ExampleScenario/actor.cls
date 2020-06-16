/// Actor participating in the resource.
Class HS.FHIR.Storage.vR4.Model.Element.ExampleScenario.actor Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// ID or acronym of the actor.
Property actorId As %String(MAXLEN = 1000000, XMLNAME = "actorId", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// person | entity
/// <p>
/// examplescenario-actor-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend examplescenario-actor-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// The name of the actor as shown in the page.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// The description of the actor.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExampleScenario.actor";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExampleScenario.actor";

Storage Default
{
<Data name="actorDefaultData">
<Subscript>"actor"</Subscript>
<Value name="1">
<Value>actorId</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
<Value name="3">
<Value>name</Value>
</Value>
<Value name="4">
<Value>description</Value>
</Value>
</Data>
<DefaultData>actorDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
