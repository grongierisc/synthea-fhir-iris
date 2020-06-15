/// Whether or not the billing code is applicable.
Class HS.FHIR.vR4.Model.Element.ChargeItemDefinition.applicability Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Natural language description of the condition.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Language of the expression.
Property language As %String(MAXLEN = 1000000, XMLNAME = "language", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Boolean-valued expression.
Property expression As %String(MAXLEN = 1000000, XMLNAME = "expression", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ChargeItemDefinition.applicability";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ChargeItemDefinition.applicability";

}
