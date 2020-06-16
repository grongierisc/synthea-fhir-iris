/// Guidelines for administration of the medication.
Class HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.administrationGuidelines Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// BackboneElement
/// <p>
/// Dosage for the medication for the specific guidelines.
Property dosage As array Of HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.administrationGuidelines.dosage(XMLNAME = "dosage", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Indication for use that apply to the specific administration guidelines.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property indicationCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "indicationCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Indication for use that apply to the specific administration guidelines.
/// <p>
/// ObservationDefinition.
Property indicationReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "indicationReference", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Characteristics of the patient that are relevant to the administration guidelines.
Property patientCharacteristics As array Of HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.administrationGuidelines.patientCharacteristics(XMLNAME = "patientCharacteristics", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.administrationGuidelines";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.administrationGuidelines";

Storage Default
{
<Data name="administrationGuidelinesDefaultData">
<Subscript>"administrationGuidelines"</Subscript>
<Value name="1">
<Value>indicationCodeableConcept</Value>
</Value>
<Value name="2">
<Value>indicationReference</Value>
</Value>
</Data>
<Data name="dosage">
<Attribute>dosage</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.administrationGuidelines.dosage"</Subscript>
</Data>
<Data name="patientCharacteristics">
<Attribute>patientCharacteristics</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.administrationGuidelines.patientCharacteristics"</Subscript>
</Data>
<DefaultData>administrationGuidelinesDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
