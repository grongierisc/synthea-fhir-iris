/// Information about the [ValueSet/$expand](valueset-operation-expand.html) operation.
Class HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.expansion Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// Whether the server can return nested value sets.
Property hierarchical As %Boolean(XMLNAME = "hierarchical", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Whether the server supports paging on expansion.
Property paging As %Boolean(XMLNAME = "paging", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Allow request for incomplete expansions?
Property incomplete As %Boolean(XMLNAME = "incomplete", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Supported expansion parameter.
Property parameter As array Of HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.expansion.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Documentation about text searching works.
Property textFilter As %String(MAXLEN = 1000000, XMLNAME = "textFilter", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TerminologyCapabilities.expansion";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TerminologyCapabilities.expansion";

Storage Default
{
<Data name="expansionDefaultData">
<Subscript>"expansion"</Subscript>
<Value name="1">
<Value>hierarchical</Value>
</Value>
<Value name="2">
<Value>paging</Value>
</Value>
<Value name="3">
<Value>incomplete</Value>
</Value>
<Value name="4">
<Value>textFilter</Value>
</Value>
</Data>
<Data name="parameter">
<Attribute>parameter</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.expansion.parameter"</Subscript>
</Data>
<DefaultData>expansionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
