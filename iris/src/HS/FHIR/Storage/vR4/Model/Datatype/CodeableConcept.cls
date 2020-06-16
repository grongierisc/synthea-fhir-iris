/// Concept - reference to a terminology or just  text.
Class HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// Coding
/// <p>
/// Code defined by a terminology system.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property coding As array Of HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "coding", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Plain text representation of the concept.
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CodeableConcept";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CodeableConcept";

Storage Default
{
<Data name="CodeableConceptDefaultData">
<Subscript>"CodeableConcept"</Subscript>
<Value name="1">
<Value>text</Value>
</Value>
</Data>
<Data name="coding">
<Attribute>coding</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept.coding"</Subscript>
</Data>
<DefaultData>CodeableConceptDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
