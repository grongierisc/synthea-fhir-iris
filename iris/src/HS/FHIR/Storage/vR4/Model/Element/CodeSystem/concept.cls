/// Concepts in the code system.
Class HS.FHIR.Storage.vR4.Model.Element.CodeSystem.concept Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// Code that identifies concept.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Text to display to the user.
Property display As %String(MAXLEN = 1000000, XMLNAME = "display", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Formal definition.
Property definition As %String(MAXLEN = 1000000, XMLNAME = "definition", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Additional representations for the concept.
Property designation As array Of HS.FHIR.Storage.vR4.Model.Element.CodeSystem.concept.designation(XMLNAME = "designation", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Property value for the concept.
Property property As array Of HS.FHIR.Storage.vR4.Model.Element.CodeSystem.concept.property(XMLNAME = "property", XMLPROJECTION = "ELEMENT");

/// CodeSystem:concept
/// <p>
/// Child Concepts (is-a/contains/categorizes)
Property concept As array Of HS.FHIR.Storage.vR4.Model.Element.CodeSystem.concept(XMLNAME = "concept", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CodeSystem.concept";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CodeSystem.concept";

Storage Default
{
<Data name="concept">
<Attribute>concept</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.CodeSystem.concept.concept"</Subscript>
</Data>
<Data name="conceptDefaultData">
<Subscript>"concept"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>display</Value>
</Value>
<Value name="3">
<Value>definition</Value>
</Value>
</Data>
<Data name="designation">
<Attribute>designation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.CodeSystem.concept.designation"</Subscript>
</Data>
<Data name="property">
<Attribute>property</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.CodeSystem.concept.property"</Subscript>
</Data>
<DefaultData>conceptDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
