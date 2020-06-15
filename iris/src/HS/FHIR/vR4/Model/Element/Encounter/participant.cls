/// List of participants involved in the encounter.
Class HS.FHIR.vR4.Model.Element.Encounter.participant Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Role of participant in encounter.
/// <p>
/// encounter-participant-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in encounter-participant-type, 
/// you may formally EXTEND encounter-participant-type to add codes to it.
Property type As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Period of time during the encounter that the participant participated.
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Persons involved in the encounter other than the patient.
/// <p>
/// Practitioner | PractitionerRole | RelatedPerson
Property individual As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "individual", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Encounter.participant";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Encounter.participant";

}
