/// Resources contained in the instance.
Class HS.FHIR.Storage.vR4.Model.Element.ExampleScenario.instance.containedInstance Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Each resource contained in the instance.
Property resourceId As %String(MAXLEN = 1000000, XMLNAME = "resourceId", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// A specific version of a resource contained in the instance.
Property versionId As %String(MAXLEN = 1000000, XMLNAME = "versionId", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExampleScenario.instance.containedInstance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExampleScenario.instance.containedInstance";

Storage Default
{
<Data name="containedInstanceDefaultData">
<Subscript>"containedInstance"</Subscript>
<Value name="1">
<Value>resourceId</Value>
</Value>
<Value name="2">
<Value>versionId</Value>
</Value>
</Data>
<DefaultData>containedInstanceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
