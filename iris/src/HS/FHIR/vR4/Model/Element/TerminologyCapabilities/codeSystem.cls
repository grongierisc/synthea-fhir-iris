/// A code system supported by the server.
Class HS.FHIR.vR4.Model.Element.TerminologyCapabilities.codeSystem Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// canonical
/// <p>
/// URI for the Code System.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property uri As %String(MAXLEN = 1000000, XMLNAME = "uri", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Version of Code System supported.
Property version As List Of HS.FHIR.vR4.Model.Element.TerminologyCapabilities.codeSystem.version(XMLNAME = "version", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether subsumption is supported.
Property subsumption As %Boolean(XMLNAME = "subsumption", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TerminologyCapabilities.codeSystem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TerminologyCapabilities.codeSystem";

}
