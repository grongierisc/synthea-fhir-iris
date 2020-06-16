/// The channel on which to report matches to the criteria.
Class HS.FHIR.Storage.vR4.Model.Element.Subscription.channel Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// rest-hook | websocket | email | sms | message
/// <p>
/// subscription-channel-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend subscription-channel-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// url
/// <p>
/// Where the channel points to.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property endpoint As %String(MAXLEN = 1000000, XMLNAME = "endpoint", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// MIME type to send, 
/// or omit for no payload.
/// <p>
/// mimetypes|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend mimetypes|4.0.1 and you may NOT use codes from other ValueSets.
Property payload As %String(MAXLEN = 1000000, XMLNAME = "payload", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Usage depends on the channel type.
Property header As array Of %String(MAXLEN = 1000000, XMLNAME = "header", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Subscription.channel";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Subscription.channel";

Storage Default
{
<Data name="channelDefaultData">
<Subscript>"channel"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>endpoint</Value>
</Value>
<Value name="3">
<Value>payload</Value>
</Value>
</Data>
<Data name="header">
<Attribute>header</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Subscription.channel.header"</Subscript>
</Data>
<DefaultData>channelDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
