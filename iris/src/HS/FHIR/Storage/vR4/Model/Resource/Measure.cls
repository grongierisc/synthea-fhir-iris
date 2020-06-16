/// A quality measure definition.
Class HS.FHIR.Storage.vR4.Model.Resource.Measure Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Canonical identifier for this measure, 
/// represented as a URI (globally unique)
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Additional identifier for the measure.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Business version of the measure.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this measure (computer friendly)
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this measure (human friendly)
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Subordinate title of the measure.
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
/// Natural language description of the measure.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As array Of HS.FHIR.Storage.vR4.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for measure (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Why this measure is defined.
Property purpose As %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Describes the clinical usage of the measure.
Property usage As %String(MAXLEN = 1000000, XMLNAME = "usage", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Use and/or publishing restrictions.
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// When the measure was approved by publisher.
Property approvalDate As %String(MAXLEN = 1000000, XMLNAME = "approvalDate", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// When the measure was last reviewed.
Property lastReviewDate As %String(MAXLEN = 1000000, XMLNAME = "lastReviewDate", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When the measure is expected to be used.
Property effectivePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The category of the measure, 
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
/// Logic used by the measure.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property library As array Of %String(MAXLEN = 1000000, XMLNAME = "library", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Disclaimer for use of the measure or its referenced content.
Property disclaimer As %String(MAXLEN = 1000000, XMLNAME = "disclaimer", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// proportion | ratio | continuous-variable | cohort
/// <p>
/// measure-scoring is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in measure-scoring, 
/// you may formally EXTEND measure-scoring to add codes to it.
Property scoring As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "scoring", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// opportunity | all-or-nothing | linear | weighted
/// <p>
/// composite-measure-scoring is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in composite-measure-scoring, 
/// you may formally EXTEND composite-measure-scoring to add codes to it.
Property compositeScoring As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "compositeScoring", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// process | outcome | structure | patient-reported-outcome | composite
/// <p>
/// measure-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in measure-type, 
/// you may formally EXTEND measure-type to add codes to it.
Property type As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// How risk adjustment is applied for this measure.
Property riskAdjustment As %String(MAXLEN = 1000000, XMLNAME = "riskAdjustment", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// How is rate aggregation performed for this measure.
Property rateAggregation As %String(MAXLEN = 1000000, XMLNAME = "rateAggregation", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Detailed description of why the measure exists.
Property rationale As %String(MAXLEN = 1000000, XMLNAME = "rationale", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Summary of clinical guidelines.
Property clinicalRecommendationStatement As %String(MAXLEN = 1000000, XMLNAME = "clinicalRecommendationStatement", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// increase | decrease
/// <p>
/// measure-improvement-notation|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend measure-improvement-notation|4.0.1 and you may NOT use codes from other ValueSets.
Property improvementNotation As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "improvementNotation", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Defined terms used in the measure documentation.
Property definition As array Of %String(MAXLEN = 1000000, XMLNAME = "definition", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Additional guidance for implementers.
Property guidance As %String(MAXLEN = 1000000, XMLNAME = "guidance", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Population criteria group.
Property group As array Of HS.FHIR.Storage.vR4.Model.Element.Measure.group(XMLNAME = "group", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// What other data should be reported with the measure.
Property supplementalData As array Of HS.FHIR.Storage.vR4.Model.Element.Measure.supplementalData(XMLNAME = "supplementalData", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Measure";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Measure";

Storage Default
{
<Data name="MeasureDefaultData">
<Subscript>"Measure"</Subscript>
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
<Value>subtitle</Value>
</Value>
<Value name="6">
<Value>status</Value>
</Value>
<Value name="7">
<Value>experimental</Value>
</Value>
<Value name="8">
<Value>subjectCodeableConcept</Value>
</Value>
<Value name="9">
<Value>subjectReference</Value>
</Value>
<Value name="10">
<Value>date</Value>
</Value>
<Value name="11">
<Value>publisher</Value>
</Value>
<Value name="12">
<Value>description</Value>
</Value>
<Value name="13">
<Value>purpose</Value>
</Value>
<Value name="14">
<Value>usage</Value>
</Value>
<Value name="15">
<Value>copyright</Value>
</Value>
<Value name="16">
<Value>approvalDate</Value>
</Value>
<Value name="17">
<Value>lastReviewDate</Value>
</Value>
<Value name="18">
<Value>effectivePeriod</Value>
</Value>
<Value name="19">
<Value>disclaimer</Value>
</Value>
<Value name="20">
<Value>scoring</Value>
</Value>
<Value name="21">
<Value>compositeScoring</Value>
</Value>
<Value name="22">
<Value>riskAdjustment</Value>
</Value>
<Value name="23">
<Value>rateAggregation</Value>
</Value>
<Value name="24">
<Value>rationale</Value>
</Value>
<Value name="25">
<Value>clinicalRecommendationStatement</Value>
</Value>
<Value name="26">
<Value>improvementNotation</Value>
</Value>
<Value name="27">
<Value>guidance</Value>
</Value>
</Data>
<Data name="author">
<Attribute>author</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Measure.author"</Subscript>
</Data>
<Data name="contact">
<Attribute>contact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Measure.contact"</Subscript>
</Data>
<Data name="definition">
<Attribute>definition</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Measure.definition"</Subscript>
</Data>
<Data name="editor">
<Attribute>editor</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Measure.editor"</Subscript>
</Data>
<Data name="endorser">
<Attribute>endorser</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Measure.endorser"</Subscript>
</Data>
<Data name="group">
<Attribute>group</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Measure.group"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Measure.identifier"</Subscript>
</Data>
<Data name="jurisdiction">
<Attribute>jurisdiction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Measure.jurisdiction"</Subscript>
</Data>
<Data name="library">
<Attribute>library</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Measure.library"</Subscript>
</Data>
<Data name="relatedArtifact">
<Attribute>relatedArtifact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Measure.relatedArtifact"</Subscript>
</Data>
<Data name="reviewer">
<Attribute>reviewer</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Measure.reviewer"</Subscript>
</Data>
<Data name="supplementalData">
<Attribute>supplementalData</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Measure.supplementalData"</Subscript>
</Data>
<Data name="topic">
<Attribute>topic</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Measure.topic"</Subscript>
</Data>
<Data name="type">
<Attribute>type</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Measure.type"</Subscript>
</Data>
<Data name="useContext">
<Attribute>useContext</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Measure.useContext"</Subscript>
</Data>
<DefaultData>MeasureDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
