/// Version of Code System supported.
Class HS.FHIR.vR4.Model.Element.TerminologyCapabilities.codeSystem.version Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Version identifier for this version.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// If this is the default version for this code system.
Property isDefault As %Boolean(XMLNAME = "isDefault", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// If compositional grammar is supported.
Property compositional As %Boolean(XMLNAME = "compositional", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Language Displays supported.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property language As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "language", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Filter Properties supported.
Property filter As List Of HS.FHIR.vR4.Model.Element.TerminologyCapabilities.codeSystem.version.filter(XMLNAME = "filter", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// Properties supported for $lookup.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property property As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "property", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TerminologyCapabilities.codeSystem.version";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TerminologyCapabilities.codeSystem.version";

}
