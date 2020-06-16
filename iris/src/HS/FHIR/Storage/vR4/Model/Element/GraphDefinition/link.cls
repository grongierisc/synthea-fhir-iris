/// Links this graph makes rules about.
Class HS.FHIR.Storage.vR4.Model.Element.GraphDefinition.link Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Path in the resource that contains the link.
Property path As %String(MAXLEN = 1000000, XMLNAME = "path", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Which slice (if profiled)
Property sliceName As %String(MAXLEN = 1000000, XMLNAME = "sliceName", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Minimum occurrences for this link.
Property min As %Integer(XMLNAME = "min", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Maximum occurrences for this link.
Property max As %String(MAXLEN = 1000000, XMLNAME = "max", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Why this link is specified.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Potential target for the link.
Property target As array Of HS.FHIR.Storage.vR4.Model.Element.GraphDefinition.link.target(XMLNAME = "target", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "GraphDefinition.link";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "GraphDefinition.link";

Storage Default
{
<Data name="linkDefaultData">
<Subscript>"link"</Subscript>
<Value name="1">
<Value>path</Value>
</Value>
<Value name="2">
<Value>sliceName</Value>
</Value>
<Value name="3">
<Value>min</Value>
</Value>
<Value name="4">
<Value>max</Value>
</Value>
<Value name="5">
<Value>description</Value>
</Value>
</Data>
<Data name="target">
<Attribute>target</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.GraphDefinition.link.target"</Subscript>
</Data>
<DefaultData>linkDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
