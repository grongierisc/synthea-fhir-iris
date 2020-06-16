/// Dispensing a medication to a named patient.
Class HS.FHIR.Storage.vR4.Model.Resource.MedicationDispense Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External identifier.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Event that dispense is part of.
/// <p>
/// Procedure
Property partOf As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// preparation | in-progress | cancelled | on-hold | completed | entered-in-error | stopped | declined | unknown
/// <p>
/// medicationdispense-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend medicationdispense-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Why a dispense was not performed.
/// <p>
/// any FHIR4 code may be used; 
/// medicationdispense-status-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property statusReasonCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "statusReasonCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why a dispense was not performed.
/// <p>
/// DetectedIssue.
Property statusReasonReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "statusReasonReference", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type of medication dispense.
/// <p>
/// medicationdispense-category is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in medicationdispense-category, 
/// you may use codes from any ValueSet.
Property category As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// What medication was supplied.
/// <p>
/// any FHIR4 code may be used; 
/// medication-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property medicationCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "medicationCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// What medication was supplied.
/// <p>
/// Medication.
Property medicationReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "medicationReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who the dispense is for.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Encounter / Episode associated with event.
/// <p>
/// Encounter | EpisodeOfCare
Property context As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "context", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Information that supports the dispensing of the medication.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property supportingInformation As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "supportingInformation", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Who performed event.
Property performer As array Of HS.FHIR.Storage.vR4.Model.Element.MedicationDispense.performer(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where the dispense occurred.
/// <p>
/// Location
Property location As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Medication order that authorizes the dispense.
/// <p>
/// MedicationRequest
Property authorizingPrescription As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "authorizingPrescription", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Trial fill, 
/// partial fill, 
/// emergency fill, 
/// etc.
/// <p>
/// any FHIR4 code may be used; 
/// v3-ActPharmacySupplyType shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Amount dispensed.
Property quantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Amount of medication expressed as a timing amount.
Property daysSupply As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "daysSupply", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When product was packaged and reviewed.
Property whenPrepared As %String(MAXLEN = 1000000, XMLNAME = "whenPrepared", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// When product was given out.
Property whenHandedOver As %String(MAXLEN = 1000000, XMLNAME = "whenHandedOver", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Where the medication was sent.
/// <p>
/// Location
Property destination As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "destination", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who collected the medication.
/// <p>
/// Patient | Practitioner
Property receiver As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "receiver", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Information about the dispense.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// Dosage
/// <p>
/// How the medication is to be used by the patient or administered by the caregiver.
Property dosageInstruction As array Of HS.FHIR.Storage.vR4.Model.Element.Dosage(XMLNAME = "dosageInstruction", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Whether a substitution was performed on the dispense.
Property substitution As HS.FHIR.Storage.vR4.Model.Element.MedicationDispense.substitution(XMLNAME = "substitution", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Clinical issue with action.
/// <p>
/// DetectedIssue
Property detectedIssue As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "detectedIssue", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A list of relevant lifecycle events.
/// <p>
/// Provenance
Property eventHistory As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "eventHistory", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationDispense";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationDispense";

Storage Default
{
<Data name="MedicationDispenseDefaultData">
<Subscript>"MedicationDispense"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>statusReasonCodeableConcept</Value>
</Value>
<Value name="3">
<Value>statusReasonReference</Value>
</Value>
<Value name="4">
<Value>category</Value>
</Value>
<Value name="5">
<Value>medicationCodeableConcept</Value>
</Value>
<Value name="6">
<Value>medicationReference</Value>
</Value>
<Value name="7">
<Value>subject</Value>
</Value>
<Value name="8">
<Value>context</Value>
</Value>
<Value name="9">
<Value>location</Value>
</Value>
<Value name="10">
<Value>type</Value>
</Value>
<Value name="11">
<Value>quantity</Value>
</Value>
<Value name="12">
<Value>daysSupply</Value>
</Value>
<Value name="13">
<Value>whenPrepared</Value>
</Value>
<Value name="14">
<Value>whenHandedOver</Value>
</Value>
<Value name="15">
<Value>destination</Value>
</Value>
<Value name="16">
<Value>substitution</Value>
</Value>
</Data>
<Data name="authorizingPrescription">
<Attribute>authorizingPrescription</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationDispense.authorizingPrescription"</Subscript>
</Data>
<Data name="detectedIssue">
<Attribute>detectedIssue</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationDispense.detectedIssue"</Subscript>
</Data>
<Data name="dosageInstruction">
<Attribute>dosageInstruction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationDispense.dosageInstruction"</Subscript>
</Data>
<Data name="eventHistory">
<Attribute>eventHistory</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationDispense.eventHistory"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationDispense.identifier"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationDispense.note"</Subscript>
</Data>
<Data name="partOf">
<Attribute>partOf</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationDispense.partOf"</Subscript>
</Data>
<Data name="performer">
<Attribute>performer</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationDispense.performer"</Subscript>
</Data>
<Data name="receiver">
<Attribute>receiver</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationDispense.receiver"</Subscript>
</Data>
<Data name="supportingInformation">
<Attribute>supportingInformation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicationDispense.supportingInformation"</Subscript>
</Data>
<DefaultData>MedicationDispenseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
