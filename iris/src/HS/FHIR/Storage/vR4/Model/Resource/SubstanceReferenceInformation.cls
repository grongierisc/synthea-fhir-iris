/// Todo.
Class HS.FHIR.Storage.vR4.Model.Resource.SubstanceReferenceInformation Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Todo.
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Todo.
Property gene As array Of HS.FHIR.Storage.vR4.Model.Element.SubstanceReferenceInformation.gene(XMLNAME = "gene", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Todo.
Property geneElement As array Of HS.FHIR.Storage.vR4.Model.Element.SubstanceReferenceInformation.geneElement(XMLNAME = "geneElement", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Todo.
Property classification As array Of HS.FHIR.Storage.vR4.Model.Element.SubstanceReferenceInformation.classification(XMLNAME = "classification", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Todo.
Property target As array Of HS.FHIR.Storage.vR4.Model.Element.SubstanceReferenceInformation.target(XMLNAME = "target", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceReferenceInformation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceReferenceInformation";

Storage Default
{
<Data name="SubstanceReferenceInformationDefaultData">
<Subscript>"SubstanceReferenceInformation"</Subscript>
<Value name="1">
<Value>comment</Value>
</Value>
</Data>
<Data name="classification">
<Attribute>classification</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SubstanceReferenceInformation.classification"</Subscript>
</Data>
<Data name="gene">
<Attribute>gene</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SubstanceReferenceInformation.gene"</Subscript>
</Data>
<Data name="geneElement">
<Attribute>geneElement</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SubstanceReferenceInformation.geneElement"</Subscript>
</Data>
<Data name="target">
<Attribute>target</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SubstanceReferenceInformation.target"</Subscript>
</Data>
<DefaultData>SubstanceReferenceInformationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
