/// If this is a reply to prior message.
Class HS.FHIR.vR4.Model.Element.MessageHeader.response Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// id
/// <p>
/// Id of original message.
Property identifier As %String(MAXLEN = 1000000, XMLNAME = "identifier", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// ok | transient-error | fatal-error
/// <p>
/// response-code|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend response-code|4.0.1 and you may NOT use codes from other ValueSets.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Specific list of hints/warnings/errors.
/// <p>
/// OperationOutcome
Property details As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "details", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MessageHeader.response";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MessageHeader.response";

}
