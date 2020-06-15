/// Variant in sequence.
Class HS.FHIR.vR4.Model.Element.MolecularSequence.variant Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// integer
/// <p>
/// Start position of the variant on the  reference sequence.
Property start As %Integer(XMLNAME = "start", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// End position of the variant on the reference sequence.
Property end As %Integer(XMLNAME = "end", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Allele that was observed.
Property observedAllele As %String(MAXLEN = 1000000, XMLNAME = "observedAllele", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Allele in the reference sequence.
Property referenceAllele As %String(MAXLEN = 1000000, XMLNAME = "referenceAllele", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Extended CIGAR string for aligning the sequence with reference bases.
Property cigar As %String(MAXLEN = 1000000, XMLNAME = "cigar", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Pointer to observed variant information.
/// <p>
/// Observation
Property variantPointer As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "variantPointer", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MolecularSequence.variant";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MolecularSequence.variant";

}
