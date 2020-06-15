/// Responses to this message.
Class HS.FHIR.vR4.Model.Element.MessageDefinition.allowedResponse Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// canonical
/// <p>
/// Reference to allowed message definition response.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property message As %String(MAXLEN = 1000000, XMLNAME = "message", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// markdown
/// <p>
/// When should this response be used.
Property situation As %String(MAXLEN = 1000000, XMLNAME = "situation", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MessageDefinition.allowedResponse";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MessageDefinition.allowedResponse";

}
