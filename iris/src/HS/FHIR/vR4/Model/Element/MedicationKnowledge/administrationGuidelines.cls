/// Guidelines for administration of the medication.
Class HS.FHIR.vR4.Model.Element.MedicationKnowledge.administrationGuidelines Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// BackboneElement
/// <p>
/// Dosage for the medication for the specific guidelines.
Property dosage As List Of HS.FHIR.vR4.Model.Element.MedicationKnowledge.administrationGuidelines.dosage(XMLNAME = "dosage", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Indication for use that apply to the specific administration guidelines.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property indicationCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "indicationCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Indication for use that apply to the specific administration guidelines.
/// <p>
/// ObservationDefinition.
Property indicationReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "indicationReference", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Characteristics of the patient that are relevant to the administration guidelines.
Property patientCharacteristics As List Of HS.FHIR.vR4.Model.Element.MedicationKnowledge.administrationGuidelines.patientCharacteristics(XMLNAME = "patientCharacteristics", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.administrationGuidelines";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.administrationGuidelines";

}
