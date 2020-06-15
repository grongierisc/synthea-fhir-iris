/// Each major process - a group of operations.
Class HS.FHIR.vR4.Model.Element.ExampleScenario.process Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
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
Property step As List Of HS.FHIR.vR4.Model.Element.ExampleScenario.process.step(XMLNAME = "step", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExampleScenario.process";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExampleScenario.process";

}
