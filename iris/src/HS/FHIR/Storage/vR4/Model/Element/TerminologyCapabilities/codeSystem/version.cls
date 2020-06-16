/// Version of Code System supported.
Class HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.codeSystem.version Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
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
Property language As array Of %String(MAXLEN = 1000000, XMLNAME = "language", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Filter Properties supported.
Property filter As array Of HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.codeSystem.version.filter(XMLNAME = "filter", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// Properties supported for $lookup.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property property As array Of %String(MAXLEN = 1000000, XMLNAME = "property", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TerminologyCapabilities.codeSystem.version";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TerminologyCapabilities.codeSystem.version";

Storage Default
{
<Data name="filter">
<Attribute>filter</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.codeSystem.version.filter"</Subscript>
</Data>
<Data name="language">
<Attribute>language</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.codeSystem.version.language"</Subscript>
</Data>
<Data name="property">
<Attribute>property</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.codeSystem.version.property"</Subscript>
</Data>
<Data name="versionDefaultData">
<Subscript>"version"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>isDefault</Value>
</Value>
<Value name="3">
<Value>compositional</Value>
</Value>
</Data>
<DefaultData>versionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
