/// Entity being ascribed responsibility.
Class HS.FHIR.vR4.Model.Element.Contract.term.action Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// True if the term prohibits the  action.
Property doNotPerform As %Boolean(XMLNAME = "doNotPerform", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Type or form of the action.
/// <p>
/// any FHIR4 code may be used; 
/// contract-action shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Entity of the action.
Property subject As List Of HS.FHIR.vR4.Model.Element.Contract.term.action.subject(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Purpose for the Contract Term Action.
/// <p>
/// any FHIR4 code may be used; 
/// v3-PurposeOfUse shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property intent As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "intent", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Pointer to specific item.
Property linkId As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// State of the action.
/// <p>
/// any FHIR4 code may be used; 
/// contract-actionstatus shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property status As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Episode associated with action.
/// <p>
/// Encounter | EpisodeOfCare
Property context As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "context", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Pointer to specific item.
Property contextLinkId As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "contextLinkId", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When action happens.
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When action happens.
Property occurrencePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "occurrencePeriod", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// When action happens.
Property occurrenceTiming As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "occurrenceTiming", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who asked for action.
/// <p>
/// Patient | RelatedPerson | Practitioner | PractitionerRole | Device | Group | Organization
Property requester As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "requester", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Pointer to specific item.
Property requesterLinkId As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "requesterLinkId", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Kind of service performer.
/// <p>
/// any FHIR4 code may be used; 
/// provenance-agent-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property performerType As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "performerType", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Competency of the performer.
/// <p>
/// any FHIR4 code may be used; 
/// provenance-agent-role shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property performerRole As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "performerRole", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Actor that wil execute (or not) the action.
/// <p>
/// RelatedPerson | Patient | Practitioner | PractitionerRole | CareTeam | Device | Substance | Organization | Location
Property performer As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Pointer to specific item.
Property performerLinkId As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "performerLinkId", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why is action (not) needed?
/// <p>
/// any FHIR4 code may be used; 
/// v3-PurposeOfUse shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why is action (not) needed?
/// <p>
/// Condition | Observation | DiagnosticReport | DocumentReference | Questionnaire | QuestionnaireResponse
Property reasonReference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Why action is to be performed.
Property reason As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "reason", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Pointer to specific item.
Property reasonLinkId As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "reasonLinkId", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments about the action.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Action restriction numbers.
Property securityLabelNumber As List Of%Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "securityLabelNumber", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term.action";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term.action";

}
