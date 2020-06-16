/// The detailed description of a substance, 
/// typically at a level beyond what is used for prescribing.
Class HS.FHIR.Storage.vR4.Model.Resource.SubstanceSpecification Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Identifier by which this substance is known.
Property identifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// High level categorization, 
/// e.g. 
/// polymer or nucleic acid.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Status of substance within the catalogue e.g. 
/// approved.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property status As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// If the substance applies to only human or veterinary use.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property domain As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "domain", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Textual description of the substance.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Supporting literature.
/// <p>
/// DocumentReference
Property source As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Textual comment about this record of a substance.
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Moiety, 
/// for structural modifications.
Property moiety As array Of HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.moiety(XMLNAME = "moiety", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// General specifications for this substance, 
/// including how it is related to other substances.
Property property As array Of HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.property(XMLNAME = "property", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// General information detailing this substance.
/// <p>
/// SubstanceReferenceInformation
Property referenceInformation As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "referenceInformation", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Structural information.
Property structure As HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.structure(XMLNAME = "structure", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Codes associated with the substance.
Property code As array Of HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.code(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Names applicable to this substance.
Property name As array Of HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.name(XMLNAME = "name", XMLPROJECTION = "ELEMENT");

/// SubstanceSpecification:structure.isotope[n].molecularWeight
/// <p>
/// The molecular weight or weight range (for proteins, 
/// polymers or nucleic acids)
Property molecularWeight As array Of HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.structure.isotope.molecularWeight(XMLNAME = "molecularWeight", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A link between this substance and another, 
/// with details of the relationship.
Property relationship As array Of HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.relationship(XMLNAME = "relationship", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Data items specific to nucleic acids.
/// <p>
/// SubstanceNucleicAcid
Property nucleicAcid As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "nucleicAcid", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Data items specific to polymers.
/// <p>
/// SubstancePolymer
Property polymer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "polymer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Data items specific to proteins.
/// <p>
/// SubstanceProtein
Property protein As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "protein", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Material or taxonomic/anatomical source for the substance.
/// <p>
/// SubstanceSourceMaterial
Property sourceMaterial As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "sourceMaterial", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSpecification";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSpecification";

Storage Default
{
<Data name="SubstanceSpecificationDefaultData">
<Subscript>"SubstanceSpecification"</Subscript>
<Value name="1">
<Value>identifier</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
<Value name="3">
<Value>status</Value>
</Value>
<Value name="4">
<Value>domain</Value>
</Value>
<Value name="5">
<Value>description</Value>
</Value>
<Value name="6">
<Value>comment</Value>
</Value>
<Value name="7">
<Value>referenceInformation</Value>
</Value>
<Value name="8">
<Value>structure</Value>
</Value>
<Value name="9">
<Value>nucleicAcid</Value>
</Value>
<Value name="10">
<Value>polymer</Value>
</Value>
<Value name="11">
<Value>protein</Value>
</Value>
<Value name="12">
<Value>sourceMaterial</Value>
</Value>
</Data>
<Data name="code">
<Attribute>code</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SubstanceSpecification.code"</Subscript>
</Data>
<Data name="moiety">
<Attribute>moiety</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SubstanceSpecification.moiety"</Subscript>
</Data>
<Data name="molecularWeight">
<Attribute>molecularWeight</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SubstanceSpecification.molecularWeight"</Subscript>
</Data>
<Data name="name">
<Attribute>name</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SubstanceSpecification.name"</Subscript>
</Data>
<Data name="property">
<Attribute>property</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SubstanceSpecification.property"</Subscript>
</Data>
<Data name="relationship">
<Attribute>relationship</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SubstanceSpecification.relationship"</Subscript>
</Data>
<Data name="source">
<Attribute>source</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SubstanceSpecification.source"</Subscript>
</Data>
<DefaultData>SubstanceSpecificationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
