/// Where messages should be sent.
Class HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.messaging.endpoint Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Coding
/// <p>
/// http | ftp | mllp +
/// <p>
/// message-transport is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in message-transport, 
/// you may formally EXTEND message-transport to add codes to it.
Property protocol As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "protocol", XMLPROJECTION = "ELEMENT") [ Required ];

/// url
/// <p>
/// Network address or identifier of the end-point.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property address As %String(MAXLEN = 1000000, XMLNAME = "address", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CapabilityStatement.messaging.endpoint";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CapabilityStatement.messaging.endpoint";

Storage Default
{
<Data name="endpointDefaultData">
<Subscript>"endpoint"</Subscript>
<Value name="1">
<Value>protocol</Value>
</Value>
<Value name="2">
<Value>address</Value>
</Value>
</Data>
<DefaultData>endpointDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
