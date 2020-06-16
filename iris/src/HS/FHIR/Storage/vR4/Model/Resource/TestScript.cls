/// Describes a set of tests.
Class HS.FHIR.Storage.vR4.Model.Resource.TestScript Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Canonical identifier for this test script, 
/// represented as a URI (globally unique)
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Identifier
/// <p>
/// Additional identifier for the test script.
Property identifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Business version of the test script.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this test script (computer friendly)
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Name for this test script (human friendly)
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// draft | active | retired | unknown
/// <p>
/// publication-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend publication-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// For testing purposes, 
/// not real usage.
Property experimental As %Boolean(XMLNAME = "experimental", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Date last changed.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name of the publisher (organization or individual)
Property publisher As %String(MAXLEN = 1000000, XMLNAME = "publisher", XMLPROJECTION = "ATTRIBUTE");

/// ContactDetail
/// <p>
/// Contact details for the publisher.
Property contact As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactDetail(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Natural language description of the test script.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As array Of HS.FHIR.Storage.vR4.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for test script (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Why this test script is defined.
Property purpose As %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Use and/or publishing restrictions.
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// An abstract server representing a client or sender in a message exchange.
Property origin As array Of HS.FHIR.Storage.vR4.Model.Element.TestScript.origin(XMLNAME = "origin", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// An abstract server representing a destination or receiver in a message exchange.
Property destination As array Of HS.FHIR.Storage.vR4.Model.Element.TestScript.destination(XMLNAME = "destination", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Required capability that is assumed to function correctly on the FHIR server being tested.
Property metadata As HS.FHIR.Storage.vR4.Model.Element.TestScript.metadata(XMLNAME = "metadata", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Fixture in the test script - by reference (uri)
Property fixture As array Of HS.FHIR.Storage.vR4.Model.Element.TestScript.fixture(XMLNAME = "fixture", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Reference of the validation profile.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property profile As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "profile", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Placeholder for evaluated elements.
Property variable As array Of HS.FHIR.Storage.vR4.Model.Element.TestScript.variable(XMLNAME = "variable", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A series of required setup operations before tests are executed.
Property setup As HS.FHIR.Storage.vR4.Model.Element.TestScript.setup(XMLNAME = "setup", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A test in this script.
Property test As array Of HS.FHIR.Storage.vR4.Model.Element.TestScript.test(XMLNAME = "test", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A series of required clean up steps.
Property teardown As HS.FHIR.Storage.vR4.Model.Element.TestScript.teardown(XMLNAME = "teardown", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript";

Storage Default
{
<Data name="TestScriptDefaultData">
<Subscript>"TestScript"</Subscript>
<Value name="1">
<Value>url</Value>
</Value>
<Value name="2">
<Value>identifier</Value>
</Value>
<Value name="3">
<Value>version</Value>
</Value>
<Value name="4">
<Value>name</Value>
</Value>
<Value name="5">
<Value>title</Value>
</Value>
<Value name="6">
<Value>status</Value>
</Value>
<Value name="7">
<Value>experimental</Value>
</Value>
<Value name="8">
<Value>date</Value>
</Value>
<Value name="9">
<Value>publisher</Value>
</Value>
<Value name="10">
<Value>description</Value>
</Value>
<Value name="11">
<Value>purpose</Value>
</Value>
<Value name="12">
<Value>copyright</Value>
</Value>
<Value name="13">
<Value>metadata</Value>
</Value>
<Value name="14">
<Value>setup</Value>
</Value>
<Value name="15">
<Value>teardown</Value>
</Value>
</Data>
<Data name="contact">
<Attribute>contact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.TestScript.contact"</Subscript>
</Data>
<Data name="destination">
<Attribute>destination</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.TestScript.destination"</Subscript>
</Data>
<Data name="fixture">
<Attribute>fixture</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.TestScript.fixture"</Subscript>
</Data>
<Data name="jurisdiction">
<Attribute>jurisdiction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.TestScript.jurisdiction"</Subscript>
</Data>
<Data name="origin">
<Attribute>origin</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.TestScript.origin"</Subscript>
</Data>
<Data name="profile">
<Attribute>profile</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.TestScript.profile"</Subscript>
</Data>
<Data name="test">
<Attribute>test</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.TestScript.test"</Subscript>
</Data>
<Data name="useContext">
<Attribute>useContext</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.TestScript.useContext"</Subscript>
</Data>
<Data name="variable">
<Attribute>variable</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.TestScript.variable"</Subscript>
</Data>
<DefaultData>TestScriptDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
