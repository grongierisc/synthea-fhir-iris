/// A Diagnostic report - a combination of request information, 
/// atomic results, 
/// images, 
/// interpretation, 
/// as well as formatted reports.
Class HS.FHIR.vR4.Model.Resource.DiagnosticReport Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifier for report.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// What was requested.
/// <p>
/// CarePlan | ImmunizationRecommendation | MedicationRequest | NutritionOrder | ServiceRequest
Property basedOn As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// registered | partial | preliminary | final +
/// <p>
/// diagnostic-report-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend diagnostic-report-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Service category.
/// <p>
/// any FHIR4 code may be used; 
/// diagnostic-service-sections shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Name/Code for this diagnostic report.
/// <p>
/// report-codes is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in report-codes, 
/// you may use codes from any ValueSet.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// The subject of the report - usually, 
/// but not always, 
/// the patient.
/// <p>
/// Patient | Group | Device | Location
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Health care event when test ordered.
/// <p>
/// Encounter
Property encounter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Clinically relevant time/time-period for report.
Property effectiveDateTime As %String(MAXLEN = 1000000, XMLNAME = "effectiveDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Clinically relevant time/time-period for report.
Property effectivePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT");

/// instant
/// <p>
/// DateTime this version was made.
Property issued As %String(MAXLEN = 1000000, XMLNAME = "issued", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Responsible Diagnostic Service.
/// <p>
/// Practitioner | PractitionerRole | Organization | CareTeam
Property performer As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Primary result interpreter.
/// <p>
/// Practitioner | PractitionerRole | Organization | CareTeam
Property resultsInterpreter As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "resultsInterpreter", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Specimens this report is based on.
/// <p>
/// Specimen
Property specimen As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "specimen", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Observations.
/// <p>
/// Observation
Property result As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "result", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Reference to full details of imaging associated with the diagnostic report.
/// <p>
/// ImagingStudy
Property imagingStudy As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "imagingStudy", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Key images associated with this report.
Property media As List Of HS.FHIR.vR4.Model.Element.DiagnosticReport.media(XMLNAME = "media", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Clinical conclusion (interpretation) of test results.
Property conclusion As %String(MAXLEN = 1000000, XMLNAME = "conclusion", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Codes for the clinical conclusion of test results.
/// <p>
/// any FHIR4 code may be used; 
/// clinical-findings shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property conclusionCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "conclusionCode", XMLPROJECTION = "ELEMENT");

/// Attachment
/// <p>
/// Entire report as issued.
Property presentedForm As List Of HS.FHIR.vR4.Model.Datatype.Attachment(XMLNAME = "presentedForm", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DiagnosticReport";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DiagnosticReport";

}
