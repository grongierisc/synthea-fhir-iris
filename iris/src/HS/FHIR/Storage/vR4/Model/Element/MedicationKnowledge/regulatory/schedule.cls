/// Specifies the schedule of a medication in jurisdiction.
Class HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.regulatory.schedule Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Specifies the specific drug schedule.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property schedule As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "schedule", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.regulatory.schedule";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.regulatory.schedule";

Storage Default
{
<Data name="scheduleDefaultData">
<Subscript>"schedule"</Subscript>
<Value name="1">
<Value>schedule</Value>
</Value>
</Data>
<DefaultData>scheduleDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
