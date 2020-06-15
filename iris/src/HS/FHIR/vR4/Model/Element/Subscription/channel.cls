/// The channel on which to report matches to the criteria.
Class HS.FHIR.vR4.Model.Element.Subscription.channel Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
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
Property header As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "header", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Subscription.channel";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Subscription.channel";

}
