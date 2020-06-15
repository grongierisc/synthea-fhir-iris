/// A series of required clean up steps.
Class HS.FHIR.vR4.Model.Element.TestScript.teardown Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// BackboneElement
/// <p>
/// One or more teardown operations to perform.
Property action As List Of HS.FHIR.vR4.Model.Element.TestScript.teardown.action(XMLNAME = "action", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.teardown";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.teardown";

}
