/// Include one or more codes from a code system or other value set(s)
Class HS.FHIR.Storage.vR4.Model.Element.ValueSet.compose.include Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// The system the codes come from.
Property system As %String(MAXLEN = 1000000, XMLNAME = "system", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Specific version of the code system referred to.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// A concept defined in the system.
Property concept As array Of HS.FHIR.Storage.vR4.Model.Element.ValueSet.compose.include.concept(XMLNAME = "concept", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Select codes/concepts by their properties (including relationships)
Property filter As array Of HS.FHIR.Storage.vR4.Model.Element.ValueSet.compose.include.filter(XMLNAME = "filter", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Select the contents included in this value set.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueSet As array Of %String(MAXLEN = 1000000, XMLNAME = "valueSet", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ValueSet.compose.include";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ValueSet.compose.include";

Storage Default
{
<Data name="concept">
<Attribute>concept</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ValueSet.compose.include.concept"</Subscript>
</Data>
<Data name="filter">
<Attribute>filter</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ValueSet.compose.include.filter"</Subscript>
</Data>
<Data name="includeDefaultData">
<Subscript>"include"</Subscript>
<Value name="1">
<Value>system</Value>
</Value>
<Value name="2">
<Value>version</Value>
</Value>
</Data>
<Data name="valueSet">
<Attribute>valueSet</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ValueSet.compose.include.valueSet"</Subscript>
</Data>
<DefaultData>includeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
