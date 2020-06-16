/// A setup operation or assert that was executed.
Class HS.FHIR.Storage.vR4.Model.Element.TestReport.setup.action Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// BackboneElement
/// <p>
/// The operation to perform.
Property operation As HS.FHIR.Storage.vR4.Model.Element.TestReport.setup.action.operation(XMLNAME = "operation", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The assertion to perform.
Property assert As HS.FHIR.Storage.vR4.Model.Element.TestReport.setup.action.assert(XMLNAME = "assert", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestReport.setup.action";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestReport.setup.action";

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
