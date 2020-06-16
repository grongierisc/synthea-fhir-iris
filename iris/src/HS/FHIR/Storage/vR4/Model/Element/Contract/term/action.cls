/// Entity being ascribed responsibility.
Class HS.FHIR.Storage.vR4.Model.Element.Contract.term.action Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
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
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Entity of the action.
Property subject As array Of HS.FHIR.Storage.vR4.Model.Element.Contract.term.action.subject(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Purpose for the Contract Term Action.
/// <p>
/// any FHIR4 code may be used; 
/// v3-PurposeOfUse shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property intent As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "intent", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Pointer to specific item.
Property linkId As array Of %String(MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// State of the action.
/// <p>
/// any FHIR4 code may be used; 
/// contract-actionstatus shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property status As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Episode associated with action.
/// <p>
/// Encounter | EpisodeOfCare
Property context As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "context", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Pointer to specific item.
Property contextLinkId As array Of %String(MAXLEN = 1000000, XMLNAME = "contextLinkId", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When action happens.
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When action happens.
Property occurrencePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "occurrencePeriod", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// When action happens.
Property occurrenceTiming As HS.FHIR.Storage.vR4.Model.Datatype.Timing(XMLNAME = "occurrenceTiming", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who asked for action.
/// <p>
/// Patient | RelatedPerson | Practitioner | PractitionerRole | Device | Group | Organization
Property requester As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "requester", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Pointer to specific item.
Property requesterLinkId As array Of %String(MAXLEN = 1000000, XMLNAME = "requesterLinkId", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Kind of service performer.
/// <p>
/// any FHIR4 code may be used; 
/// provenance-agent-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property performerType As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "performerType", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Competency of the performer.
/// <p>
/// any FHIR4 code may be used; 
/// provenance-agent-role shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property performerRole As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "performerRole", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Actor that wil execute (or not) the action.
/// <p>
/// RelatedPerson | Patient | Practitioner | PractitionerRole | CareTeam | Device | Substance | Organization | Location
Property performer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Pointer to specific item.
Property performerLinkId As array Of %String(MAXLEN = 1000000, XMLNAME = "performerLinkId", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why is action (not) needed?
/// <p>
/// any FHIR4 code may be used; 
/// v3-PurposeOfUse shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why is action (not) needed?
/// <p>
/// Condition | Observation | DiagnosticReport | DocumentReference | Questionnaire | QuestionnaireResponse
Property reasonReference As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Why action is to be performed.
Property reason As array Of %String(MAXLEN = 1000000, XMLNAME = "reason", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Pointer to specific item.
Property reasonLinkId As array Of %String(MAXLEN = 1000000, XMLNAME = "reasonLinkId", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments about the action.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Action restriction numbers.
Property securityLabelNumber As array Of %Integer(XMLNAME = "securityLabelNumber", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term.action";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term.action";

Storage Default
{
<Data name="actionDefaultData">
<Subscript>"action"</Subscript>
<Value name="1">
<Value>doNotPerform</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
<Value name="3">
<Value>intent</Value>
</Value>
<Value name="4">
<Value>status</Value>
</Value>
<Value name="5">
<Value>context</Value>
</Value>
<Value name="6">
<Value>occurrenceDateTime</Value>
</Value>
<Value name="7">
<Value>occurrencePeriod</Value>
</Value>
<Value name="8">
<Value>occurrenceTiming</Value>
</Value>
<Value name="9">
<Value>performerRole</Value>
</Value>
<Value name="10">
<Value>performer</Value>
</Value>
</Data>
<Data name="contextLinkId">
<Attribute>contextLinkId</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.action.contextLinkId"</Subscript>
</Data>
<Data name="linkId">
<Attribute>linkId</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.action.linkId"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.action.note"</Subscript>
</Data>
<Data name="performerLinkId">
<Attribute>performerLinkId</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.action.performerLinkId"</Subscript>
</Data>
<Data name="performerType">
<Attribute>performerType</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.action.performerType"</Subscript>
</Data>
<Data name="reason">
<Attribute>reason</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.action.reason"</Subscript>
</Data>
<Data name="reasonCode">
<Attribute>reasonCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.action.reasonCode"</Subscript>
</Data>
<Data name="reasonLinkId">
<Attribute>reasonLinkId</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.action.reasonLinkId"</Subscript>
</Data>
<Data name="reasonReference">
<Attribute>reasonReference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.action.reasonReference"</Subscript>
</Data>
<Data name="requester">
<Attribute>requester</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.action.requester"</Subscript>
</Data>
<Data name="requesterLinkId">
<Attribute>requesterLinkId</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.action.requesterLinkId"</Subscript>
</Data>
<Data name="securityLabelNumber">
<Attribute>securityLabelNumber</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.action.securityLabelNumber"</Subscript>
</Data>
<Data name="subject">
<Attribute>subject</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.action.subject"</Subscript>
</Data>
<DefaultData>actionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
