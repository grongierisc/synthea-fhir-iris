/// List of participants involved in the encounter.
Class HS.FHIR.Storage.vR4.Model.Element.Encounter.participant Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Role of participant in encounter.
/// <p>
/// encounter-participant-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in encounter-participant-type, 
/// you may formally EXTEND encounter-participant-type to add codes to it.
Property type As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Period of time during the encounter that the participant participated.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Persons involved in the encounter other than the patient.
/// <p>
/// Practitioner | PractitionerRole | RelatedPerson
Property individual As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "individual", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Encounter.participant";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Encounter.participant";

Storage Default
{
<Data name="participantDefaultData">
<Subscript>"participant"</Subscript>
<Value name="1">
<Value>period</Value>
</Value>
<Value name="2">
<Value>individual</Value>
</Value>
</Data>
<Data name="type">
<Attribute>type</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Encounter.participant.type"</Subscript>
</Data>
<DefaultData>participantDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
