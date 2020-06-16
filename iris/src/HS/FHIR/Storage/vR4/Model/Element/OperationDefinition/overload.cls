/// Define overloaded variants for when  generating code.
Class HS.FHIR.Storage.vR4.Model.Element.OperationDefinition.overload Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Name of parameter to include in overload.
Property parameterName As array Of %String(MAXLEN = 1000000, XMLNAME = "parameterName", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Comments to go on overload.
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "OperationDefinition.overload";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "OperationDefinition.overload";

Storage Default
{
<Data name="overloadDefaultData">
<Subscript>"overload"</Subscript>
<Value name="1">
<Value>comment</Value>
</Value>
</Data>
<Data name="parameterName">
<Attribute>parameterName</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.OperationDefinition.overload.parameterName"</Subscript>
</Data>
<DefaultData>overloadDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
