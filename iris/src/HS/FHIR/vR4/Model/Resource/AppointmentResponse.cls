/// A reply to an appointment request for a patient and/or practitioner(s), 
/// such as a confirmation or rejection.
Class HS.FHIR.vR4.Model.Resource.AppointmentResponse Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External Ids for this item.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Appointment this response relates to.
/// <p>
/// Appointment
Property appointment As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "appointment", XMLPROJECTION = "ELEMENT") [ Required ];

/// instant
/// <p>
/// Time from appointment, 
/// or requested new start time.
Property start As %String(MAXLEN = 1000000, XMLNAME = "start", XMLPROJECTION = "ATTRIBUTE");

/// instant
/// <p>
/// Time from appointment, 
/// or requested new end time.
Property end As %String(MAXLEN = 1000000, XMLNAME = "end", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Role of participant in the appointment.
/// <p>
/// encounter-participant-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in encounter-participant-type, 
/// you may formally EXTEND encounter-participant-type to add codes to it.
Property participantType As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "participantType", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Person, 
/// Location, 
/// HealthcareService, 
/// or Device.
/// <p>
/// Patient | Practitioner | PractitionerRole | RelatedPerson | Device | HealthcareService | Location
Property actor As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "actor", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// accepted | declined | tentative | needs-action
/// <p>
/// participationstatus|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend participationstatus|4.0.1 and you may NOT use codes from other ValueSets.
Property participantStatus As %String(MAXLEN = 1000000, XMLNAME = "participantStatus", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Additional comments.
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AppointmentResponse";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AppointmentResponse";

}
