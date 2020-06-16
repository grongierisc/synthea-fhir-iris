/// Roles/organizations the practitioner is associated with.
Class HS.FHIR.Storage.vR4.Model.Resource.PractitionerRole Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifiers that are specific to a role/location.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether this practitioner role record is in active use.
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// The period during which the practitioner is authorized to perform in these role(s)
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Practitioner that is able to provide the defined services for the organization.
/// <p>
/// Practitioner
Property practitioner As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "practitioner", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization where the roles are available.
/// <p>
/// Organization
Property organization As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "organization", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Roles which this practitioner may perform.
/// <p>
/// any FHIR4 code may be used; 
/// practitioner-role shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Specific specialty of the practitioner.
/// <p>
/// c80-practice-codes is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in c80-practice-codes, 
/// you may use codes from any ValueSet.
Property specialty As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "specialty", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The location(s) at which this practitioner provides care.
/// <p>
/// Location
Property location As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The list of healthcare services that this worker provides for this role's Organization/Location(s)
/// <p>
/// HealthcareService
Property healthcareService As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "healthcareService", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// Contact details that are specific to the role/location/service.
Property telecom As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactPoint(XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Times the Service Site is available.
Property availableTime As array Of HS.FHIR.Storage.vR4.Model.Element.PractitionerRole.availableTime(XMLNAME = "availableTime", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Not available during this time due to provided reason.
Property notAvailable As array Of HS.FHIR.Storage.vR4.Model.Element.PractitionerRole.notAvailable(XMLNAME = "notAvailable", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Description of availability exceptions.
Property availabilityExceptions As %String(MAXLEN = 1000000, XMLNAME = "availabilityExceptions", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Technical endpoints providing access to services operated for the practitioner with this role.
/// <p>
/// Endpoint
Property endpoint As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "PractitionerRole";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "PractitionerRole";

Storage Default
{
<Data name="PractitionerRoleDefaultData">
<Subscript>"PractitionerRole"</Subscript>
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>period</Value>
</Value>
<Value name="3">
<Value>practitioner</Value>
</Value>
<Value name="4">
<Value>organization</Value>
</Value>
<Value name="5">
<Value>availabilityExceptions</Value>
</Value>
</Data>
<Data name="availableTime">
<Attribute>availableTime</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.PractitionerRole.availableTime"</Subscript>
</Data>
<Data name="code">
<Attribute>code</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.PractitionerRole.code"</Subscript>
</Data>
<Data name="endpoint">
<Attribute>endpoint</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.PractitionerRole.endpoint"</Subscript>
</Data>
<Data name="healthcareService">
<Attribute>healthcareService</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.PractitionerRole.healthcareService"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.PractitionerRole.identifier"</Subscript>
</Data>
<Data name="location">
<Attribute>location</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.PractitionerRole.location"</Subscript>
</Data>
<Data name="notAvailable">
<Attribute>notAvailable</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.PractitionerRole.notAvailable"</Subscript>
</Data>
<Data name="specialty">
<Attribute>specialty</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.PractitionerRole.specialty"</Subscript>
</Data>
<Data name="telecom">
<Attribute>telecom</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.PractitionerRole.telecom"</Subscript>
</Data>
<DefaultData>PractitionerRoleDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
