/// If this describes a specific package/container of the substance.
Class HS.FHIR.Storage.vR4.Model.Element.Substance.instance Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Identifier of the package/container.
Property identifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When no longer valid to use.
Property expiry As %String(MAXLEN = 1000000, XMLNAME = "expiry", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// Amount of substance in the package.
Property quantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Substance.instance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Substance.instance";

Storage Default
{
<Data name="instanceDefaultData">
<Subscript>"instance"</Subscript>
<Value name="1">
<Value>identifier</Value>
</Value>
<Value name="2">
<Value>expiry</Value>
</Value>
<Value name="3">
<Value>quantity</Value>
</Value>
</Data>
<DefaultData>instanceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
