/// Fixture in the test script - by reference (uri)
Class HS.FHIR.Storage.vR4.Model.Element.TestScript.fixture Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// Whether or not to implicitly create the fixture during setup.
Property autocreate As %Boolean(XMLNAME = "autocreate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// Whether or not to implicitly delete the fixture during teardown.
Property autodelete As %Boolean(XMLNAME = "autodelete", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Reference of the resource.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property resource As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "resource", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.fixture";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.fixture";

Storage Default
{
<Data name="fixtureDefaultData">
<Subscript>"fixture"</Subscript>
<Value name="1">
<Value>autocreate</Value>
</Value>
<Value name="2">
<Value>autodelete</Value>
</Value>
<Value name="3">
<Value>resource</Value>
</Value>
</Data>
<DefaultData>fixtureDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
