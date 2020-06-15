/// Record of use of a device.
Class HS.FHIR.vR4.Model.Resource.DeviceUseStatement Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External identifier for this record.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Fulfills plan, 
/// proposal or order.
/// <p>
/// ServiceRequest
Property basedOn As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | completed | entered-in-error +
/// <p>
/// device-statement-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend device-statement-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Patient using device.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Supporting information.
/// <p>
/// ServiceRequest | Procedure | Claim | Observation | QuestionnaireResponse | DocumentReference
Property derivedFrom As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "derivedFrom", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// How often  the device was used.
Property timingDateTime As %String(MAXLEN = 1000000, XMLNAME = "timingDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// How often  the device was used.
Property timingPeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "timingPeriod", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// How often  the device was used.
Property timingTiming As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "timingTiming", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When statement was recorded.
Property recordedOn As %String(MAXLEN = 1000000, XMLNAME = "recordedOn", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who made the statement.
/// <p>
/// Patient | Practitioner | PractitionerRole | RelatedPerson
Property source As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Reference to device used.
/// <p>
/// Device
Property device As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "device", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Why device was used.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property reasonCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why was DeviceUseStatement performed?
/// <p>
/// Condition | Observation | DiagnosticReport | DocumentReference | Media
Property reasonReference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Target body site.
/// <p>
/// any FHIR4 code may be used; 
/// body-site shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property bodySite As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Addition details (comments, 
/// instructions)
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceUseStatement";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceUseStatement";

}
