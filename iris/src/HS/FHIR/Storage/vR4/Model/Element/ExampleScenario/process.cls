/// Each major process - a group of operations.
Class HS.FHIR.Storage.vR4.Model.Element.ExampleScenario.process Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// The diagram title of the group of operations.
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// markdown
/// <p>
/// A longer description of the group of operations.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Description of initial status before the process starts.
Property preConditions As %String(MAXLEN = 1000000, XMLNAME = "preConditions", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Description of final status after the process ends.
Property postConditions As %String(MAXLEN = 1000000, XMLNAME = "postConditions", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Each step of the process.
Property step As array Of HS.FHIR.Storage.vR4.Model.Element.ExampleScenario.process.step(XMLNAME = "step", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExampleScenario.process";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExampleScenario.process";

Storage Default
{
<Data name="processDefaultData">
<Subscript>"process"</Subscript>
<Value name="1">
<Value>title</Value>
</Value>
<Value name="2">
<Value>description</Value>
</Value>
<Value name="3">
<Value>preConditions</Value>
</Value>
<Value name="4">
<Value>postConditions</Value>
</Value>
</Data>
<Data name="step">
<Attribute>step</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ExampleScenario.process.step"</Subscript>
</Data>
<DefaultData>processDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
