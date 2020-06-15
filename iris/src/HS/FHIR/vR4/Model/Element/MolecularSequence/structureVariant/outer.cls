/// Structural variant outer.
Class HS.FHIR.vR4.Model.Element.MolecularSequence.structureVariant.outer Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// integer
/// <p>
/// Structural variant outer start.
Property start As %Integer(XMLNAME = "start", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Structural variant outer end.
Property end As %Integer(XMLNAME = "end", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MolecularSequence.structureVariant.outer";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MolecularSequence.structureVariant.outer";

}
