/// A test operation or assert that was performed.
Class HS.FHIR.Storage.vR4.Model.Element.TestReport.test.action Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// TestReport:setup.action[n].operation
/// <p>
/// The operation performed.
Property operation As HS.FHIR.Storage.vR4.Model.Element.TestReport.setup.action.operation(XMLNAME = "operation", XMLPROJECTION = "ELEMENT");

/// TestReport:setup.action[n].assert
/// <p>
/// The assertion performed.
Property assert As HS.FHIR.Storage.vR4.Model.Element.TestReport.setup.action.assert(XMLNAME = "assert", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestReport.test.action";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestReport.test.action";

Storage Default
{
<Data name="actionDefaultData">
<Subscript>"action"</Subscript>
<Value name="1">
<Value>operation</Value>
</Value>
<Value name="2">
<Value>assert</Value>
</Value>
</Data>
<DefaultData>actionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
