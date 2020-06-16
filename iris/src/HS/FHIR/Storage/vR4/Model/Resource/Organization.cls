/// A grouping of people or organizations with a common purpose.
Class HS.FHIR.Storage.vR4.Model.Resource.Organization Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Identifies this organization  across multiple systems.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether the organization's record is still in active use.
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Kind of organization.
/// <p>
/// any FHIR4 code may be used; 
/// organization-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Name used for the organization.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// A list of alternate names that the organization is known as, 
/// or was known as in the past.
Property alias As array Of %String(MAXLEN = 1000000, XMLNAME = "alias", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// A contact detail for the organization.
Property telecom As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactPoint(XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

/// Address
/// <p>
/// An address for the organization.
Property address As array Of HS.FHIR.Storage.vR4.Model.Datatype.Address(XMLNAME = "address", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The organization of which this organization forms a part.
/// <p>
/// Organization
Property partOf As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Contact for the organization for a certain purpose.
Property contact As array Of HS.FHIR.Storage.vR4.Model.Element.Organization.contact(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Technical endpoints providing access to services operated for the organization.
/// <p>
/// Endpoint
Property endpoint As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Organization";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Organization";

Storage Default
{
<Data name="OrganizationDefaultData">
<Subscript>"Organization"</Subscript>
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>name</Value>
</Value>
<Value name="3">
<Value>partOf</Value>
</Value>
</Data>
<Data name="address">
<Attribute>address</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Organization.address"</Subscript>
</Data>
<Data name="alias">
<Attribute>alias</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Organization.alias"</Subscript>
</Data>
<Data name="contact">
<Attribute>contact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Organization.contact"</Subscript>
</Data>
<Data name="endpoint">
<Attribute>endpoint</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Organization.endpoint"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Organization.identifier"</Subscript>
</Data>
<Data name="telecom">
<Attribute>telecom</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Organization.telecom"</Subscript>
</Data>
<Data name="type">
<Attribute>type</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Organization.type"</Subscript>
</Data>
<DefaultData>OrganizationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
