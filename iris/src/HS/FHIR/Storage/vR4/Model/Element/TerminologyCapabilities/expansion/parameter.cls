/// Supported expansion parameter.
Class HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.expansion.parameter Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
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

Storage Default
{
<Data name="parameterDefaultData">
<Subscript>"parameter"</Subscript>
<Value name="1">
<Value>name</Value>
</Value>
<Value name="2">
<Value>documentation</Value>
</Value>
</Data>
<DefaultData>parameterDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
