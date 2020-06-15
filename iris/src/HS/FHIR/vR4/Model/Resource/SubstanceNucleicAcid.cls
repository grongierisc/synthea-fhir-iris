/// Nucleic acids are defined by three distinct elements: the base, 
/// sugar and linkage. 
/// Individual substance/moiety IDs will be created for each of these elements. 
/// The nucleotide sequence will be always entered in the 5?-3? direction.
Class HS.FHIR.vR4.Model.Resource.SubstanceNucleicAcid Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The type of the sequence shall be specified based on a controlled vocabulary.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property sequenceType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "sequenceType", XMLPROJECTION = "ELEMENT");

/// integer
/// <p>
/// The number of linear sequences of nucleotides linked through phosphodiester bonds shall be described. 
/// Subunits would be strands of nucleic acids that are tightly associated typically through Watson-Crick base pairing. 
/// NOTE: If not specified in the reference source, 
/// the assumption is that there is 1 subunit.
Property numberOfSubunits As %Integer(XMLNAME = "numberOfSubunits", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// The area of hybridisation shall be described if applicable for double stranded RNA or DNA. 
/// The number associated with the subunit followed by the number associated to the residue shall be specified in increasing order. 
/// The underscore ?? shall be used as separator as follows: ?Subunitnumber Residue?
Property areaOfHybridisation As %String(MAXLEN = 1000000, XMLNAME = "areaOfHybridisation", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// (TBC)
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property oligoNucleotideType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "oligoNucleotideType", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Subunits are listed in order of decreasing length; 
/// sequences of the same length will be ordered by molecular weight; 
/// subunits that have identical sequences will be repeated multiple times.
Property subunit As List Of HS.FHIR.vR4.Model.Element.SubstanceNucleicAcid.subunit(XMLNAME = "subunit", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceNucleicAcid";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceNucleicAcid";

}
