/// Messages supported by this system.
Class HS.FHIR.vR4.Model.Element.CapabilityStatement.messaging.supportedMessage Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// sender | receiver
/// <p>
/// event-capability-mode|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend event-capability-mode|4.0.1 and you may NOT use codes from other ValueSets.
Property mode As %String(MAXLEN = 1000000, XMLNAME = "mode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// canonical
/// <p>
/// Message supported by this system.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property definition As %String(MAXLEN = 1000000, XMLNAME = "definition", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CapabilityStatement.messaging.supportedMessage";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CapabilityStatement.messaging.supportedMessage";

}
