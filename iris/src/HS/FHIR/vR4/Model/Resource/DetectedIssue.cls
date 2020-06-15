/// Clinical issue with action.
Class HS.FHIR.vR4.Model.Resource.DetectedIssue Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Unique id for the detected issue.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// registered | preliminary | final | amended +
/// <p>
/// observation-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend observation-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Issue Category, 
/// e.g. 
/// drug-drug, 
/// duplicate therapy, 
/// etc.
/// <p>
/// detectedissue-category is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in detectedissue-category, 
/// you may use codes from any ValueSet.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// high | moderate | low
/// <p>
/// detectedissue-severity|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend detectedissue-severity|4.0.1 and you may NOT use codes from other ValueSets.
Property severity As %String(MAXLEN = 1000000, XMLNAME = "severity", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Associated patient.
/// <p>
/// Patient
Property patient As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When identified.
Property identifiedDateTime As %String(MAXLEN = 1000000, XMLNAME = "identifiedDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When identified.
Property identifiedPeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "identifiedPeriod", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The provider or device that identified the issue.
/// <p>
/// Practitioner | PractitionerRole | Device
Property author As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Problem resource.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property implicated As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "implicated", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Supporting evidence.
Property evidence As List Of HS.FHIR.vR4.Model.Element.DetectedIssue.evidence(XMLNAME = "evidence", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Description and context.
Property detail As %String(MAXLEN = 1000000, XMLNAME = "detail", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Authority for issue.
Property reference As %String(MAXLEN = 1000000, XMLNAME = "reference", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Step taken to address.
Property mitigation As List Of HS.FHIR.vR4.Model.Element.DetectedIssue.mitigation(XMLNAME = "mitigation", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DetectedIssue";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DetectedIssue";

}
