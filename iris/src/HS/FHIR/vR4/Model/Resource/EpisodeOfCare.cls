/// An association of a Patient with an Organization and  Healthcare Provider(s) for a period of time that the Organization assumes some level of responsibility.
Class HS.FHIR.vR4.Model.Resource.EpisodeOfCare Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier(s) relevant for this EpisodeOfCare.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// planned | waitlist | active | onhold | finished | cancelled | entered-in-error
/// <p>
/// episode-of-care-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend episode-of-care-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// BackboneElement
/// <p>
/// Past list of status codes (the current status may be included to cover the start date of the status)
Property statusHistory As List Of HS.FHIR.vR4.Model.Element.EpisodeOfCare.statusHistory(XMLNAME = "statusHistory", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type/class  - e.g. 
/// specialist referral, 
/// disease management.
/// <p>
/// any FHIR4 code may be used; 
/// episodeofcare-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The list of diagnosis relevant to this episode of care.
Property diagnosis As List Of HS.FHIR.vR4.Model.Element.EpisodeOfCare.diagnosis(XMLNAME = "diagnosis", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The patient who is the focus of this episode of care.
/// <p>
/// Patient
Property patient As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Organization that assumes care.
/// <p>
/// Organization
Property managingOrganization As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "managingOrganization", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Interval during responsibility is assumed.
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Originating Referral Request(s)
/// <p>
/// ServiceRequest
Property referralRequest As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "referralRequest", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Care manager/care coordinator for the patient.
/// <p>
/// Practitioner | PractitionerRole
Property careManager As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "careManager", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Other practitioners facilitating this episode of care.
/// <p>
/// CareTeam
Property team As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "team", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The set of accounts that may be used for billing for this EpisodeOfCare.
/// <p>
/// Account
Property account As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "account", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EpisodeOfCare";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EpisodeOfCare";

}
