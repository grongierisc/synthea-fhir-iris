/// The results of running the series of required clean up steps.
Class HS.FHIR.vR4.Model.Element.TestReport.teardown Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// BackboneElement
/// <p>
/// One or more teardown operations performed.
Property action As List Of HS.FHIR.vR4.Model.Element.TestReport.teardown.action(XMLNAME = "action", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestReport.teardown";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestReport.teardown";

}
