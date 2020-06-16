/// Ordering of medication for patient or group.
Class HS.FHIR.Storage.vR4.Model.Resource.MedicationRequest Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External ids for this request.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown
/// <p>
/// medicationrequest-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend medicationrequest-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Reason for current status.
/// <p>
/// any FHIR4 code may be used; 
/// medicationrequest-status-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property statusReason As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "statusReason", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option
/// <p>
/// medicationrequest-intent|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend medicationrequest-intent|4.0.1 and you may NOT use codes from other ValueSets.
Property intent As %String(MAXLEN = 1000000, XMLNAME = "intent", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Type of medication usage.
/// <p>
/// any FHIR4 code may be used; 
/// medicationrequest-category shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

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

/// boolean
/// <p>
/// Reported rather than primary record.
Property reportedBoolean As %Boolean(XMLNAME = "reportedBoolean", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Reported rather than primary record.
/// <p>
/// Patient | Practitioner | PractitionerRole | RelatedPerson | Organization
Property reportedReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "reportedReference", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Medication to be taken.
/// <p>
/// any FHIR4 code may be used; 
/// medication-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property medicationCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "medicationCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Medication to be taken.
/// <p>
/// Medication.
Property medicationReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "medicationReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who or group medication request is for.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Encounter created as part of encounter/admission/stay.
/// <p>
/// Encounter
Property encounter As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Information to support ordering of the medication.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property supportingInformation As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "supportingInformation", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When request was initially authored.
Property authoredOn As %String(MAXLEN = 1000000, XMLNAME = "authoredOn", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who/What requested the Request.
/// <p>
/// Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device
Property requester As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "requester", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Intended performer of administration.
/// <p>
/// Practitioner | PractitionerRole | Organization | Patient | Device | RelatedPerson | CareTeam
Property performer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Desired kind of performer of the medication administration.
/// <p>
/// any FHIR4 code may be used; 
/// performer-role shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property performerType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "performerType", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Person who entered the request.
/// <p>
/// Practitioner | PractitionerRole
Property recorder As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "recorder", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Reason or indication for ordering or not ordering the medication.
/// <p>
/// any FHIR4 code may be used; 
/// condition-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Condition or observation that supports why the prescription is being written.
/// <p>
/// Condition | Observation
Property reasonReference As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Instantiates FHIR protocol or definition.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property instantiatesCanonical As array Of %String(MAXLEN = 1000000, XMLNAME = "instantiatesCanonical", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Instantiates external protocol or definition.
Property instantiatesUri As array Of %String(MAXLEN = 1000000, XMLNAME = "instantiatesUri", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// What request fulfills.
/// <p>
/// CarePlan | MedicationRequest | ServiceRequest | ImmunizationRecommendation
Property basedOn As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Composite request this is part of.
Property groupIdentifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "groupIdentifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Overall pattern of medication administration.
/// <p>
/// any FHIR4 code may be used; 
/// medicationrequest-course-of-therapy shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property courseOfTherapyType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "courseOfTherapyType", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Associated insurance coverage.
/// <p>
/// Coverage | ClaimResponse
Property insurance As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "insurance", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Information about the prescription.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// Dosage
/// <p>
/// How the medication should be taken.
Property dosageInstruction As array Of HS.FHIR.Storage.vR4.Model.Element.Dosage(XMLNAME = "dosageInstruction", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Medication supply authorization.
Property dispenseRequest As HS.FHIR.Storage.vR4.Model.Element.MedicationRequest.dispenseRequest(XMLNAME = "dispenseRequest", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Any restrictions on medication substitution.
Property substitution As HS.FHIR.Storage.vR4.Model.Element.MedicationRequest.substitution(XMLNAME = "substitution", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// An order/prescription that is being replaced.
/// <p>
/// MedicationRequest
Property priorPrescription As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "priorPrescription", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Clinical Issue with action.
/// <p>
/// DetectedIssue
Property detectedIssue As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "detectedIssue", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A list of events of interest in the lifecycle.
/// <p>
/// Provenance
Property eventHistory As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "eventHistory", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationRequest";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationRequest";

Storage Default
{
<Data name="MedicationRequestDefaultData">
<Subscript>"MedicationRequest"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>statusReason</Value>
</Value>
<Value name="3">
<Value>intent</Value>
</Value>
<Value name="4">
<Value>priority</Value>
</Value>
<Value name="5">
<Value>doNotPerform</Value>
</Value>
<Value name="6">
<Value>reportedBoolean</Value>
</Value>
<Value name="7">
<Value>reportedReference</Value>
</Value>
<Value name="8">
<Value>medicationCodeableConcept</Value>
</Value>
<Value name="9">
<Value>medicationReference</Value>
</Value>
<Value name="10">
<Value>subject</Value>
</Value>
<Value name="11">
<Value>encounter</Value>
</Value>
<Value name="12">
<Value>authoredOn</Value>
</Value>
<Value name="13">
<Value>requester</Value>
</Value>
<Value name="14">
<Value>performer</Value>
</Value>
<Value name="15">
<Value>performerType</Value>
</Value>
<Value name="16">
<Value>recorder</Value>
</Value>
<Value name="17">
<Value>groupIdentifier</Value>
</Value>
<Value name="18">
<Value>courseOfTherapyType</Value>
</Value>
<Value name="19">
<Value>dispenseRequest</Value>
</Value>
<Value name="20">
<Value>substitution</Value>
</Value>
<Value name="21">
<Value>priorPrescription</Value>
</Value>
</Data>
<Data name="basedOn">
<Attribute>basedOn</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationRequest.basedOn"</Subscript>
</Data>
<Data name="category">
<Attribute>category</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationRequest.category"</Subscript>
</Data>
<Data name="detectedIssue">
<Attribute>detectedIssue</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationRequest.detectedIssue"</Subscript>
</Data>
<Data name="dosageInstruction">
<Attribute>dosageInstruction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationRequest.dosageInstruction"</Subscript>
</Data>
<Data name="eventHistory">
<Attribute>eventHistory</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationRequest.eventHistory"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationRequest.identifier"</Subscript>
</Data>
<Data name="instantiatesCanonical">
<Attribute>instantiatesCanonical</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationRequest.instantiatesCanonical"</Subscript>
</Data>
<Data name="instantiatesUri">
<Attribute>instantiatesUri</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationRequest.instantiatesUri"</Subscript>
</Data>
<Data name="insurance">
<Attribute>insurance</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationRequest.insurance"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationRequest.note"</Subscript>
</Data>
<Data name="reasonCode">
<Attribute>reasonCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationRequest.reasonCode"</Subscript>
</Data>
<Data name="reasonReference">
<Attribute>reasonReference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationRequest.reasonReference"</Subscript>
</Data>
<Data name="supportingInformation">
<Attribute>supportingInformation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationRequest.supportingInformation"</Subscript>
</Data>
<DefaultData>MedicationRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
