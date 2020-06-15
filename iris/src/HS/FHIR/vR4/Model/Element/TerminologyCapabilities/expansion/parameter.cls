/// Supported expansion parameter.
Class HS.FHIR.vR4.Model.Element.TerminologyCapabilities.expansion.parameter Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// Expansion Parameter name.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Description of support for parameter.
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TerminologyCapabilities.expansion.parameter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TerminologyCapabilities.expansion.parameter";

}
