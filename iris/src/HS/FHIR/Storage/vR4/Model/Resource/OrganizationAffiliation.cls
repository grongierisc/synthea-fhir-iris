/// Defines an affiliation/assotiation/relationship between 2 distinct oganizations, 
/// that is not a part-of relationship/sub-division relationship.
Class HS.FHIR.Storage.vR4.Model.Resource.OrganizationAffiliation Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifiers that are specific to this role.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether this organization affiliation record is in active use.
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// The period during which the participatingOrganization is affiliated with the primary organization.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization where the role is available.
/// <p>
/// Organization
Property organization As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "organization", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization that provides/performs the role (e.g. 
/// providing services or is a member of)
/// <p>
/// Organization
Property participatingOrganization As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "participatingOrganization", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Health insurance provider network in which the participatingOrganization provides the role's services (if defined) at the indicated locations (if defined)
/// <p>
/// Organization
Property network As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "network", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Definition of the role the participatingOrganization plays.
/// <p>
/// any FHIR4 code may be used; 
/// organization-role shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Specific specialty of the participatingOrganization in the context of the role.
/// <p>
/// c80-practice-codes is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in c80-practice-codes, 
/// you may use codes from any ValueSet.
Property specialty As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "specialty", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The location(s) at which the role occurs.
/// <p>
/// Location
Property location As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Healthcare services provided through the role.
/// <p>
/// HealthcareService
Property healthcareService As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "healthcareService", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// Contact details at the participatingOrganization relevant to this Affiliation.
Property telecom As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactPoint(XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Technical endpoints providing access to services operated for this role.
/// <p>
/// Endpoint
Property endpoint As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "OrganizationAffiliation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "OrganizationAffiliation";

Storage Default
{
<Data name="OrganizationAffiliationDefaultData">
<Subscript>"OrganizationAffiliation"</Subscript>
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>period</Value>
</Value>
<Value name="3">
<Value>organization</Value>
</Value>
<Value name="4">
<Value>participatingOrganization</Value>
</Value>
</Data>
<Data name="code">
<Attribute>code</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.OrganizationAffiliation.code"</Subscript>
</Data>
<Data name="endpoint">
<Attribute>endpoint</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.OrganizationAffiliation.endpoint"</Subscript>
</Data>
<Data name="healthcareService">
<Attribute>healthcareService</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.OrganizationAffiliation.healthcareService"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.OrganizationAffiliation.identifier"</Subscript>
</Data>
<Data name="location">
<Attribute>location</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.OrganizationAffiliation.location"</Subscript>
</Data>
<Data name="network">
<Attribute>network</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.OrganizationAffiliation.network"</Subscript>
</Data>
<Data name="specialty">
<Attribute>specialty</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.OrganizationAffiliation.specialty"</Subscript>
</Data>
<Data name="telecom">
<Attribute>telecom</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.OrganizationAffiliation.telecom"</Subscript>
</Data>
<DefaultData>OrganizationAffiliationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
