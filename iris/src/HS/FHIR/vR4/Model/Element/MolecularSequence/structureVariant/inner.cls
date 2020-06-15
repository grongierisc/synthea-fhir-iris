/// Structural variant inner.
Class HS.FHIR.vR4.Model.Element.MolecularSequence.structureVariant.inner Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// integer
/// <p>
/// Structural variant inner start.
Property start As %Integer(XMLNAME = "start", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Structural variant inner end.
Property end As %Integer(XMLNAME = "end", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MolecularSequence.structureVariant.inner";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MolecularSequence.structureVariant.inner";

}
