/// References to this parameter.
Class HS.FHIR.Storage.vR4.Model.Element.OperationDefinition.parameter.referencedFrom Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Referencing parameter.
Property source As %String(MAXLEN = 1000000, XMLNAME = "source", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Element id of reference.
Property sourceId As %String(MAXLEN = 1000000, XMLNAME = "sourceId", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "OperationDefinition.parameter.referencedFrom";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "OperationDefinition.parameter.referencedFrom";

Storage Default
{
<Data name="referencedFromDefaultData">
<Subscript>"referencedFrom"</Subscript>
<Value name="1">
<Value>source</Value>
</Value>
<Value name="2">
<Value>sourceId</Value>
</Value>
</Data>
<DefaultData>referencedFromDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
