/// EnrollmentResponse resource.
Class HS.FHIR.vR4.Model.Resource.EnrollmentResponse Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | cancelled | draft | entered-in-error
/// <p>
/// fm-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend fm-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Claim reference.
/// <p>
/// EnrollmentRequest
Property request As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "request", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// queued | complete | error | partial
/// <p>
/// remittance-outcome|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend remittance-outcome|4.0.1 and you may NOT use codes from other ValueSets.
Property outcome As %String(MAXLEN = 1000000, XMLNAME = "outcome", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Disposition Message.
Property disposition As %String(MAXLEN = 1000000, XMLNAME = "disposition", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Creation date.
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Insurer.
/// <p>
/// Organization
Property organization As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "organization", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Responsible practitioner.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property requestProvider As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "requestProvider", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EnrollmentResponse";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EnrollmentResponse";

}
