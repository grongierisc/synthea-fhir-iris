/// Roles/organizations the practitioner is associated with.
Class HS.FHIR.vR4.Model.Resource.PractitionerRole Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifiers that are specific to a role/location.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether this practitioner role record is in active use.
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// The period during which the practitioner is authorized to perform in these role(s)
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Practitioner that is able to provide the defined services for the organization.
/// <p>
/// Practitioner
Property practitioner As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "practitioner", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization where the roles are available.
/// <p>
/// Organization
Property organization As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "organization", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Roles which this practitioner may perform.
/// <p>
/// any FHIR4 code may be used; 
/// practitioner-role shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Specific specialty of the practitioner.
/// <p>
/// c80-practice-codes is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in c80-practice-codes, 
/// you may use codes from any ValueSet.
Property specialty As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "specialty", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The location(s) at which this practitioner provides care.
/// <p>
/// Location
Property location As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The list of healthcare services that this worker provides for this role's Organization/Location(s)
/// <p>
/// HealthcareService
Property healthcareService As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "healthcareService", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// Contact details that are specific to the role/location/service.
Property telecom As List Of HS.FHIR.vR4.Model.Datatype.ContactPoint(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Times the Service Site is available.
Property availableTime As List Of HS.FHIR.vR4.Model.Element.PractitionerRole.availableTime(XMLNAME = "availableTime", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Not available during this time due to provided reason.
Property notAvailable As List Of HS.FHIR.vR4.Model.Element.PractitionerRole.notAvailable(XMLNAME = "notAvailable", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Description of availability exceptions.
Property availabilityExceptions As %String(MAXLEN = 1000000, XMLNAME = "availabilityExceptions", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Technical endpoints providing access to services operated for the practitioner with this role.
/// <p>
/// Endpoint
Property endpoint As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "PractitionerRole";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "PractitionerRole";

}
