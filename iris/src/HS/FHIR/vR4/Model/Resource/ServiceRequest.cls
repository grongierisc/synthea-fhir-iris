/// A request for a service to be performed.
Class HS.FHIR.vR4.Model.Resource.ServiceRequest Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Identifiers assigned to this order.
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
/// CarePlan | ServiceRequest | MedicationRequest
Property basedOn As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// What request replaces.
/// <p>
/// ServiceRequest
Property replaces As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "replaces", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Composite Request ID.
Property requisition As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "requisition", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// draft | active | on-hold | revoked | completed | entered-in-error | unknown
/// <p>
/// request-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option
/// <p>
/// request-intent|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-intent|4.0.1 and you may NOT use codes from other ValueSets.
Property intent As %String(MAXLEN = 1000000, XMLNAME = "intent", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Classification of service.
/// <p>
/// any FHIR4 code may be used; 
/// servicerequest-category shows EXAMPLE codes, 
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
/// True if service/procedure should not be performed.
Property doNotPerform As %Boolean(XMLNAME = "doNotPerform", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// What is being requested/ordered.
/// <p>
/// any FHIR4 code may be used; 
/// procedure-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Additional order information.
/// <p>
/// any FHIR4 code may be used; 
/// servicerequest-orderdetail shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property orderDetail As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "orderDetail", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Service amount.
Property quantityQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "quantityQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Service amount.
Property quantityRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "quantityRange", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// Service amount.
Property quantityRatio As HS.FHIR.vR4.Model.Datatype.Ratio(XMLNAME = "quantityRatio", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Individual or Entity the service is ordered for.
/// <p>
/// Patient | Group | Location | Device
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Encounter in which the request was created.
/// <p>
/// Encounter
Property encounter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When service should occur.
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When service should occur.
Property occurrencePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "occurrencePeriod", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// When service should occur.
Property occurrenceTiming As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "occurrenceTiming", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Preconditions for service.
Property asNeededBoolean As %Boolean(XMLNAME = "asNeededBoolean", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Preconditions for service.
/// <p>
/// any FHIR4 code may be used; 
/// medication-as-needed-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property asNeededCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "asNeededCodeableConcept", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Date request signed.
Property authoredOn As %String(MAXLEN = 1000000, XMLNAME = "authoredOn", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who/what is requesting service.
/// <p>
/// Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device
Property requester As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "requester", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Performer role.
/// <p>
/// any FHIR4 code may be used; 
/// participant-role shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property performerType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "performerType", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Requested performer.
/// <p>
/// Practitioner | PractitionerRole | Organization | CareTeam | HealthcareService | Patient | Device | RelatedPerson
Property performer As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Requested location.
/// <p>
/// any FHIR4 code may be used; 
/// v3-ServiceDeliveryLocationRoleType shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property locationCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "locationCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Requested location.
/// <p>
/// Location
Property locationReference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "locationReference", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Explanation/Justification for procedure or service.
/// <p>
/// any FHIR4 code may be used; 
/// procedure-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Explanation/Justification for service or service.
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

/// Reference
/// <p>
/// Procedure Samples.
/// <p>
/// Specimen
Property specimen As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "specimen", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Location on Body.
/// <p>
/// any FHIR4 code may be used; 
/// body-site shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property bodySite As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Patient or consumer-oriented instructions.
Property patientInstruction As %String(MAXLEN = 1000000, XMLNAME = "patientInstruction", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Request provenance.
/// <p>
/// Provenance
Property relevantHistory As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "relevantHistory", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ServiceRequest";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ServiceRequest";

}
