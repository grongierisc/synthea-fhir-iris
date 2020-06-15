/// Record of medication being taken by a patient.
Class HS.FHIR.vR4.Model.Resource.MedicationStatement Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External identifier.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Fulfils plan, 
/// proposal or order.
/// <p>
/// MedicationRequest | CarePlan | ServiceRequest
Property basedOn As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Part of referenced event.
/// <p>
/// MedicationAdministration | MedicationDispense | MedicationStatement | Procedure | Observation
Property partOf As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | completed | entered-in-error | intended | stopped | on-hold | unknown | not-taken
/// <p>
/// medication-statement-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend medication-statement-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Reason for current status.
/// <p>
/// any FHIR4 code may be used; 
/// reason-medication-status-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property statusReason As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "statusReason", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type of medication usage.
/// <p>
/// medication-statement-category is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in medication-statement-category, 
/// you may use codes from any ValueSet.
Property category As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// What medication was taken.
/// <p>
/// any FHIR4 code may be used; 
/// medication-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property medicationCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "medicationCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// What medication was taken.
/// <p>
/// Medication.
Property medicationReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "medicationReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who is/was taking  the medication.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Encounter / Episode associated with MedicationStatement.
/// <p>
/// Encounter | EpisodeOfCare
Property context As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "context", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// The date/time or interval when the medication is/was/will be taken.
Property effectiveDateTime As %String(MAXLEN = 1000000, XMLNAME = "effectiveDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// The date/time or interval when the medication is/was/will be taken.
Property effectivePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the statement was asserted?
Property dateAsserted As %String(MAXLEN = 1000000, XMLNAME = "dateAsserted", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Person or organization that provided the information about the taking of this medication.
/// <p>
/// Patient | Practitioner | PractitionerRole | RelatedPerson | Organization
Property informationSource As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "informationSource", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Additional supporting information.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property derivedFrom As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "derivedFrom", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Reason for why the medication is being/was taken.
/// <p>
/// any FHIR4 code may be used; 
/// condition-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Condition or observation that supports why the medication is being/was taken.
/// <p>
/// Condition | Observation | DiagnosticReport
Property reasonReference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Further information about the statement.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// Dosage
/// <p>
/// Details of how medication is/was taken or should be taken.
Property dosage As List Of HS.FHIR.vR4.Model.Element.Dosage(XMLNAME = "dosage", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationStatement";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationStatement";

}
