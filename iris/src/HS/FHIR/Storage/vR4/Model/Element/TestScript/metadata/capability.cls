/// Capabilities  that are assumed to function correctly on the FHIR server being tested.
Class HS.FHIR.Storage.vR4.Model.Element.TestScript.metadata.capability Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// Are the capabilities required?
Property required As %Boolean(XMLNAME = "required", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// Are the capabilities validated?
Property validated As %Boolean(XMLNAME = "validated", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// The expected capabilities of the server.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Which origin server these requirements apply to.
Property origin As array Of %Integer(XMLNAME = "origin", XMLPROJECTION = "ELEMENT");

/// integer
/// <p>
/// Which server these requirements apply to.
Property destination As %Integer(XMLNAME = "destination", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Links to the FHIR specification.
Property link As array Of %String(MAXLEN = 1000000, XMLNAME = "link", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Required Capability Statement.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property capabilities As %String(MAXLEN = 1000000, XMLNAME = "capabilities", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.metadata.capability";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.metadata.capability";

Storage Default
{
<Data name="capabilityDefaultData">
<Subscript>"capability"</Subscript>
<Value name="1">
<Value>required</Value>
</Value>
<Value name="2">
<Value>validated</Value>
</Value>
<Value name="3">
<Value>description</Value>
</Value>
<Value name="4">
<Value>destination</Value>
</Value>
<Value name="5">
<Value>capabilities</Value>
</Value>
</Data>
<Data name="link">
<Attribute>link</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.TestScript.metadata.capability.link"</Subscript>
</Data>
<Data name="origin">
<Attribute>origin</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.TestScript.metadata.capability.origin"</Subscript>
</Data>
<DefaultData>capabilityDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
