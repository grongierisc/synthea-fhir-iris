/// Applicable for single substances that contain a radionuclide or a non-natural isotopic ratio.
Class HS.FHIR.vR4.Model.Element.SubstanceSpecification.structure.isotope Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Substance identifier for each non-natural or radioisotope.
Property identifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Substance name for each non-natural or radioisotope.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property name As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "name", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The type of isotopic substitution present in a single substance.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property substitution As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "substitution", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Half life - for a non-natural nuclide.
Property halfLife As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "halfLife", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The molecular weight or weight range (for proteins, 
/// polymers or nucleic acids)
Property molecularWeight As HS.FHIR.vR4.Model.Element.SubstanceSpecification.structure.isotope.molecularWeight(XMLNAME = "molecularWeight", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSpecification.structure.isotope";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSpecification.structure.isotope";

}
