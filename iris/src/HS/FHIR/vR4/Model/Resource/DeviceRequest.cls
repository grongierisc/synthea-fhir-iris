/// Medical device request.
Class HS.FHIR.vR4.Model.Resource.DeviceRequest Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External Request identifier.
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
/// What request fulfills.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property basedOn As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// What request replaces.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property priorRequest As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "priorRequest", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Identifier of composite request.
Property groupIdentifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "groupIdentifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// draft | active | on-hold | revoked | completed | entered-in-error | unknown
/// <p>
/// request-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option
/// <p>
/// request-intent|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-intent|4.0.1 and you may NOT use codes from other ValueSets.
Property intent As %String(MAXLEN = 1000000, XMLNAME = "intent", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// routine | urgent | asap | stat
/// <p>
/// request-priority|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-priority|4.0.1 and you may NOT use codes from other ValueSets.
Property priority As %String(MAXLEN = 1000000, XMLNAME = "priority", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Device requested.
/// <p>
/// any FHIR4 code may be used; 
/// device-kind shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property codeCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "codeCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Device requested.
/// <p>
/// Device.
Property codeReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "codeReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Device details.
Property parameter As List Of HS.FHIR.vR4.Model.Element.DeviceRequest.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Focus of request.
/// <p>
/// Patient | Group | Location | Device
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Encounter motivating request.
/// <p>
/// Encounter
Property encounter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Desired time or schedule for use.
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Desired time or schedule for use.
Property occurrencePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "occurrencePeriod", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// Desired time or schedule for use.
Property occurrenceTiming As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "occurrenceTiming", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When recorded.
Property authoredOn As %String(MAXLEN = 1000000, XMLNAME = "authoredOn", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who/what is requesting diagnostics.
/// <p>
/// Device | Practitioner | PractitionerRole | Organization
Property requester As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "requester", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Filler role.
/// <p>
/// any FHIR4 code may be used; 
/// participant-role shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property performerType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "performerType", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Requested Filler.
/// <p>
/// Practitioner | PractitionerRole | Organization | CareTeam | HealthcareService | Patient | Device | RelatedPerson
Property performer As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Coded Reason for request.
/// <p>
/// any FHIR4 code may be used; 
/// condition-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Linked Reason for request.
/// <p>
/// Condition | Observation | DiagnosticReport | DocumentReference
Property reasonReference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Associated insurance coverage.
/// <p>
/// Coverage | ClaimResponse
Property insurance As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "insurance", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Additional clinical information.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property supportingInfo As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "supportingInfo", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Notes or comments.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Request provenance.
/// <p>
/// Provenance
Property relevantHistory As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "relevantHistory", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceRequest";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceRequest";

}
