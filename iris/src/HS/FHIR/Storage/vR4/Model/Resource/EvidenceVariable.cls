/// A population, 
/// intervention, 
/// or exposure definition.
Class HS.FHIR.Storage.vR4.Model.Resource.EvidenceVariable Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Canonical identifier for this evidence variable, 
/// represented as a URI (globally unique)
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Additional identifier for the evidence variable.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Business version of the evidence variable.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this evidence variable (computer friendly)
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this evidence variable (human friendly)
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Title for use in informal contexts.
Property shortTitle As %String(MAXLEN = 1000000, XMLNAME = "shortTitle", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Subordinate title of the EvidenceVariable.
Property subtitle As %String(MAXLEN = 1000000, XMLNAME = "subtitle", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// draft | active | retired | unknown
/// <p>
/// publication-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend publication-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

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
/// Natural language description of the evidence variable.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Annotation
/// <p>
/// Used for footnotes or explanatory notes.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As array Of HS.FHIR.Storage.vR4.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for evidence variable (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Use and/or publishing restrictions.
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// When the evidence variable was approved by publisher.
Property approvalDate As %String(MAXLEN = 1000000, XMLNAME = "approvalDate", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// When the evidence variable was last reviewed.
Property lastReviewDate As %String(MAXLEN = 1000000, XMLNAME = "lastReviewDate", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When the evidence variable is expected to be used.
Property effectivePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The category of the EvidenceVariable, 
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

/// code
/// <p>
/// dichotomous | continuous | descriptive
/// <p>
/// variable-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend variable-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// What defines the members of the evidence element.
Property characteristic As array Of HS.FHIR.Storage.vR4.Model.Element.EvidenceVariable.characteristic(XMLNAME = "characteristic", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EvidenceVariable";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EvidenceVariable";

Storage Default
{
<Data name="EvidenceVariableDefaultData">
<Subscript>"EvidenceVariable"</Subscript>
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
<Value>date</Value>
</Value>
<Value name="9">
<Value>publisher</Value>
</Value>
<Value name="10">
<Value>description</Value>
</Value>
<Value name="11">
<Value>copyright</Value>
</Value>
<Value name="12">
<Value>approvalDate</Value>
</Value>
<Value name="13">
<Value>lastReviewDate</Value>
</Value>
<Value name="14">
<Value>effectivePeriod</Value>
</Value>
<Value name="15">
<Value>type</Value>
</Value>
</Data>
<Data name="author">
<Attribute>author</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EvidenceVariable.author"</Subscript>
</Data>
<Data name="characteristic">
<Attribute>characteristic</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EvidenceVariable.characteristic"</Subscript>
</Data>
<Data name="contact">
<Attribute>contact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EvidenceVariable.contact"</Subscript>
</Data>
<Data name="editor">
<Attribute>editor</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EvidenceVariable.editor"</Subscript>
</Data>
<Data name="endorser">
<Attribute>endorser</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EvidenceVariable.endorser"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EvidenceVariable.identifier"</Subscript>
</Data>
<Data name="jurisdiction">
<Attribute>jurisdiction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EvidenceVariable.jurisdiction"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EvidenceVariable.note"</Subscript>
</Data>
<Data name="relatedArtifact">
<Attribute>relatedArtifact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EvidenceVariable.relatedArtifact"</Subscript>
</Data>
<Data name="reviewer">
<Attribute>reviewer</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EvidenceVariable.reviewer"</Subscript>
</Data>
<Data name="topic">
<Attribute>topic</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EvidenceVariable.topic"</Subscript>
</Data>
<Data name="useContext">
<Attribute>useContext</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EvidenceVariable.useContext"</Subscript>
</Data>
<DefaultData>EvidenceVariableDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
