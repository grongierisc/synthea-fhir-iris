/// An action that is being or was performed on a patient.
Class HS.FHIR.Storage.vR4.Model.Resource.Procedure Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External Identifiers for this procedure.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

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
/// A request for this procedure.
/// <p>
/// CarePlan | ServiceRequest
Property basedOn As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Part of referenced event.
/// <p>
/// Procedure | Observation | MedicationAdministration
Property partOf As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

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
/// procedure-not-performed-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property statusReason As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "statusReason", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Classification of the procedure.
/// <p>
/// any FHIR4 code may be used; 
/// procedure-category shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Identification of the procedure.
/// <p>
/// any FHIR4 code may be used; 
/// procedure-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who the procedure was performed on.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Encounter created as part of.
/// <p>
/// Encounter
Property encounter As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// Age
/// <p>
/// When the procedure was performed.
Property performedAge As HS.FHIR.Storage.vR4.Model.Datatype.Age(XMLNAME = "performedAge", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the procedure was performed.
Property performedDateTime As %String(MAXLEN = 1000000, XMLNAME = "performedDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When the procedure was performed.
Property performedPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "performedPeriod", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// When the procedure was performed.
Property performedRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "performedRange", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// When the procedure was performed.
Property performedString As %String(MAXLEN = 1000000, XMLNAME = "performedString", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who recorded the procedure.
/// <p>
/// Patient | RelatedPerson | Practitioner | PractitionerRole
Property recorder As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "recorder", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Person who asserts this procedure.
/// <p>
/// Patient | RelatedPerson | Practitioner | PractitionerRole
Property asserter As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "asserter", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The people who performed the procedure.
Property performer As array Of HS.FHIR.Storage.vR4.Model.Element.Procedure.performer(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where the procedure happened.
/// <p>
/// Location
Property location As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Coded reason procedure performed.
/// <p>
/// any FHIR4 code may be used; 
/// procedure-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The justification that the procedure was performed.
/// <p>
/// Condition | Observation | Procedure | DiagnosticReport | DocumentReference
Property reasonReference As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Target body sites.
/// <p>
/// any FHIR4 code may be used; 
/// body-site shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property bodySite As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The result of procedure.
/// <p>
/// any FHIR4 code may be used; 
/// procedure-outcome shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property outcome As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "outcome", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Any report resulting from the procedure.
/// <p>
/// DiagnosticReport | DocumentReference | Composition
Property report As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "report", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Complication following the procedure.
/// <p>
/// any FHIR4 code may be used; 
/// condition-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property complication As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "complication", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A condition that is a result of the procedure.
/// <p>
/// Condition
Property complicationDetail As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "complicationDetail", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Instructions for follow up.
/// <p>
/// any FHIR4 code may be used; 
/// procedure-followup shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property followUp As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "followUp", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Additional information about the procedure.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Manipulated, 
/// implanted, 
/// or removed device.
Property focalDevice As array Of HS.FHIR.Storage.vR4.Model.Element.Procedure.focalDevice(XMLNAME = "focalDevice", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Items used during procedure.
/// <p>
/// Device | Medication | Substance
Property usedReference As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "usedReference", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Coded items used during the procedure.
/// <p>
/// any FHIR4 code may be used; 
/// device-kind shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property usedCode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "usedCode", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Procedure";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Procedure";

Storage Default
{
<Data name="ProcedureDefaultData">
<Subscript>"Procedure"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>statusReason</Value>
</Value>
<Value name="3">
<Value>category</Value>
</Value>
<Value name="4">
<Value>code</Value>
</Value>
<Value name="5">
<Value>subject</Value>
</Value>
<Value name="6">
<Value>encounter</Value>
</Value>
<Value name="7">
<Value>performedAge</Value>
</Value>
<Value name="8">
<Value>performedDateTime</Value>
</Value>
<Value name="9">
<Value>performedPeriod</Value>
</Value>
<Value name="10">
<Value>performedRange</Value>
</Value>
<Value name="11">
<Value>performedString</Value>
</Value>
<Value name="12">
<Value>recorder</Value>
</Value>
<Value name="13">
<Value>asserter</Value>
</Value>
<Value name="14">
<Value>location</Value>
</Value>
<Value name="15">
<Value>outcome</Value>
</Value>
</Data>
<Data name="basedOn">
<Attribute>basedOn</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Procedure.basedOn"</Subscript>
</Data>
<Data name="bodySite">
<Attribute>bodySite</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Procedure.bodySite"</Subscript>
</Data>
<Data name="complication">
<Attribute>complication</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Procedure.complication"</Subscript>
</Data>
<Data name="complicationDetail">
<Attribute>complicationDetail</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Procedure.complicationDetail"</Subscript>
</Data>
<Data name="focalDevice">
<Attribute>focalDevice</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Procedure.focalDevice"</Subscript>
</Data>
<Data name="followUp">
<Attribute>followUp</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Procedure.followUp"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Procedure.identifier"</Subscript>
</Data>
<Data name="instantiatesCanonical">
<Attribute>instantiatesCanonical</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Procedure.instantiatesCanonical"</Subscript>
</Data>
<Data name="instantiatesUri">
<Attribute>instantiatesUri</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Procedure.instantiatesUri"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Procedure.note"</Subscript>
</Data>
<Data name="partOf">
<Attribute>partOf</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Procedure.partOf"</Subscript>
</Data>
<Data name="performer">
<Attribute>performer</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Procedure.performer"</Subscript>
</Data>
<Data name="reasonCode">
<Attribute>reasonCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Procedure.reasonCode"</Subscript>
</Data>
<Data name="reasonReference">
<Attribute>reasonReference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Procedure.reasonReference"</Subscript>
</Data>
<Data name="report">
<Attribute>report</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Procedure.report"</Subscript>
</Data>
<Data name="usedCode">
<Attribute>usedCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Procedure.usedCode"</Subscript>
</Data>
<Data name="usedReference">
<Attribute>usedReference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Procedure.usedReference"</Subscript>
</Data>
<DefaultData>ProcedureDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
