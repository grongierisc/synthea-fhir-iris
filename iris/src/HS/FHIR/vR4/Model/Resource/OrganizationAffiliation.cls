/// Defines an affiliation/assotiation/relationship between 2 distinct oganizations, 
/// that is not a part-of relationship/sub-division relationship.
Class HS.FHIR.vR4.Model.Resource.OrganizationAffiliation Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifiers that are specific to this role.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether this organization affiliation record is in active use.
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// The period during which the participatingOrganization is affiliated with the primary organization.
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization where the role is available.
/// <p>
/// Organization
Property organization As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "organization", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization that provides/performs the role (e.g. 
/// providing services or is a member of)
/// <p>
/// Organization
Property participatingOrganization As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "participatingOrganization", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Health insurance provider network in which the participatingOrganization provides the role's services (if defined) at the indicated locations (if defined)
/// <p>
/// Organization
Property network As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "network", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Definition of the role the participatingOrganization plays.
/// <p>
/// any FHIR4 code may be used; 
/// organization-role shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Specific specialty of the participatingOrganization in the context of the role.
/// <p>
/// c80-practice-codes is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in c80-practice-codes, 
/// you may use codes from any ValueSet.
Property specialty As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "specialty", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The location(s) at which the role occurs.
/// <p>
/// Location
Property location As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Healthcare services provided through the role.
/// <p>
/// HealthcareService
Property healthcareService As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "healthcareService", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// Contact details at the participatingOrganization relevant to this Affiliation.
Property telecom As List Of HS.FHIR.vR4.Model.Datatype.ContactPoint(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Technical endpoints providing access to services operated for this role.
/// <p>
/// Endpoint
Property endpoint As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "OrganizationAffiliation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "OrganizationAffiliation";

}
