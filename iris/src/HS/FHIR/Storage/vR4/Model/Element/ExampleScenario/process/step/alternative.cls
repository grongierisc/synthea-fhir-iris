/// Alternate non-typical step action.
Class HS.FHIR.Storage.vR4.Model.Element.ExampleScenario.process.step.alternative Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Label for alternative.
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// markdown
/// <p>
/// A human-readable description of each option.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// ExampleScenario:process[n].step
/// <p>
/// What happens in each alternative option.
Property step As array Of HS.FHIR.Storage.vR4.Model.Element.ExampleScenario.process.step(XMLNAME = "step", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExampleScenario.process.step.alternative";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExampleScenario.process.step.alternative";

Storage Default
{
<Data name="alternativeDefaultData">
<Subscript>"alternative"</Subscript>
<Value name="1">
<Value>title</Value>
</Value>
<Value name="2">
<Value>description</Value>
</Value>
</Data>
<Data name="step">
<Attribute>step</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ExampleScenario.process.step.alternative.step"</Subscript>
</Data>
<DefaultData>alternativeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
