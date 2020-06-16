/// Unique Device Identifier (UDI) Barcode string.
Class HS.FHIR.Storage.vR4.Model.Element.Device.udiCarrier Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Mandatory fixed portion of UDI.
Property deviceIdentifier As %String(MAXLEN = 1000000, XMLNAME = "deviceIdentifier", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// UDI Issuing Organization.
Property issuer As %String(MAXLEN = 1000000, XMLNAME = "issuer", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Regional UDI authority.
Property jurisdiction As %String(MAXLEN = 1000000, XMLNAME = "jurisdiction", XMLPROJECTION = "ATTRIBUTE");

/// base64Binary
/// <p>
/// UDI Machine Readable Barcode String.
Property carrierAIDC As %Binary(XMLNAME = "carrierAIDC", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// UDI Human Readable Barcode String.
Property carrierHRF As %String(MAXLEN = 1000000, XMLNAME = "carrierHRF", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// barcode | rfid | manual +
/// <p>
/// udi-entry-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend udi-entry-type|4.0.1 and you may NOT use codes from other ValueSets.
Property entryType As %String(MAXLEN = 1000000, XMLNAME = "entryType", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Device.udiCarrier";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Device.udiCarrier";

Storage Default
{
<Data name="udiCarrierDefaultData">
<Subscript>"udiCarrier"</Subscript>
<Value name="1">
<Value>deviceIdentifier</Value>
</Value>
<Value name="2">
<Value>issuer</Value>
</Value>
<Value name="3">
<Value>jurisdiction</Value>
</Value>
<Value name="4">
<Value>carrierAIDC</Value>
</Value>
<Value name="5">
<Value>carrierHRF</Value>
</Value>
<Value name="6">
<Value>entryType</Value>
</Value>
</Data>
<DefaultData>udiCarrierDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
