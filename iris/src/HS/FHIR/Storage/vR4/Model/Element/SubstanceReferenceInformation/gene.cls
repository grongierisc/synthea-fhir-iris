/// Todo.
Class HS.FHIR.Storage.vR4.Model.Element.SubstanceReferenceInformation.gene Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property geneSequenceOrigin As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "geneSequenceOrigin", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property gene As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "gene", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Todo.
/// <p>
/// DocumentReference
Property source As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceReferenceInformation.gene";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceReferenceInformation.gene";

Storage Default
{
<Data name="geneDefaultData">
<Subscript>"gene"</Subscript>
<Value name="1">
<Value>geneSequenceOrigin</Value>
</Value>
<Value name="2">
<Value>gene</Value>
</Value>
</Data>
<Data name="source">
<Attribute>source</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceReferenceInformation.gene.source"</Subscript>
</Data>
<DefaultData>geneDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
