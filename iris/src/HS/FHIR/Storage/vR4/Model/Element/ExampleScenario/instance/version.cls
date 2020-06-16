/// A specific version of the resource.
Class HS.FHIR.Storage.vR4.Model.Element.ExampleScenario.instance.version Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// The identifier of a specific version of a resource.
Property versionId As %String(MAXLEN = 1000000, XMLNAME = "versionId", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// markdown
/// <p>
/// The description of the resource version.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExampleScenario.instance.version";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExampleScenario.instance.version";

Storage Default
{
<Data name="versionDefaultData">
<Subscript>"version"</Subscript>
<Value name="1">
<Value>versionId</Value>
</Value>
<Value name="2">
<Value>description</Value>
</Value>
</Data>
<DefaultData>versionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
