/// A population, 
/// intervention, 
/// or exposure definition.
Class HS.FHIR.Storage.vR4.Model.Resource.ResearchElementDefinition Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Canonical identifier for this research element definition, 
/// represented as a URI (globally unique)
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Additional identifier for the research element definition.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Business version of the research element definition.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this research element definition (computer friendly)
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this research element definition (human friendly)
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Title for use in informal contexts.
Property shortTitle As %String(MAXLEN = 1000000, XMLNAME = "shortTitle", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Subordinate title of the ResearchElementDefinition.
Property subtitle As %String(MAXLEN = 1000000, XMLNAME = "subtitle", XMLPROJECTION = "ATTRIBUTE");

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

/// CodeableConcept
/// <p>
/// E.g. 
/// Patient, 
/// Practitioner, 
/// RelatedPerson, 
/// Organization, 
/// Location, 
/// Device.
/// <p>
/// subject-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in subject-type, 
/// you may formally EXTEND subject-type to add codes to it.
Property subjectCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "subjectCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// E.g. 
/// Patient, 
/// Practitioner, 
/// RelatedPerson, 
/// Organization, 
/// Location, 
/// Device.
/// <p>
/// Group.
Property subjectReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subjectReference", XMLPROJECTION = "ELEMENT");

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
/// Natural language description of the research element definition.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Used for footnotes or explanatory notes.
Property comment As array Of %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ELEMENT");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As array Of HS.FHIR.Storage.vR4.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for research element definition (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Why this research element definition is defined.
Property purpose As %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Describes the clinical usage of the ResearchElementDefinition.
Property usage As %String(MAXLEN = 1000000, XMLNAME = "usage", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Use and/or publishing restrictions.
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// When the research element definition was approved by publisher.
Property approvalDate As %String(MAXLEN = 1000000, XMLNAME = "approvalDate", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// When the research element definition was last reviewed.
Property lastReviewDate As %String(MAXLEN = 1000000, XMLNAME = "lastReviewDate", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When the research element definition is expected to be used.
Property effectivePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The category of the ResearchElementDefinition, 
/// such as Education, 
/// Treatment, 
/// Assessment, 
/// etc.
/// <p>
/// any FHIR4 code may be used; 
/// definition-topic shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property topic As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "topic", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// Who authored the content.
Property author As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactDetail(XMLNAME = "author", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// Who edited the content.
Property editor As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactDetail(XMLNAME = "editor", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// Who reviewed the content.
Property reviewer As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactDetail(XMLNAME = "reviewer", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// Who endorsed the content.
Property endorser As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactDetail(XMLNAME = "endorser", XMLPROJECTION = "ELEMENT");

/// RelatedArtifact
/// <p>
/// Additional documentation, 
/// citations, 
/// etc.
Property relatedArtifact As array Of HS.FHIR.Storage.vR4.Model.Datatype.RelatedArtifact(XMLNAME = "relatedArtifact", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Logic used by the ResearchElementDefinition.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property library As array Of %String(MAXLEN = 1000000, XMLNAME = "library", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// population | exposure | outcome
/// <p>
/// research-element-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend research-element-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// dichotomous | continuous | descriptive
/// <p>
/// variable-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend variable-type|4.0.1 and you may NOT use codes from other ValueSets.
Property variableType As %String(MAXLEN = 1000000, XMLNAME = "variableType", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// What defines the members of the research element.
Property characteristic As array Of HS.FHIR.Storage.vR4.Model.Element.ResearchElementDefinition.characteristic(XMLNAME = "characteristic", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ResearchElementDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ResearchElementDefinition";

Storage Default
{
<Data name="ResearchElementDefinitionDefaultData">
<Subscript>"ResearchElementDefinition"</Subscript>
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
<Value>shortTitle</Value>
</Value>
<Value name="6">
<Value>subtitle</Value>
</Value>
<Value name="7">
<Value>status</Value>
</Value>
<Value name="8">
<Value>experimental</Value>
</Value>
<Value name="9">
<Value>subjectCodeableConcept</Value>
</Value>
<Value name="10">
<Value>subjectReference</Value>
</Value>
<Value name="11">
<Value>date</Value>
</Value>
<Value name="12">
<Value>publisher</Value>
</Value>
<Value name="13">
<Value>description</Value>
</Value>
<Value name="14">
<Value>purpose</Value>
</Value>
<Value name="15">
<Value>usage</Value>
</Value>
<Value name="16">
<Value>copyright</Value>
</Value>
<Value name="17">
<Value>approvalDate</Value>
</Value>
<Value name="18">
<Value>lastReviewDate</Value>
</Value>
<Value name="19">
<Value>effectivePeriod</Value>
</Value>
<Value name="20">
<Value>type</Value>
</Value>
<Value name="21">
<Value>variableType</Value>
</Value>
</Data>
<Data name="author">
<Attribute>author</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchElementDefinition.author"</Subscript>
</Data>
<Data name="characteristic">
<Attribute>characteristic</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchElementDefinition.characteristic"</Subscript>
</Data>
<Data name="comment">
<Attribute>comment</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchElementDefinition.comment"</Subscript>
</Data>
<Data name="contact">
<Attribute>contact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchElementDefinition.contact"</Subscript>
</Data>
<Data name="editor">
<Attribute>editor</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchElementDefinition.editor"</Subscript>
</Data>
<Data name="endorser">
<Attribute>endorser</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchElementDefinition.endorser"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchElementDefinition.identifier"</Subscript>
</Data>
<Data name="jurisdiction">
<Attribute>jurisdiction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchElementDefinition.jurisdiction"</Subscript>
</Data>
<Data name="library">
<Attribute>library</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchElementDefinition.library"</Subscript>
</Data>
<Data name="relatedArtifact">
<Attribute>relatedArtifact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchElementDefinition.relatedArtifact"</Subscript>
</Data>
<Data name="reviewer">
<Attribute>reviewer</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchElementDefinition.reviewer"</Subscript>
</Data>
<Data name="topic">
<Attribute>topic</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchElementDefinition.topic"</Subscript>
</Data>
<Data name="useContext">
<Attribute>useContext</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchElementDefinition.useContext"</Subscript>
</Data>
<DefaultData>ResearchElementDefinitionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
