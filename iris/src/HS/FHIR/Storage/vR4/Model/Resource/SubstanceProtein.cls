/// A SubstanceProtein is defined as a single unit of a linear amino acid sequence, 
/// or a combination of subunits that are either covalently linked or have a defined invariant stoichiometric relationship. 
/// This includes all synthetic, 
/// recombinant and purified SubstanceProteins of defined sequence, 
/// whether the use is therapeutic or prophylactic. 
/// This set of elements will be used to describe albumins, 
/// coagulation factors, 
/// cytokines, 
/// growth factors, 
/// peptide/SubstanceProtein hormones, 
/// enzymes, 
/// toxins, 
/// toxoids, 
/// recombinant vaccines, 
/// and immunomodulators.
Class HS.FHIR.Storage.vR4.Model.Resource.SubstanceProtein Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The SubstanceProtein descriptive elements will only be used when a complete or partial amino acid sequence is available or derivable from a nucleic acid sequence.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property sequenceType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "sequenceType", XMLPROJECTION = "ELEMENT");

/// integer
/// <p>
/// Number of linear sequences of amino acids linked through peptide bonds. 
/// The number of subunits constituting the SubstanceProtein shall be described. 
/// It is possible that the number of subunits can be variable.
Property numberOfSubunits As %Integer(XMLNAME = "numberOfSubunits", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// The disulphide bond between two cysteine residues either on the same subunit or on two different subunits shall be described. 
/// The position of the disulfide bonds in the SubstanceProtein shall be listed in increasing order of subunit number and position within subunit followed by the abbreviation of the amino acids involved. 
/// The disulfide linkage positions shall actually contain the amino acid Cysteine at the respective positions.
Property disulfideLinkage As array Of %String(MAXLEN = 1000000, XMLNAME = "disulfideLinkage", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// This subclause refers to the description of each subunit constituting the SubstanceProtein. 
/// A subunit is a linear sequence of amino acids linked through peptide bonds. 
/// The Subunit information shall be provided when the finished SubstanceProtein is a complex of multiple sequences; 
/// subunits are not used to delineate domains within a single sequence. 
/// Subunits are listed in order of decreasing length; 
/// sequences of the same length will be ordered by decreasing molecular weight; 
/// subunits that have identical sequences will be repeated multiple times.
Property subunit As array Of HS.FHIR.Storage.vR4.Model.Element.SubstanceProtein.subunit(XMLNAME = "subunit", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceProtein";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceProtein";

Storage Default
{
<Data name="SubstanceProteinDefaultData">
<Subscript>"SubstanceProtein"</Subscript>
<Value name="1">
<Value>sequenceType</Value>
</Value>
<Value name="2">
<Value>numberOfSubunits</Value>
</Value>
</Data>
<Data name="disulfideLinkage">
<Attribute>disulfideLinkage</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SubstanceProtein.disulfideLinkage"</Subscript>
</Data>
<Data name="subunit">
<Attribute>subunit</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SubstanceProtein.subunit"</Subscript>
</Data>
<DefaultData>SubstanceProteinDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
