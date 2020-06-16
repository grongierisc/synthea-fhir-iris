/// A test operation or assert to perform.
Class HS.FHIR.Storage.vR4.Model.Element.TestScript.test.action Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// TestScript:setup.action[n].operation
/// <p>
/// The setup operation to perform.
Property operation As HS.FHIR.Storage.vR4.Model.Element.TestScript.setup.action.operation(XMLNAME = "operation", XMLPROJECTION = "ELEMENT");

/// TestScript:setup.action[n].assert
/// <p>
/// The setup assertion to perform.
Property assert As HS.FHIR.Storage.vR4.Model.Element.TestScript.setup.action.assert(XMLNAME = "assert", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.test.action";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.test.action";

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
