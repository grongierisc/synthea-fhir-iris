/// A code system supported by the server.
Class HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.codeSystem Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
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
Property version As array Of HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.codeSystem.version(XMLNAME = "version", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether subsumption is supported.
Property subsumption As %Boolean(XMLNAME = "subsumption", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TerminologyCapabilities.codeSystem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TerminologyCapabilities.codeSystem";

Storage Default
{
<Data name="codeSystemDefaultData">
<Subscript>"codeSystem"</Subscript>
<Value name="1">
<Value>uri</Value>
</Value>
<Value name="2">
<Value>subsumption</Value>
</Value>
</Data>
<Data name="version">
<Attribute>version</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.codeSystem.version"</Subscript>
</Data>
<DefaultData>codeSystemDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
