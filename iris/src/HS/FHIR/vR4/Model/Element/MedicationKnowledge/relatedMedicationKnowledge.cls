/// Associated or related medication information.
Class HS.FHIR.vR4.Model.Element.MedicationKnowledge.relatedMedicationKnowledge Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Category of medicationKnowledge.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Associated documentation about the associated medication knowledge.
/// <p>
/// MedicationKnowledge
Property reference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reference", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.relatedMedicationKnowledge";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.relatedMedicationKnowledge";

}
