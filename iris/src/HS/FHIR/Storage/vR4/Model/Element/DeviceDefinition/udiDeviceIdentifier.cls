/// Unique Device Identifier (UDI) Barcode string.
Class HS.FHIR.Storage.vR4.Model.Element.DeviceDefinition.udiDeviceIdentifier Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// The identifier that is to be associated with every Device that references this DeviceDefintiion for the issuer and jurisdication porvided in the DeviceDefinition.udiDeviceIdentifier.
Property deviceIdentifier As %String(MAXLEN = 1000000, XMLNAME = "deviceIdentifier", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// uri
/// <p>
/// The organization that assigns the identifier algorithm.
Property issuer As %String(MAXLEN = 1000000, XMLNAME = "issuer", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// uri
/// <p>
/// The jurisdiction to which the deviceIdentifier applies.
Property jurisdiction As %String(MAXLEN = 1000000, XMLNAME = "jurisdiction", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceDefinition.udiDeviceIdentifier";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceDefinition.udiDeviceIdentifier";

Storage Default
{
<Data name="udiDeviceIdentifierDefaultData">
<Subscript>"udiDeviceIdentifier"</Subscript>
<Value name="1">
<Value>deviceIdentifier</Value>
</Value>
<Value name="2">
<Value>issuer</Value>
</Value>
<Value name="3">
<Value>jurisdiction</Value>
</Value>
</Data>
<DefaultData>udiDeviceIdentifierDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
