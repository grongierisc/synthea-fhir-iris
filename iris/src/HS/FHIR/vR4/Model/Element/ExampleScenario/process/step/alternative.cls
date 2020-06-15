/// Alternate non-typical step action.
Class HS.FHIR.vR4.Model.Element.ExampleScenario.process.step.alternative Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
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
Property step As List Of HS.FHIR.vR4.Model.Element.ExampleScenario.process.step(XMLNAME = "step", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExampleScenario.process.step.alternative";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExampleScenario.process.step.alternative";

}
