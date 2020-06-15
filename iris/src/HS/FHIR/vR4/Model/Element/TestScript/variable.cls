/// Placeholder for evaluated elements.
Class HS.FHIR.vR4.Model.Element.TestScript.variable Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Descriptive name for this variable.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Default, 
/// hard-coded, 
/// or user-defined value for this variable.
Property defaultValue As %String(MAXLEN = 1000000, XMLNAME = "defaultValue", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Natural language description of the variable.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// The FHIRPath expression against the fixture body.
Property expression As %String(MAXLEN = 1000000, XMLNAME = "expression", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// HTTP header field name for source.
Property headerField As %String(MAXLEN = 1000000, XMLNAME = "headerField", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Hint help text for default value to enter.
Property hint As %String(MAXLEN = 1000000, XMLNAME = "hint", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// XPath or JSONPath against the fixture body.
Property path As %String(MAXLEN = 1000000, XMLNAME = "path", XMLPROJECTION = "ATTRIBUTE");

/// id
/// <p>
/// Fixture Id of source expression or headerField within this variable.
Property sourceId As %String(MAXLEN = 1000000, XMLNAME = "sourceId", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.variable";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.variable";

}
