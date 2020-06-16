/// A setup operation or assert to perform.
Class HS.FHIR.Storage.vR4.Model.Element.TestScript.setup.action Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// BackboneElement
/// <p>
/// The setup operation to perform.
Property operation As HS.FHIR.Storage.vR4.Model.Element.TestScript.setup.action.operation(XMLNAME = "operation", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The assertion to perform.
Property assert As HS.FHIR.Storage.vR4.Model.Element.TestScript.setup.action.assert(XMLNAME = "assert", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.setup.action";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.setup.action";

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
