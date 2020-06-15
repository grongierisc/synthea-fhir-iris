/// Potential outcomes for a subject with likelihood.
Class HS.FHIR.vR4.Model.Resource.RiskAssessment Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Unique identifier for the assessment.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Request fulfilled by this assessment.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property basedOn As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Part of this occurrence.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property parent As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "parent", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// registered | preliminary | final | amended +
/// <p>
/// observation-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend observation-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Evaluation mechanism.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property method As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "method", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type of assessment.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who/what does assessment apply to?
/// <p>
/// Patient | Group
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Where was assessment performed?
/// <p>
/// Encounter
Property encounter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When was assessment made?
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When was assessment made?
Property occurrencePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "occurrencePeriod", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Condition assessed.
/// <p>
/// Condition
Property condition As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "condition", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who did assessment?
/// <p>
/// Practitioner | PractitionerRole | Device
Property performer As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why the assessment was necessary?
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property reasonCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why the assessment was necessary?
/// <p>
/// Condition | Observation | DiagnosticReport | DocumentReference
Property reasonReference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Information used in assessment.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property basis As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "basis", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Outcome predicted.
Property prediction As List Of HS.FHIR.vR4.Model.Element.RiskAssessment.prediction(XMLNAME = "prediction", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// How to reduce risk.
Property mitigation As %String(MAXLEN = 1000000, XMLNAME = "mitigation", XMLPROJECTION = "ATTRIBUTE");

/// Annotation
/// <p>
/// Comments on the risk assessment.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "RiskAssessment";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "RiskAssessment";

}
