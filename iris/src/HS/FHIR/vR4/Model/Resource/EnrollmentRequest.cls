/// Enroll in coverage.
Class HS.FHIR.vR4.Model.Resource.EnrollmentRequest Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
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

/// dateTime
/// <p>
/// Creation date.
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Target.
/// <p>
/// Organization
Property insurer As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "insurer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Responsible practitioner.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property provider As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "provider", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The subject to be enrolled.
/// <p>
/// Patient
Property candidate As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "candidate", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Insurance information.
/// <p>
/// Coverage
Property coverage As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "coverage", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EnrollmentRequest";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EnrollmentRequest";

}
