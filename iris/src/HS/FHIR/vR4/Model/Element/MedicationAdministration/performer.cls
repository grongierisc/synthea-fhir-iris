/// Who performed the medication administration and what they did.
Class HS.FHIR.vR4.Model.Element.MedicationAdministration.performer Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of performance.
/// <p>
/// any FHIR4 code may be used; 
/// med-admin-perform-function shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property function As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "function", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who performed the medication administration.
/// <p>
/// Practitioner | PractitionerRole | Patient | RelatedPerson | Device
Property actor As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "actor", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationAdministration.performer";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationAdministration.performer";

}
