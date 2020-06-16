/// One or more teardown operations to perform.
Class HS.FHIR.Storage.vR4.Model.Element.TestScript.teardown.action Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// TestScript:setup.action[n].operation
/// <p>
/// The teardown operation to perform.
Property operation As HS.FHIR.Storage.vR4.Model.Element.TestScript.setup.action.operation(XMLNAME = "operation", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.teardown.action";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.teardown.action";

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
