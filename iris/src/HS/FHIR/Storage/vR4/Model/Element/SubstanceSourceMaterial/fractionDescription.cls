/// Many complex materials are fractions of parts of plants, 
/// animals, 
/// or minerals. 
/// Fraction elements are often necessary to define both Substances and Specified Group 1 Substances. 
/// For substances derived from Plants, 
/// fraction information will be captured at the Substance information level ( . 
/// Oils, 
/// Juices and Exudates). 
/// Additional information for Extracts, 
/// such as extraction solvent composition, 
/// will be captured at the Specified Substance Group 1 information level. 
/// For plasma-derived products fraction information will be captured at the Substance and the Specified Substance Group 1 levels.
Class HS.FHIR.Storage.vR4.Model.Element.SubstanceSourceMaterial.fractionDescription Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// This element is capturing information about the fraction of a plant part, 
/// or human plasma for fractionation.
Property fraction As %String(MAXLEN = 1000000, XMLNAME = "fraction", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// The specific type of the material constituting the component. 
/// For Herbal preparations the particulars of the extracts (liquid/dry) is described in Specified Substance Group 1.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property materialType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "materialType", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSourceMaterial.fractionDescription";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSourceMaterial.fractionDescription";

Storage Default
{
<Data name="fractionDescriptionDefaultData">
<Subscript>"fractionDescription"</Subscript>
<Value name="1">
<Value>fraction</Value>
</Value>
<Value name="2">
<Value>materialType</Value>
</Value>
</Data>
<DefaultData>fractionDescriptionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
