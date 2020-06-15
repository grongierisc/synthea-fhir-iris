/// A test in this script.
Class HS.FHIR.vR4.Model.Element.TestScript.test Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Tracking/logging name of this test.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Tracking/reporting short description of the test.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// A test operation or assert to perform.
Property action As List Of HS.FHIR.vR4.Model.Element.TestScript.test.action(XMLNAME = "action", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.test";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.test";

}
