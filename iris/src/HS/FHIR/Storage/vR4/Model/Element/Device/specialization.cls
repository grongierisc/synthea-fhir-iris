/// The capabilities supported on a  device, 
/// the standards to which the device conforms for a particular purpose, 
/// and used for the communication.
Class HS.FHIR.Storage.vR4.Model.Element.Device.specialization Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The standard that is used to operate and communicate.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property systemType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "systemType", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// The version of the standard that is used to operate and communicate.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Device.specialization";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Device.specialization";

Storage Default
{
<Data name="specializationDefaultData">
<Subscript>"specialization"</Subscript>
<Value name="1">
<Value>systemType</Value>
</Value>
<Value name="2">
<Value>version</Value>
</Value>
</Data>
<DefaultData>specializationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
