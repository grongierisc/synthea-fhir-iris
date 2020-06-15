/// Structural variant.
Class HS.FHIR.vR4.Model.Element.MolecularSequence.structureVariant Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Structural variant change type.
/// <p>
/// LL379-9|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend LL379-9|4.0.1 and you may NOT use codes from other ValueSets.
Property variantType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "variantType", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Does the structural variant have base pair resolution breakpoints?
Property exact As %Boolean(XMLNAME = "exact", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Structural variant length.
Property length As %Integer(XMLNAME = "length", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Structural variant outer.
Property outer As HS.FHIR.vR4.Model.Element.MolecularSequence.structureVariant.outer(XMLNAME = "outer", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Structural variant inner.
Property inner As HS.FHIR.vR4.Model.Element.MolecularSequence.structureVariant.inner(XMLNAME = "inner", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MolecularSequence.structureVariant";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MolecularSequence.structureVariant";

}
