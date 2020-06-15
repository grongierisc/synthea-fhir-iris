/// Active or inactive ingredient.
Class HS.FHIR.vR4.Model.Element.Medication.ingredient Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The actual ingredient or content.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property itemCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "itemCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// The actual ingredient or content.
/// <p>
/// Substance | Medication
Property itemReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "itemReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// boolean
/// <p>
/// Active ingredient indicator.
Property isActive As %Boolean(XMLNAME = "isActive", XMLPROJECTION = "ATTRIBUTE");

/// Ratio
/// <p>
/// Quantity of ingredient present.
Property strength As HS.FHIR.vR4.Model.Datatype.Ratio(XMLNAME = "strength", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Medication.ingredient";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Medication.ingredient";

}
