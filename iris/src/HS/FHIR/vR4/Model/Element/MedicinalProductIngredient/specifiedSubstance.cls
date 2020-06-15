/// A specified substance that comprises this ingredient.
Class HS.FHIR.vR4.Model.Element.MedicinalProductIngredient.specifiedSubstance Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The specified substance.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// The group of specified substance, 
/// e.g. 
/// group 1 to 4.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property group As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "group", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Confidentiality level of the specified substance as the ingredient.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property confidentiality As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "confidentiality", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product.
Property strength As List Of HS.FHIR.vR4.Model.Element.MedicinalProductIngredient.specifiedSubstance.strength(XMLNAME = "strength", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductIngredient.specifiedSubstance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductIngredient.specifiedSubstance";

}
