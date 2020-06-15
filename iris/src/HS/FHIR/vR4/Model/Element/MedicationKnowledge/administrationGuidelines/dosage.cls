/// Dosage for the medication for the specific guidelines.
Class HS.FHIR.vR4.Model.Element.MedicationKnowledge.administrationGuidelines.dosage Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of dosage.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Dosage
/// <p>
/// Dosage for the medication for the specific guidelines.
Property dosage As List Of HS.FHIR.vR4.Model.Element.Dosage(XMLNAME = "dosage", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.administrationGuidelines.dosage";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.administrationGuidelines.dosage";

}
