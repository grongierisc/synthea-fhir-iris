/// An instance of a medical-related component of a medical device.
Class HS.FHIR.vR4.Model.Resource.DeviceDefinition Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Instance identifier.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Unique Device Identifier (UDI) Barcode string.
Property udiDeviceIdentifier As List Of HS.FHIR.vR4.Model.Element.DeviceDefinition.udiDeviceIdentifier(XMLNAME = "udiDeviceIdentifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Name of device manufacturer.
/// <p>
/// Organization.
Property manufacturerReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "manufacturerReference", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Name of device manufacturer.
Property manufacturerString As %String(MAXLEN = 1000000, XMLNAME = "manufacturerString", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// A name given to the device to identify it.
Property deviceName As List Of HS.FHIR.vR4.Model.Element.DeviceDefinition.deviceName(XMLNAME = "deviceName", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The model number for the device.
Property modelNumber As %String(MAXLEN = 1000000, XMLNAME = "modelNumber", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// What kind of device or device system this is.
/// <p>
/// any FHIR4 code may be used; 
/// device-kind shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The capabilities supported on a  device, 
/// the standards to which the device conforms for a particular purpose, 
/// and used for the communication.
Property specialization As List Of HS.FHIR.vR4.Model.Element.DeviceDefinition.specialization(XMLNAME = "specialization", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Available versions.
Property version As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Safety characteristics of the device.
/// <p>
/// any FHIR4 code may be used; 
/// device-safety shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property safety As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "safety", XMLPROJECTION = "ELEMENT");

/// ProductShelfLife
/// <p>
/// Shelf Life and storage information.
Property shelfLifeStorage As List Of HS.FHIR.vR4.Model.Datatype.ProductShelfLife(XMLNAME = "shelfLifeStorage", XMLPROJECTION = "ELEMENT");

/// ProdCharacteristic
/// <p>
/// Dimensions, 
/// color etc.
Property physicalCharacteristics As HS.FHIR.vR4.Model.Datatype.ProdCharacteristic(XMLNAME = "physicalCharacteristics", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Language code for the human-readable text strings produced by the device (all supported)
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property languageCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "languageCode", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Device capabilities.
Property capability As List Of HS.FHIR.vR4.Model.Element.DeviceDefinition.capability(XMLNAME = "capability", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The actual configuration settings of a device as it actually operates, 
/// e.g., 
/// regulation status, 
/// time properties.
Property property As List Of HS.FHIR.vR4.Model.Element.DeviceDefinition.property(XMLNAME = "property", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization responsible for device.
/// <p>
/// Organization
Property owner As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "owner", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// Details for human/organization for support.
Property contact As List Of HS.FHIR.vR4.Model.Datatype.ContactPoint(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Network address to contact device.
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Access to on-line information.
Property onlineInformation As %String(MAXLEN = 1000000, XMLNAME = "onlineInformation", XMLPROJECTION = "ATTRIBUTE");

/// Annotation
/// <p>
/// Device notes and comments.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// The quantity of the device present in the packaging (e.g. 
/// the number of devices present in a pack, 
/// or the number of devices in the same package of the medicinal product)
Property quantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The parent device it can be part of.
/// <p>
/// DeviceDefinition
Property parentDevice As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "parentDevice", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A substance used to create the material(s) of which the device is made.
Property material As List Of HS.FHIR.vR4.Model.Element.DeviceDefinition.material(XMLNAME = "material", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceDefinition";

}
