/// The capabilities supported on a  device, 
/// the standards to which the device conforms for a particular purpose, 
/// and used for the communication.
Class HS.FHIR.vR4.Model.Element.DeviceDefinition.specialization Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// The standard that is used to operate and communicate.
Property systemType As %String(MAXLEN = 1000000, XMLNAME = "systemType", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// The version of the standard that is used to operate and communicate.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceDefinition.specialization";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceDefinition.specialization";

}
