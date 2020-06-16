/// Declares the existence of and describes a code system or code system supplement.
Class HS.FHIR.Storage.vR4.Model.Resource.CodeSystem Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Canonical identifier for this code system, 
/// represented as a URI (globally unique) (Coding.system)
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Additional identifier for the code system (business identifier)
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Business version of the code system (Coding.version)
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this code system (computer friendly)
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this code system (human friendly)
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
/// Natural language description of the code system.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As array Of HS.FHIR.Storage.vR4.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for code system (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Why this code system is defined.
Property purpose As %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Use and/or publishing restrictions.
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// If code comparison is case sensitive.
Property caseSensitive As %Boolean(XMLNAME = "caseSensitive", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Canonical reference to the value set with entire code system.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueSet As %String(MAXLEN = 1000000, XMLNAME = "valueSet", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// grouped-by | is-a | part-of | classified-with
/// <p>
/// codesystem-hierarchy-meaning|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend codesystem-hierarchy-meaning|4.0.1 and you may NOT use codes from other ValueSets.
Property hierarchyMeaning As %String(MAXLEN = 1000000, XMLNAME = "hierarchyMeaning", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// If code system defines a compositional grammar.
Property compositional As %Boolean(XMLNAME = "compositional", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// If definitions are not stable.
Property versionNeeded As %Boolean(XMLNAME = "versionNeeded", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// not-present | example | fragment | complete | supplement
/// <p>
/// codesystem-content-mode|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend codesystem-content-mode|4.0.1 and you may NOT use codes from other ValueSets.
Property content As %String(MAXLEN = 1000000, XMLNAME = "content", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// canonical
/// <p>
/// Canonical URL of Code System this adds designations and properties to.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property supplements As %String(MAXLEN = 1000000, XMLNAME = "supplements", XMLPROJECTION = "ATTRIBUTE");

/// unsignedInt
/// <p>
/// Total concepts in the code system.
Property count As %Integer(XMLNAME = "count", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Filter that can be used in a value set.
Property filter As array Of HS.FHIR.Storage.vR4.Model.Element.CodeSystem.filter(XMLNAME = "filter", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Additional information supplied about each concept.
Property property As array Of HS.FHIR.Storage.vR4.Model.Element.CodeSystem.property(XMLNAME = "property", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Concepts in the code system.
Property concept As array Of HS.FHIR.Storage.vR4.Model.Element.CodeSystem.concept(XMLNAME = "concept", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CodeSystem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CodeSystem";

Storage Default
{
<Data name="CodeSystemDefaultData">
<Subscript>"CodeSystem"</Subscript>
<Value name="1">
<Value>url</Value>
</Value>
<Value name="2">
<Value>version</Value>
</Value>
<Value name="3">
<Value>name</Value>
</Value>
<Value name="4">
<Value>title</Value>
</Value>
<Value name="5">
<Value>status</Value>
</Value>
<Value name="6">
<Value>experimental</Value>
</Value>
<Value name="7">
<Value>date</Value>
</Value>
<Value name="8">
<Value>publisher</Value>
</Value>
<Value name="9">
<Value>description</Value>
</Value>
<Value name="10">
<Value>purpose</Value>
</Value>
<Value name="11">
<Value>copyright</Value>
</Value>
<Value name="12">
<Value>caseSensitive</Value>
</Value>
<Value name="13">
<Value>valueSet</Value>
</Value>
<Value name="14">
<Value>hierarchyMeaning</Value>
</Value>
<Value name="15">
<Value>compositional</Value>
</Value>
<Value name="16">
<Value>versionNeeded</Value>
</Value>
<Value name="17">
<Value>content</Value>
</Value>
<Value name="18">
<Value>supplements</Value>
</Value>
<Value name="19">
<Value>count</Value>
</Value>
</Data>
<Data name="concept">
<Attribute>concept</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CodeSystem.concept"</Subscript>
</Data>
<Data name="contact">
<Attribute>contact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CodeSystem.contact"</Subscript>
</Data>
<Data name="filter">
<Attribute>filter</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CodeSystem.filter"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CodeSystem.identifier"</Subscript>
</Data>
<Data name="jurisdiction">
<Attribute>jurisdiction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CodeSystem.jurisdiction"</Subscript>
</Data>
<Data name="property">
<Attribute>property</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CodeSystem.property"</Subscript>
</Data>
<Data name="useContext">
<Attribute>useContext</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CodeSystem.useContext"</Subscript>
</Data>
<DefaultData>CodeSystemDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
