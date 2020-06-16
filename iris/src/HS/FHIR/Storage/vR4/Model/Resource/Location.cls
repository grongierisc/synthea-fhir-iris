/// Details and position information for a physical place.
Class HS.FHIR.Storage.vR4.Model.Resource.Location Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Unique code or number identifying the location to its users.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | suspended | inactive
/// <p>
/// location-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend location-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");

/// Coding
/// <p>
/// The operational status of the location (typically only for a bed/room)
/// <p>
/// v2-0116 is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in v2-0116, 
/// you may use codes from any ValueSet.
Property operationalStatus As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "operationalStatus", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Name of the location as used by humans.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// A list of alternate names that the location is known as, 
/// or was known as, 
/// in the past.
Property alias As array Of %String(MAXLEN = 1000000, XMLNAME = "alias", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Additional details about the location that could be displayed as further information to identify the location beyond its name.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// instance | kind
/// <p>
/// location-mode|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend location-mode|4.0.1 and you may NOT use codes from other ValueSets.
Property mode As %String(MAXLEN = 1000000, XMLNAME = "mode", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Type of function performed.
/// <p>
/// v3-ServiceDeliveryLocationRoleType is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in v3-ServiceDeliveryLocationRoleType, 
/// you may formally EXTEND v3-ServiceDeliveryLocationRoleType to add codes to it.
Property type As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// Contact details of the location.
Property telecom As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactPoint(XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

/// Address
/// <p>
/// Physical location.
Property address As HS.FHIR.Storage.vR4.Model.Datatype.Address(XMLNAME = "address", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Physical form of the location.
/// <p>
/// any FHIR4 code may be used; 
/// location-physical-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property physicalType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "physicalType", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The absolute geographic location.
Property position As HS.FHIR.Storage.vR4.Model.Element.Location.position(XMLNAME = "position", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization responsible for provisioning and upkeep.
/// <p>
/// Organization
Property managingOrganization As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "managingOrganization", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Another Location this one is physically a part of.
/// <p>
/// Location
Property partOf As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// What days/times during a week is this location usually open.
Property hoursOfOperation As array Of HS.FHIR.Storage.vR4.Model.Element.Location.hoursOfOperation(XMLNAME = "hoursOfOperation", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Description of availability exceptions.
Property availabilityExceptions As %String(MAXLEN = 1000000, XMLNAME = "availabilityExceptions", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Technical endpoints providing access to services operated for the location.
/// <p>
/// Endpoint
Property endpoint As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Location";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Location";

Storage Default
{
<Data name="LocationDefaultData">
<Subscript>"Location"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>operationalStatus</Value>
</Value>
<Value name="3">
<Value>name</Value>
</Value>
<Value name="4">
<Value>description</Value>
</Value>
<Value name="5">
<Value>mode</Value>
</Value>
<Value name="6">
<Value>address</Value>
</Value>
<Value name="7">
<Value>physicalType</Value>
</Value>
<Value name="8">
<Value>position</Value>
</Value>
<Value name="9">
<Value>managingOrganization</Value>
</Value>
<Value name="10">
<Value>partOf</Value>
</Value>
<Value name="11">
<Value>availabilityExceptions</Value>
</Value>
</Data>
<Data name="alias">
<Attribute>alias</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Location.alias"</Subscript>
</Data>
<Data name="endpoint">
<Attribute>endpoint</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Location.endpoint"</Subscript>
</Data>
<Data name="hoursOfOperation">
<Attribute>hoursOfOperation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Location.hoursOfOperation"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Location.identifier"</Subscript>
</Data>
<Data name="telecom">
<Attribute>telecom</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Location.telecom"</Subscript>
</Data>
<Data name="type">
<Attribute>type</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Location.type"</Subscript>
</Data>
<DefaultData>LocationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
