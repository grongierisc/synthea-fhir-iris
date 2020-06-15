/// Describes the results of a TestScript execution.
Class HS.FHIR.vR4.Model.Resource.TestReport Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External identifier.
Property identifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Informal name of the executed TestScript.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// completed | in-progress | waiting | stopped | entered-in-error
/// <p>
/// report-status-codes|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend report-status-codes|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Reference to the  version-specific TestScript that was executed to produce this TestReport.
/// <p>
/// TestScript
Property testScript As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "testScript", XMLPROJECTION = "ELEMENT") [ Required ];

/// code
/// <p>
/// pass | fail | pending
/// <p>
/// report-result-codes|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend report-result-codes|4.0.1 and you may NOT use codes from other ValueSets.
Property result As %String(MAXLEN = 1000000, XMLNAME = "result", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// decimal
/// <p>
/// The final score (percentage of tests passed) resulting from the execution of the TestScript.
Property score As %Decimal(XMLNAME = "score", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name of the tester producing this report (Organization or individual)
Property tester As %String(MAXLEN = 1000000, XMLNAME = "tester", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// When the TestScript was executed and this TestReport was generated.
Property issued As %String(MAXLEN = 1000000, XMLNAME = "issued", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// A participant in the test execution, 
/// either the execution engine, 
/// a client, 
/// or a server.
Property participant As List Of HS.FHIR.vR4.Model.Element.TestReport.participant(XMLNAME = "participant", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The results of the series of required setup operations before the tests were executed.
Property setup As HS.FHIR.vR4.Model.Element.TestReport.setup(XMLNAME = "setup", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A test executed from the test script.
Property test As List Of HS.FHIR.vR4.Model.Element.TestReport.test(XMLNAME = "test", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The results of running the series of required clean up steps.
Property teardown As HS.FHIR.vR4.Model.Element.TestReport.teardown(XMLNAME = "teardown", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestReport";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestReport";

}
