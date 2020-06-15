/// Participants involved in appointment.
Class HS.FHIR.vR4.Model.Element.Appointment.participant Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Role of participant in the appointment.
/// <p>
/// encounter-participant-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in encounter-participant-type, 
/// you may formally EXTEND encounter-participant-type to add codes to it.
Property type As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Person, 
/// Location/HealthcareService or Device.
/// <p>
/// Patient | Practitioner | PractitionerRole | RelatedPerson | Device | HealthcareService | Location
Property actor As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "actor", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// required | optional | information-only
/// <p>
/// participantrequired|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend participantrequired|4.0.1 and you may NOT use codes from other ValueSets.
Property required As %String(MAXLEN = 1000000, XMLNAME = "required", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// accepted | declined | tentative | needs-action
/// <p>
/// participationstatus|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend participationstatus|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Period
/// <p>
/// Participation period of the actor.
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Appointment.participant";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Appointment.participant";

}
