/// Associated documentation about the medication.
Class HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.monograph Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The category of medication document.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Associated documentation about the medication.
/// <p>
/// DocumentReference | Media
Property source As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.monograph";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.monograph";

Storage Default
{
<Data name="monographDefaultData">
<Subscript>"monograph"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>source</Value>
</Value>
</Data>
<DefaultData>monographDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
