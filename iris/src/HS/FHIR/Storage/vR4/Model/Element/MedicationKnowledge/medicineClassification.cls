/// Categorization of the medication within a formulary or classification system.
Class HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.medicineClassification Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The type of category for the medication (for example, 
/// therapeutic classification, 
/// therapeutic sub-classification)
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Specific category assigned to the medication.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property classification As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "classification", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.medicineClassification";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.medicineClassification";

Storage Default
{
<Data name="classification">
<Attribute>classification</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.medicineClassification.classification"</Subscript>
</Data>
<Data name="medicineClassificationDefaultData">
<Subscript>"medicineClassification"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
</Data>
<DefaultData>medicineClassificationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
