/// Message destination application(s)
Class HS.FHIR.vR4.Model.Element.MessageHeader.destination Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Name of system.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Particular delivery destination within the destination.
/// <p>
/// Device
Property target As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "target", XMLPROJECTION = "ELEMENT");

/// url
/// <p>
/// Actual destination address or id.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property endpoint As %String(MAXLEN = 1000000, XMLNAME = "endpoint", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Intended \"real-world\" recipient for the data.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property receiver As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "receiver", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MessageHeader.destination";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MessageHeader.destination";

}
