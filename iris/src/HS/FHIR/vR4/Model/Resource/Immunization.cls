/// Immunization event information.
Class HS.FHIR.vR4.Model.Resource.Immunization Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifier.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// completed | entered-in-error | not-done
/// <p>
/// immunization-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend immunization-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Reason not done.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-status-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property statusReason As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "statusReason", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Vaccine product administered.
/// <p>
/// any FHIR4 code may be used; 
/// vaccine-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property vaccineCode As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "vaccineCode", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who was immunized.
/// <p>
/// Patient
Property patient As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Encounter immunization was part of.
/// <p>
/// Encounter
Property encounter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Vaccine administration date.
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Vaccine administration date.
Property occurrenceString As %String(MAXLEN = 1000000, XMLNAME = "occurrenceString", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// dateTime
/// <p>
/// When the immunization was first captured in the subject's record.
Property recorded As %String(MAXLEN = 1000000, XMLNAME = "recorded", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Indicates context the data was recorded in.
Property primarySource As %Boolean(XMLNAME = "primarySource", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Indicates the source of a secondarily reported record.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-origin shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reportOrigin As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reportOrigin", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where immunization occurred.
/// <p>
/// Location
Property location As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Vaccine manufacturer.
/// <p>
/// Organization
Property manufacturer As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Vaccine lot number.
Property lotNumber As %String(MAXLEN = 1000000, XMLNAME = "lotNumber", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// Vaccine expiration date.
Property expirationDate As %String(MAXLEN = 1000000, XMLNAME = "expirationDate", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Body site vaccine  was administered.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-site shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property site As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "site", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// How vaccine entered body.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-route shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property route As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "route", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Amount of vaccine administered.
Property doseQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "doseQuantity", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Who performed event.
Property performer As List Of HS.FHIR.vR4.Model.Element.Immunization.performer(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Additional immunization notes.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why immunization occurred.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why immunization occurred.
/// <p>
/// Condition | Observation | DiagnosticReport
Property reasonReference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Dose potency.
Property isSubpotent As %Boolean(XMLNAME = "isSubpotent", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Reason for being subpotent.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-subpotent-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property subpotentReason As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "subpotentReason", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Educational material presented to patient.
Property education As List Of HS.FHIR.vR4.Model.Element.Immunization.education(XMLNAME = "education", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Patient eligibility for a vaccination program.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-program-eligibility shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property programEligibility As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "programEligibility", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Funding source for the vaccine.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-funding-source shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property fundingSource As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "fundingSource", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Details of a reaction that follows immunization.
Property reaction As List Of HS.FHIR.vR4.Model.Element.Immunization.reaction(XMLNAME = "reaction", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Protocol followed by the provider.
Property protocolApplied As List Of HS.FHIR.vR4.Model.Element.Immunization.protocolApplied(XMLNAME = "protocolApplied", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Immunization";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Immunization";

}
