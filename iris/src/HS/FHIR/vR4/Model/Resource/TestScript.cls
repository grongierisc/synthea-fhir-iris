/// Describes a set of tests.
Class HS.FHIR.vR4.Model.Resource.TestScript Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Canonical identifier for this test script, 
/// represented as a URI (globally unique)
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Identifier
/// <p>
/// Additional identifier for the test script.
Property identifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

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
Property contact As List Of HS.FHIR.vR4.Model.Datatype.ContactDetail(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Natural language description of the test script.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As List Of HS.FHIR.vR4.Model.Datatype.UsageContext(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for test script (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

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
Property origin As List Of HS.FHIR.vR4.Model.Element.TestScript.origin(XMLNAME = "origin", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// An abstract server representing a destination or receiver in a message exchange.
Property destination As List Of HS.FHIR.vR4.Model.Element.TestScript.destination(XMLNAME = "destination", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Required capability that is assumed to function correctly on the FHIR server being tested.
Property metadata As HS.FHIR.vR4.Model.Element.TestScript.metadata(XMLNAME = "metadata", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Fixture in the test script - by reference (uri)
Property fixture As List Of HS.FHIR.vR4.Model.Element.TestScript.fixture(XMLNAME = "fixture", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Reference of the validation profile.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property profile As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "profile", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Placeholder for evaluated elements.
Property variable As List Of HS.FHIR.vR4.Model.Element.TestScript.variable(XMLNAME = "variable", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A series of required setup operations before tests are executed.
Property setup As HS.FHIR.vR4.Model.Element.TestScript.setup(XMLNAME = "setup", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A test in this script.
Property test As List Of HS.FHIR.vR4.Model.Element.TestScript.test(XMLNAME = "test", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A series of required clean up steps.
Property teardown As HS.FHIR.vR4.Model.Element.TestScript.teardown(XMLNAME = "teardown", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript";

}
