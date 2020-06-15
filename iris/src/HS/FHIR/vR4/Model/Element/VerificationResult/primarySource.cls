/// Information about the primary source(s) involved in validation.
Class HS.FHIR.vR4.Model.Element.VerificationResult.primarySource Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Reference to the primary source.
/// <p>
/// Organization | Practitioner | PractitionerRole
Property who As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "who", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type of primary source (License Board; 
/// Primary Education; 
/// Continuing Education; 
/// Postal Service; 
/// Relationship owner; 
/// Registration Authority; 
/// legal source; 
/// issuing source; 
/// authoritative source)
/// <p>
/// any FHIR4 code may be used; 
/// verificationresult-primary-source-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Method for exchanging information with the primary source.
/// <p>
/// any FHIR4 code may be used; 
/// verificationresult-communication-method shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property communicationMethod As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "communicationMethod", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// successful | failed | unknown
/// <p>
/// verificationresult-validation-status is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in verificationresult-validation-status, 
/// you may use codes from any ValueSet.
Property validationStatus As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "validationStatus", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the target was validated against the primary source.
Property validationDate As %String(MAXLEN = 1000000, XMLNAME = "validationDate", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// yes | no | undetermined
/// <p>
/// verificationresult-can-push-updates is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in verificationresult-can-push-updates, 
/// you may use codes from any ValueSet.
Property canPushUpdates As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "canPushUpdates", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// specific | any | source
/// <p>
/// verificationresult-push-type-available is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in verificationresult-push-type-available, 
/// you may use codes from any ValueSet.
Property pushTypeAvailable As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "pushTypeAvailable", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "VerificationResult.primarySource";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "VerificationResult.primarySource";

}
