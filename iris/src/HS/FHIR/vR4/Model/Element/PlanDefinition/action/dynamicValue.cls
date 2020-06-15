/// Dynamic aspects of the definition.
Class HS.FHIR.vR4.Model.Element.PlanDefinition.action.dynamicValue Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// The path to the element to be set dynamically.
Property path As %String(MAXLEN = 1000000, XMLNAME = "path", XMLPROJECTION = "ATTRIBUTE");

/// Expression
/// <p>
/// An expression that provides the dynamic value for the customization.
Property expression As HS.FHIR.vR4.Model.Datatype.Expression(XMLNAME = "expression", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "PlanDefinition.action.dynamicValue";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "PlanDefinition.action.dynamicValue";

}
