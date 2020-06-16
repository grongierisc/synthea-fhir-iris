/// Filter Properties supported.
Class HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.codeSystem.version.filter Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// Code of the property supported.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// Operations supported for the property.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property op As array Of %String(MAXLEN = 1000000, XMLNAME = "op", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TerminologyCapabilities.codeSystem.version.filter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TerminologyCapabilities.codeSystem.version.filter";

Storage Default
{
<Data name="filterDefaultData">
<Subscript>"filter"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
</Data>
<Data name="op">
<Attribute>op</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.codeSystem.version.filter.op"</Subscript>
</Data>
<DefaultData>filterDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
