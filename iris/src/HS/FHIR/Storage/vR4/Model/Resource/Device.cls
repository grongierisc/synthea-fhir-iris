/// Item used in healthcare.
Class HS.FHIR.Storage.vR4.Model.Resource.Device Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Instance identifier.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The reference to the definition for the device.
/// <p>
/// DeviceDefinition
Property definition As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "definition", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Unique Device Identifier (UDI) Barcode string.
Property udiCarrier As array Of HS.FHIR.Storage.vR4.Model.Element.Device.udiCarrier(XMLNAME = "udiCarrier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | inactive | entered-in-error | unknown
/// <p>
/// device-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend device-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// online | paused | standby | offline | not-ready | transduc-discon | hw-discon | off
/// <p>
/// device-status-reason is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in device-status-reason, 
/// you may formally EXTEND device-status-reason to add codes to it.
Property statusReason As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "statusReason", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The distinct identification string.
Property distinctIdentifier As %String(MAXLEN = 1000000, XMLNAME = "distinctIdentifier", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name of device manufacturer.
Property manufacturer As %String(MAXLEN = 1000000, XMLNAME = "manufacturer", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Date when the device was made.
Property manufactureDate As %String(MAXLEN = 1000000, XMLNAME = "manufactureDate", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Date and time of expiry of this device (if applicable)
Property expirationDate As %String(MAXLEN = 1000000, XMLNAME = "expirationDate", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Lot number of manufacture.
Property lotNumber As %String(MAXLEN = 1000000, XMLNAME = "lotNumber", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Serial number assigned by the manufacturer.
Property serialNumber As %String(MAXLEN = 1000000, XMLNAME = "serialNumber", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// The name of the device as given by the manufacturer.
Property deviceName As array Of HS.FHIR.Storage.vR4.Model.Element.Device.deviceName(XMLNAME = "deviceName", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The model number for the device.
Property modelNumber As %String(MAXLEN = 1000000, XMLNAME = "modelNumber", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// The part number of the device.
Property partNumber As %String(MAXLEN = 1000000, XMLNAME = "partNumber", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// The kind or type of device.
/// <p>
/// any FHIR4 code may be used; 
/// device-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The capabilities supported on a  device, 
/// the standards to which the device conforms for a particular purpose, 
/// and used for the communication.
Property specialization As array Of HS.FHIR.Storage.vR4.Model.Element.Device.specialization(XMLNAME = "specialization", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The actual design of the device or software version running on the device.
Property version As array Of HS.FHIR.Storage.vR4.Model.Element.Device.version(XMLNAME = "version", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The actual configuration settings of a device as it actually operates, 
/// e.g., 
/// regulation status, 
/// time properties.
Property property As array Of HS.FHIR.Storage.vR4.Model.Element.Device.property(XMLNAME = "property", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Patient to whom Device is affixed.
/// <p>
/// Patient
Property patient As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization responsible for device.
/// <p>
/// Organization
Property owner As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "owner", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// Details for human/organization for support.
Property contact As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactPoint(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where the device is found.
/// <p>
/// Location
Property location As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Network address to contact device.
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// Annotation
/// <p>
/// Device notes and comments.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Safety Characteristics of Device.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property safety As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "safety", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The parent device.
/// <p>
/// Device
Property parent As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "parent", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Device";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Device";

Storage Default
{
<Data name="DeviceDefaultData">
<Subscript>"Device"</Subscript>
<Value name="1">
<Value>definition</Value>
</Value>
<Value name="2">
<Value>status</Value>
</Value>
<Value name="3">
<Value>distinctIdentifier</Value>
</Value>
<Value name="4">
<Value>manufacturer</Value>
</Value>
<Value name="5">
<Value>manufactureDate</Value>
</Value>
<Value name="6">
<Value>expirationDate</Value>
</Value>
<Value name="7">
<Value>lotNumber</Value>
</Value>
<Value name="8">
<Value>serialNumber</Value>
</Value>
<Value name="9">
<Value>modelNumber</Value>
</Value>
<Value name="10">
<Value>partNumber</Value>
</Value>
<Value name="11">
<Value>type</Value>
</Value>
<Value name="12">
<Value>patient</Value>
</Value>
<Value name="13">
<Value>owner</Value>
</Value>
<Value name="14">
<Value>location</Value>
</Value>
<Value name="15">
<Value>url</Value>
</Value>
<Value name="16">
<Value>parent</Value>
</Value>
</Data>
<Data name="contact">
<Attribute>contact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Device.contact"</Subscript>
</Data>
<Data name="deviceName">
<Attribute>deviceName</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Device.deviceName"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Device.identifier"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Device.note"</Subscript>
</Data>
<Data name="property">
<Attribute>property</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Device.property"</Subscript>
</Data>
<Data name="safety">
<Attribute>safety</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Device.safety"</Subscript>
</Data>
<Data name="specialization">
<Attribute>specialization</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Device.specialization"</Subscript>
</Data>
<Data name="statusReason">
<Attribute>statusReason</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Device.statusReason"</Subscript>
</Data>
<Data name="udiCarrier">
<Attribute>udiCarrier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Device.udiCarrier"</Subscript>
</Data>
<Data name="version">
<Attribute>version</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Device.version"</Subscript>
</Data>
<DefaultData>DeviceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
