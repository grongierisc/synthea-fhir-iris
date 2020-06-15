/// A request for information to be sent to a receiver.
Class HS.FHIR.vR4.Model.Resource.CommunicationRequest Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Unique identifier.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Fulfills plan or proposal.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property basedOn As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Request(s) replaced by this request.
/// <p>
/// CommunicationRequest
Property replaces As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "replaces", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Composite request this is part of.
Property groupIdentifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "groupIdentifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// draft | active | on-hold | revoked | completed | entered-in-error | unknown
/// <p>
/// request-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Reason for current status.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property statusReason As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "statusReason", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Message category.
/// <p>
/// any FHIR4 code may be used; 
/// communication-category shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// routine | urgent | asap | stat
/// <p>
/// request-priority|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-priority|4.0.1 and you may NOT use codes from other ValueSets.
Property priority As %String(MAXLEN = 1000000, XMLNAME = "priority", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// True if request is prohibiting action.
Property doNotPerform As %Boolean(XMLNAME = "doNotPerform", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// A channel of communication.
/// <p>
/// any FHIR4 code may be used; 
/// v3-ParticipationMode shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property medium As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "medium", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Focus of message.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Resources that pertain to this communication request.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property about As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "about", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Encounter created as part of.
/// <p>
/// Encounter
Property encounter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Message payload.
Property payload As List Of HS.FHIR.vR4.Model.Element.CommunicationRequest.payload(XMLNAME = "payload", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When scheduled.
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When scheduled.
Property occurrencePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "occurrencePeriod", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When request transitioned to being actionable.
Property authoredOn As %String(MAXLEN = 1000000, XMLNAME = "authoredOn", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who/what is requesting service.
/// <p>
/// Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device
Property requester As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "requester", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Message recipient.
/// <p>
/// Device | Organization | Patient | Practitioner | PractitionerRole | RelatedPerson | Group | CareTeam | HealthcareService
Property recipient As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "recipient", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Message sender.
/// <p>
/// Device | Organization | Patient | Practitioner | PractitionerRole | RelatedPerson | HealthcareService
Property sender As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "sender", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why is communication needed?
/// <p>
/// any FHIR4 code may be used; 
/// v3-ActReason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why is communication needed?
/// <p>
/// Condition | Observation | DiagnosticReport | DocumentReference
Property reasonReference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments made about communication request.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CommunicationRequest";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CommunicationRequest";

}
