/// Dynamic aspects of the definition.
Class HS.FHIR.Storage.vR4.Model.Element.ActivityDefinition.dynamicValue Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// The path to the element to be set dynamically.
Property path As %String(MAXLEN = 1000000, XMLNAME = "path", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Expression
/// <p>
/// An expression that provides the dynamic value for the customization.
Property expression As HS.FHIR.Storage.vR4.Model.Datatype.Expression(XMLNAME = "expression", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ActivityDefinition.dynamicValue";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ActivityDefinition.dynamicValue";

Storage Default
{
<Data name="dynamicValueDefaultData">
<Subscript>"dynamicValue"</Subscript>
<Value name="1">
<Value>path</Value>
</Value>
<Value name="2">
<Value>expression</Value>
</Value>
</Data>
<DefaultData>dynamicValueDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
