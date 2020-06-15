/// A record of information transmitted from a sender to a receiver.
Class HS.FHIR.vR4.Model.Resource.Communication Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Unique identifier.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Instantiates FHIR protocol or definition.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property instantiatesCanonical As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "instantiatesCanonical", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Instantiates external protocol or definition.
Property instantiatesUri As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "instantiatesUri", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Request fulfilled by this communication.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property basedOn As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Part of this action.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property partOf As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Reply to.
/// <p>
/// Communication
Property inResponseTo As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "inResponseTo", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown
/// <p>
/// event-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend event-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Reason for current status.
/// <p>
/// any FHIR4 code may be used; 
/// communication-not-done-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
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

/// CodeableConcept
/// <p>
/// Description of the purpose/content.
/// <p>
/// any FHIR4 code may be used; 
/// communication-topic shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property topic As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "topic", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Resources that pertain to this communication.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property about As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "about", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Encounter created as part of.
/// <p>
/// Encounter
Property encounter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When sent.
Property sent As %String(MAXLEN = 1000000, XMLNAME = "sent", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// When received.
Property received As %String(MAXLEN = 1000000, XMLNAME = "received", XMLPROJECTION = "ATTRIBUTE");

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
/// Indication for message.
/// <p>
/// any FHIR4 code may be used; 
/// clinical-findings shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why was communication done?
/// <p>
/// Condition | Observation | DiagnosticReport | DocumentReference
Property reasonReference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Message payload.
Property payload As List Of HS.FHIR.vR4.Model.Element.Communication.payload(XMLNAME = "payload", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments made about the communication.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Communication";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Communication";

}
