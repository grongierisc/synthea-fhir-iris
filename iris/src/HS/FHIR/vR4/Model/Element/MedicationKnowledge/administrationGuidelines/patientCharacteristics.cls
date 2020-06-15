/// Characteristics of the patient that are relevant to the administration guidelines.
Class HS.FHIR.vR4.Model.Element.MedicationKnowledge.administrationGuidelines.patientCharacteristics Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Specific characteristic that is relevant to the administration guideline.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property characteristicCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "characteristicCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Quantity
/// <p>
/// Specific characteristic that is relevant to the administration guideline.
Property characteristicQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "characteristicQuantity", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// The specific characteristic.
Property value As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "value", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.administrationGuidelines.patientCharacteristics";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.administrationGuidelines.patientCharacteristics";

}
