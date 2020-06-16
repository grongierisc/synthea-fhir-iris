/// A test executed from the test script.
Class HS.FHIR.Storage.vR4.Model.Element.TestReport.test Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
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
/// A test operation or assert that was performed.
Property action As array Of HS.FHIR.Storage.vR4.Model.Element.TestReport.test.action(XMLNAME = "action", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestReport.test";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestReport.test";

Storage Default
{
<Data name="action">
<Attribute>action</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.TestReport.test.action"</Subscript>
</Data>
<Data name="testDefaultData">
<Subscript>"test"</Subscript>
<Value name="1">
<Value>name</Value>
</Value>
<Value name="2">
<Value>description</Value>
</Value>
</Data>
<DefaultData>testDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
