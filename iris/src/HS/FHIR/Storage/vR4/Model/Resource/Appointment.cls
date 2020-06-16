/// A booking of a healthcare event among patient(s), 
/// practitioner(s), 
/// related person(s) and/or device(s) for a specific date/time. 
/// This may result in one or more Encounter(s)
Class HS.FHIR.Storage.vR4.Model.Resource.Appointment Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External Ids for this item.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// proposed | pending | booked | arrived | fulfilled | cancelled | noshow | entered-in-error | checked-in | waitlist
/// <p>
/// appointmentstatus|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend appointmentstatus|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// The coded reason for the appointment being cancelled.
/// <p>
/// any FHIR4 code may be used; 
/// appointment-cancellation-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property cancelationReason As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "cancelationReason", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// A broad categorization of the service that is to be performed during this appointment.
/// <p>
/// any FHIR4 code may be used; 
/// service-category shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property serviceCategory As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "serviceCategory", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The specific service that is to be performed during this appointment.
/// <p>
/// any FHIR4 code may be used; 
/// service-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property serviceType As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "serviceType", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The specialty of a practitioner that would be required to perform the service requested in this appointment.
/// <p>
/// c80-practice-codes is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in c80-practice-codes, 
/// you may use codes from any ValueSet.
Property specialty As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "specialty", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The style of appointment or patient that has been booked in the slot (not service type)
/// <p>
/// v2-0276 is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in v2-0276, 
/// you may use codes from any ValueSet.
Property appointmentType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "appointmentType", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Coded reason this appointment is scheduled.
/// <p>
/// encounter-reason is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in encounter-reason, 
/// you may use codes from any ValueSet.
Property reasonCode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Reason the appointment is to take place (resource)
/// <p>
/// Condition | Procedure | Observation | ImmunizationRecommendation
Property reasonReference As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Used to make informed decisions if needing to re-prioritize.
Property priority As %Integer(XMLNAME = "priority", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Shown on a subject line in a meeting request, 
/// or appointment list.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Additional information to support the appointment.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property supportingInformation As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "supportingInformation", XMLPROJECTION = "ELEMENT");

/// instant
/// <p>
/// When appointment is to take place.
Property start As %String(MAXLEN = 1000000, XMLNAME = "start", XMLPROJECTION = "ATTRIBUTE");

/// instant
/// <p>
/// When appointment is to conclude.
Property end As %String(MAXLEN = 1000000, XMLNAME = "end", XMLPROJECTION = "ATTRIBUTE");

/// positiveInt
/// <p>
/// Can be less than start/end (e.g. 
/// estimate)
Property minutesDuration As %Integer(XMLNAME = "minutesDuration", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// The slots that this appointment is filling.
/// <p>
/// Slot
Property slot As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "slot", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// The date that this appointment was initially created.
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Additional comments.
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Detailed information and instructions for the patient.
Property patientInstruction As %String(MAXLEN = 1000000, XMLNAME = "patientInstruction", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// The service request this appointment is allocated to assess.
/// <p>
/// ServiceRequest
Property basedOn As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Participants involved in appointment.
Property participant As array Of HS.FHIR.Storage.vR4.Model.Element.Appointment.participant(XMLNAME = "participant", XMLPROJECTION = "ELEMENT") [ Required ];

/// Period
/// <p>
/// Potential date/time interval(s) requested to allocate the appointment within.
Property requestedPeriod As array Of HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "requestedPeriod", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Appointment";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Appointment";

Storage Default
{
<Data name="AppointmentDefaultData">
<Subscript>"Appointment"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>cancelationReason</Value>
</Value>
<Value name="3">
<Value>appointmentType</Value>
</Value>
<Value name="4">
<Value>priority</Value>
</Value>
<Value name="5">
<Value>description</Value>
</Value>
<Value name="6">
<Value>start</Value>
</Value>
<Value name="7">
<Value>end</Value>
</Value>
<Value name="8">
<Value>minutesDuration</Value>
</Value>
<Value name="9">
<Value>created</Value>
</Value>
<Value name="10">
<Value>comment</Value>
</Value>
<Value name="11">
<Value>patientInstruction</Value>
</Value>
</Data>
<Data name="basedOn">
<Attribute>basedOn</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Appointment.basedOn"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Appointment.identifier"</Subscript>
</Data>
<Data name="participant">
<Attribute>participant</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Appointment.participant"</Subscript>
</Data>
<Data name="reasonCode">
<Attribute>reasonCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Appointment.reasonCode"</Subscript>
</Data>
<Data name="reasonReference">
<Attribute>reasonReference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Appointment.reasonReference"</Subscript>
</Data>
<Data name="requestedPeriod">
<Attribute>requestedPeriod</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Appointment.requestedPeriod"</Subscript>
</Data>
<Data name="serviceCategory">
<Attribute>serviceCategory</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Appointment.serviceCategory"</Subscript>
</Data>
<Data name="serviceType">
<Attribute>serviceType</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Appointment.serviceType"</Subscript>
</Data>
<Data name="slot">
<Attribute>slot</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Appointment.slot"</Subscript>
</Data>
<Data name="specialty">
<Attribute>specialty</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Appointment.specialty"</Subscript>
</Data>
<Data name="supportingInformation">
<Attribute>supportingInformation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Appointment.supportingInformation"</Subscript>
</Data>
<DefaultData>AppointmentDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
