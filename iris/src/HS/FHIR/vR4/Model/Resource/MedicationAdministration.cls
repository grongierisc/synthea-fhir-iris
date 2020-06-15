/// Administration of medication to a patient.
Class HS.FHIR.vR4.Model.Resource.MedicationAdministration Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External identifier.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Instantiates protocol or definition.
Property instantiates As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "instantiates", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Part of referenced event.
/// <p>
/// MedicationAdministration | Procedure
Property partOf As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// in-progress | not-done | on-hold | completed | entered-in-error | stopped | unknown
/// <p>
/// medication-admin-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend medication-admin-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Reason administration not performed.
/// <p>
/// any FHIR4 code may be used; 
/// reason-medication-not-given-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property statusReason As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "statusReason", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type of medication usage.
/// <p>
/// medication-admin-category is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in medication-admin-category, 
/// you may use codes from any ValueSet.
Property category As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// What was administered.
/// <p>
/// any FHIR4 code may be used; 
/// medication-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property medicationCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "medicationCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// What was administered.
/// <p>
/// Medication.
Property medicationReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "medicationReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who received medication.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Encounter or Episode of Care administered as part of.
/// <p>
/// Encounter | EpisodeOfCare
Property context As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "context", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Additional information to support administration.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property supportingInformation As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "supportingInformation", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Start and end time of administration.
Property effectiveDateTime As %String(MAXLEN = 1000000, XMLNAME = "effectiveDateTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Period
/// <p>
/// Start and end time of administration.
Property effectivePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Who performed the medication administration and what they did.
Property performer As List Of HS.FHIR.vR4.Model.Element.MedicationAdministration.performer(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Reason administration performed.
/// <p>
/// any FHIR4 code may be used; 
/// reason-medication-given-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Condition or observation that supports why the medication was administered.
/// <p>
/// Condition | Observation | DiagnosticReport
Property reasonReference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Request administration performed against.
/// <p>
/// MedicationRequest
Property request As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "request", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Device used to administer.
/// <p>
/// Device
Property device As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "device", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Information about the administration.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Details of how medication was taken.
Property dosage As HS.FHIR.vR4.Model.Element.MedicationAdministration.dosage(XMLNAME = "dosage", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A list of events of interest in the lifecycle.
/// <p>
/// Provenance
Property eventHistory As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "eventHistory", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationAdministration";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationAdministration";

}
