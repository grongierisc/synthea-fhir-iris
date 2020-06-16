/// The details of a healthcare service available at a location.
Class HS.FHIR.Storage.vR4.Model.Resource.HealthcareService Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External identifiers for this item.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether this HealthcareService record is in active use.
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Organization that provides this service.
/// <p>
/// Organization
Property providedBy As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "providedBy", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Broad category of service being performed or delivered.
/// <p>
/// any FHIR4 code may be used; 
/// service-category shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type of service that may be delivered or performed.
/// <p>
/// any FHIR4 code may be used; 
/// service-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Specialties handled by the HealthcareService.
/// <p>
/// c80-practice-codes is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in c80-practice-codes, 
/// you may use codes from any ValueSet.
Property specialty As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "specialty", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Location(s) where service may be provided.
/// <p>
/// Location
Property location As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Description of service as presented to a consumer while searching.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Additional description and/or any specific issues not covered elsewhere.
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Extra details about the service that can't be placed in the other fields.
Property extraDetails As %String(MAXLEN = 1000000, XMLNAME = "extraDetails", XMLPROJECTION = "ATTRIBUTE");

/// Attachment
/// <p>
/// Facilitates quick identification of the service.
Property photo As HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "photo", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// Contacts related to the healthcare service.
Property telecom As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactPoint(XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Location(s) service is intended for/available to.
/// <p>
/// Location
Property coverageArea As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "coverageArea", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Conditions under which service is available/offered.
/// <p>
/// any FHIR4 code may be used; 
/// service-provision-conditions shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property serviceProvisionCode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "serviceProvisionCode", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Specific eligibility requirements required to use the service.
Property eligibility As array Of HS.FHIR.Storage.vR4.Model.Element.HealthcareService.eligibility(XMLNAME = "eligibility", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Programs that this service is applicable to.
/// <p>
/// any FHIR4 code may be used; 
/// program shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property program As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "program", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Collection of characteristics (attributes)
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property characteristic As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "characteristic", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The language that this service is offered in.
/// <p>
/// languages is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in languages, 
/// you may use codes from any ValueSet.
Property communication As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "communication", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Ways that the service accepts referrals.
/// <p>
/// any FHIR4 code may be used; 
/// service-referral-method shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property referralMethod As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "referralMethod", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// If an appointment is required for access to this service.
Property appointmentRequired As %Boolean(XMLNAME = "appointmentRequired", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Times the Service Site is available.
Property availableTime As array Of HS.FHIR.Storage.vR4.Model.Element.HealthcareService.availableTime(XMLNAME = "availableTime", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Not available during this time due to provided reason.
Property notAvailable As array Of HS.FHIR.Storage.vR4.Model.Element.HealthcareService.notAvailable(XMLNAME = "notAvailable", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Description of availability exceptions.
Property availabilityExceptions As %String(MAXLEN = 1000000, XMLNAME = "availabilityExceptions", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Technical endpoints providing access to electronic services operated for the healthcare service.
/// <p>
/// Endpoint
Property endpoint As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "HealthcareService";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "HealthcareService";

Storage Default
{
<Data name="HealthcareServiceDefaultData">
<Subscript>"HealthcareService"</Subscript>
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>providedBy</Value>
</Value>
<Value name="3">
<Value>name</Value>
</Value>
<Value name="4">
<Value>comment</Value>
</Value>
<Value name="5">
<Value>extraDetails</Value>
</Value>
<Value name="6">
<Value>photo</Value>
</Value>
<Value name="7">
<Value>appointmentRequired</Value>
</Value>
<Value name="8">
<Value>availabilityExceptions</Value>
</Value>
</Data>
<Data name="availableTime">
<Attribute>availableTime</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.HealthcareService.availableTime"</Subscript>
</Data>
<Data name="category">
<Attribute>category</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.HealthcareService.category"</Subscript>
</Data>
<Data name="characteristic">
<Attribute>characteristic</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.HealthcareService.characteristic"</Subscript>
</Data>
<Data name="communication">
<Attribute>communication</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.HealthcareService.communication"</Subscript>
</Data>
<Data name="coverageArea">
<Attribute>coverageArea</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.HealthcareService.coverageArea"</Subscript>
</Data>
<Data name="eligibility">
<Attribute>eligibility</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.HealthcareService.eligibility"</Subscript>
</Data>
<Data name="endpoint">
<Attribute>endpoint</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.HealthcareService.endpoint"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.HealthcareService.identifier"</Subscript>
</Data>
<Data name="location">
<Attribute>location</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.HealthcareService.location"</Subscript>
</Data>
<Data name="notAvailable">
<Attribute>notAvailable</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.HealthcareService.notAvailable"</Subscript>
</Data>
<Data name="program">
<Attribute>program</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.HealthcareService.program"</Subscript>
</Data>
<Data name="referralMethod">
<Attribute>referralMethod</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.HealthcareService.referralMethod"</Subscript>
</Data>
<Data name="serviceProvisionCode">
<Attribute>serviceProvisionCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.HealthcareService.serviceProvisionCode"</Subscript>
</Data>
<Data name="specialty">
<Attribute>specialty</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.HealthcareService.specialty"</Subscript>
</Data>
<Data name="telecom">
<Attribute>telecom</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.HealthcareService.telecom"</Subscript>
</Data>
<Data name="type">
<Attribute>type</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.HealthcareService.type"</Subscript>
</Data>
<DefaultData>HealthcareServiceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
