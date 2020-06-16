/// What codes are expected.
Class HS.FHIR.Storage.vR4.Model.Element.DataRequirement.codeFilter Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// string
/// <p>
/// A code-valued attribute to filter on.
Property path As %String(MAXLEN = 1000000, XMLNAME = "path", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// A coded (token) parameter to search on.
Property searchParam As %String(MAXLEN = 1000000, XMLNAME = "searchParam", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Valueset for the filter.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueSet As %String(MAXLEN = 1000000, XMLNAME = "valueSet", XMLPROJECTION = "ATTRIBUTE");

/// Coding
/// <p>
/// What code is expected.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As array Of HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "codeFilter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "codeFilter";

Storage Default
{
<Data name="code">
<Attribute>code</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.DataRequirement.codeFilter.code"</Subscript>
</Data>
<Data name="codeFilterDefaultData">
<Subscript>"codeFilter"</Subscript>
<Value name="1">
<Value>path</Value>
</Value>
<Value name="2">
<Value>searchParam</Value>
</Value>
<Value name="3">
<Value>valueSet</Value>
</Value>
</Data>
<DefaultData>codeFilterDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
