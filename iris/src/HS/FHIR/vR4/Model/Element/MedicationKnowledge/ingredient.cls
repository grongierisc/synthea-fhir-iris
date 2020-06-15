/// Active or inactive ingredient.
Class HS.FHIR.vR4.Model.Element.MedicationKnowledge.ingredient Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Medication(s) or substance(s) contained in the medication.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property itemCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "itemCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Medication(s) or substance(s) contained in the medication.
/// <p>
/// Substance.
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

Parameter XMLNAME = "MedicationKnowledge.ingredient";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.ingredient";

}
