/// Todo.
Class HS.FHIR.Storage.vR4.Model.Element.SubstanceReferenceInformation.geneElement Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Todo.
Property element As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "element", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Todo.
/// <p>
/// DocumentReference
Property source As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceReferenceInformation.geneElement";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceReferenceInformation.geneElement";

Storage Default
{
<Data name="geneElementDefaultData">
<Subscript>"geneElement"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>element</Value>
</Value>
</Data>
<Data name="source">
<Attribute>source</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceReferenceInformation.geneElement.source"</Subscript>
</Data>
<DefaultData>geneElementDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
