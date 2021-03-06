/// A name given to the device to identify it.
Class HS.FHIR.Storage.vR4.Model.Element.DeviceDefinition.deviceName Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// The name of the device.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// udi-label-name | user-friendly-name | patient-reported-name | manufacturer-name | model-name | other
/// <p>
/// device-nametype|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend device-nametype|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceDefinition.deviceName";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceDefinition.deviceName";

Storage Default
{
<Data name="deviceNameDefaultData">
<Subscript>"deviceName"</Subscript>
<Value name="1">
<Value>name</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
</Data>
<DefaultData>deviceNameDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
