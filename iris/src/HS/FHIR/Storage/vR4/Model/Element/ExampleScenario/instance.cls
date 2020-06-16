/// Each resource and each version that is present in the workflow.
Class HS.FHIR.Storage.vR4.Model.Element.ExampleScenario.instance Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// The id of the resource for referencing.
Property resourceId As %String(MAXLEN = 1000000, XMLNAME = "resourceId", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// The type of the resource.
/// <p>
/// resource-types|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend resource-types|4.0.1 and you may NOT use codes from other ValueSets.
Property resourceType As %String(MAXLEN = 1000000, XMLNAME = "resourceType", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// A short name for the resource instance.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Human-friendly description of the resource instance.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// A specific version of the resource.
Property version As array Of HS.FHIR.Storage.vR4.Model.Element.ExampleScenario.instance.version(XMLNAME = "version", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Resources contained in the instance.
Property containedInstance As array Of HS.FHIR.Storage.vR4.Model.Element.ExampleScenario.instance.containedInstance(XMLNAME = "containedInstance", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExampleScenario.instance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExampleScenario.instance";

Storage Default
{
<Data name="containedInstance">
<Attribute>containedInstance</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ExampleScenario.instance.containedInstance"</Subscript>
</Data>
<Data name="instanceDefaultData">
<Subscript>"instance"</Subscript>
<Value name="1">
<Value>resourceId</Value>
</Value>
<Value name="2">
<Value>resourceType</Value>
</Value>
<Value name="3">
<Value>name</Value>
</Value>
<Value name="4">
<Value>description</Value>
</Value>
</Data>
<Data name="version">
<Attribute>version</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ExampleScenario.instance.version"</Subscript>
</Data>
<DefaultData>instanceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
