/// Characteristics of the patient that are relevant to the administration guidelines.
Class HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.administrationGuidelines.patientCharacteristics Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Specific characteristic that is relevant to the administration guideline.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property characteristicCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "characteristicCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Quantity
/// <p>
/// Specific characteristic that is relevant to the administration guideline.
Property characteristicQuantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "characteristicQuantity", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// The specific characteristic.
Property value As array Of %String(MAXLEN = 1000000, XMLNAME = "value", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.administrationGuidelines.patientCharacteristics";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.administrationGuidelines.patientCharacteristics";

Storage Default
{
<Data name="patientCharacteristicsDefaultData">
<Subscript>"patientCharacteristics"</Subscript>
<Value name="1">
<Value>characteristicCodeableConcept</Value>
</Value>
<Value name="2">
<Value>characteristicQuantity</Value>
</Value>
</Data>
<Data name="value">
<Attribute>value</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.administrationGuidelines.patientCharacteristics.value"</Subscript>
</Data>
<DefaultData>patientCharacteristicsDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
