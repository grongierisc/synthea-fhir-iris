/// Associated or related medication information.
Class HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.relatedMedicationKnowledge Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Category of medicationKnowledge.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Associated documentation about the associated medication knowledge.
/// <p>
/// MedicationKnowledge
Property reference As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "reference", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.relatedMedicationKnowledge";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.relatedMedicationKnowledge";

Storage Default
{
<Data name="reference">
<Attribute>reference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.relatedMedicationKnowledge.reference"</Subscript>
</Data>
<Data name="relatedMedicationKnowledgeDefaultData">
<Subscript>"relatedMedicationKnowledge"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
</Data>
<DefaultData>relatedMedicationKnowledgeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
