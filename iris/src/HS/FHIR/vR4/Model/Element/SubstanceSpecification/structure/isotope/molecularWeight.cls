/// The molecular weight or weight range (for proteins, 
/// polymers or nucleic acids)
Class HS.FHIR.vR4.Model.Element.SubstanceSpecification.structure.isotope.molecularWeight Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The method by which the molecular weight was determined.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property method As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "method", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type of molecular weight such as exact, 
/// average (also known as. 
/// number average), 
/// weight average.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Used to capture quantitative values for a variety of elements. 
/// If only limits are given, 
/// the arithmetic mean would be the average. 
/// If only a single definite value for a given element is given, 
/// it would be captured in this field.
Property amount As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "amount", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSpecification.structure.isotope.molecularWeight";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSpecification.structure.isotope.molecularWeight";

}
