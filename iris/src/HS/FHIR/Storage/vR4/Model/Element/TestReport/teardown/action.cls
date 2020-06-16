/// One or more teardown operations performed.
Class HS.FHIR.Storage.vR4.Model.Element.TestReport.teardown.action Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// TestReport:setup.action[n].operation
/// <p>
/// The teardown operation performed.
Property operation As HS.FHIR.Storage.vR4.Model.Element.TestReport.setup.action.operation(XMLNAME = "operation", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestReport.teardown.action";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestReport.teardown.action";

Storage Default
{
<Data name="actionDefaultData">
<Subscript>"action"</Subscript>
<Value name="1">
<Value>operation</Value>
</Value>
</Data>
<DefaultData>actionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
