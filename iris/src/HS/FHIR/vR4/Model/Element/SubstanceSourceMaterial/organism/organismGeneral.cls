/// 4.9.13.7.1 Kingdom (Conditional)
Class HS.FHIR.vR4.Model.Element.SubstanceSourceMaterial.organism.organismGeneral Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The kingdom of an organism shall be specified.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property kingdom As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "kingdom", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The phylum of an organism shall be specified.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property phylum As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "phylum", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The class of an organism shall be specified.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property class As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "class", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The order of an organism shall be specified,
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property order As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "order", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSourceMaterial.organism.organismGeneral";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSourceMaterial.organism.organismGeneral";

}
