/// A reply to an appointment request for a patient and/or practitioner(s), 
/// such as a confirmation or rejection.
Class HS.FHIR.Storage.vR4.Model.Resource.AppointmentResponse Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External Ids for this item.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Appointment this response relates to.
/// <p>
/// Appointment
Property appointment As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "appointment", XMLPROJECTION = "ELEMENT") [ Required ];

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
Property participantType As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "participantType", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Person, 
/// Location, 
/// HealthcareService, 
/// or Device.
/// <p>
/// Patient | Practitioner | PractitionerRole | RelatedPerson | Device | HealthcareService | Location
Property actor As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "actor", XMLPROJECTION = "ELEMENT");

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

Storage Default
{
<Data name="AppointmentResponseDefaultData">
<Subscript>"AppointmentResponse"</Subscript>
<Value name="1">
<Value>appointment</Value>
</Value>
<Value name="2">
<Value>start</Value>
</Value>
<Value name="3">
<Value>end</Value>
</Value>
<Value name="4">
<Value>actor</Value>
</Value>
<Value name="5">
<Value>participantStatus</Value>
</Value>
<Value name="6">
<Value>comment</Value>
</Value>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.AppointmentResponse.identifier"</Subscript>
</Data>
<Data name="participantType">
<Attribute>participantType</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.AppointmentResponse.participantType"</Subscript>
</Data>
<DefaultData>AppointmentResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
