/// A quantified estimate of effect based on a body of evidence.
Class HS.FHIR.vR4.Model.Resource.EffectEvidenceSynthesis Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Canonical identifier for this effect evidence synthesis, 
/// represented as a URI (globally unique)
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Additional identifier for the effect evidence synthesis.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Business version of the effect evidence synthesis.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this effect evidence synthesis (computer friendly)
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this effect evidence synthesis (human friendly)
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

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
Property contact As List Of HS.FHIR.vR4.Model.Datatype.ContactDetail(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Natural language description of the effect evidence synthesis.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Annotation
/// <p>
/// Used for footnotes or explanatory notes.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As List Of HS.FHIR.vR4.Model.Datatype.UsageContext(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for effect evidence synthesis (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Use and/or publishing restrictions.
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// When the effect evidence synthesis was approved by publisher.
Property approvalDate As %String(MAXLEN = 1000000, XMLNAME = "approvalDate", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// When the effect evidence synthesis was last reviewed.
Property lastReviewDate As %String(MAXLEN = 1000000, XMLNAME = "lastReviewDate", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When the effect evidence synthesis is expected to be used.
Property effectivePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The category of the EffectEvidenceSynthesis, 
/// such as Education, 
/// Treatment, 
/// Assessment, 
/// etc.
/// <p>
/// any FHIR4 code may be used; 
/// definition-topic shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property topic As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "topic", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// Who authored the content.
Property author As List Of HS.FHIR.vR4.Model.Datatype.ContactDetail(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "author", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// Who edited the content.
Property editor As List Of HS.FHIR.vR4.Model.Datatype.ContactDetail(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "editor", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// Who reviewed the content.
Property reviewer As List Of HS.FHIR.vR4.Model.Datatype.ContactDetail(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "reviewer", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// Who endorsed the content.
Property endorser As List Of HS.FHIR.vR4.Model.Datatype.ContactDetail(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "endorser", XMLPROJECTION = "ELEMENT");

/// RelatedArtifact
/// <p>
/// Additional documentation, 
/// citations, 
/// etc.
Property relatedArtifact As List Of HS.FHIR.vR4.Model.Datatype.RelatedArtifact(XMLNAME = "relatedArtifact", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type of synthesis.
/// <p>
/// synthesis-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in synthesis-type, 
/// you may formally EXTEND synthesis-type to add codes to it.
Property synthesisType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "synthesisType", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type of study.
/// <p>
/// study-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in study-type, 
/// you may formally EXTEND study-type to add codes to it.
Property studyType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "studyType", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// What population?
/// <p>
/// EvidenceVariable
Property population As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "population", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// What exposure?
/// <p>
/// EvidenceVariable
Property exposure As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "exposure", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// What comparison exposure?
/// <p>
/// EvidenceVariable
Property exposureAlternative As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "exposureAlternative", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// What outcome?
/// <p>
/// EvidenceVariable
Property outcome As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "outcome", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// What sample size was involved?
Property sampleSize As HS.FHIR.vR4.Model.Element.EffectEvidenceSynthesis.sampleSize(XMLNAME = "sampleSize", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// What was the result per exposure?
Property resultsByExposure As List Of HS.FHIR.vR4.Model.Element.EffectEvidenceSynthesis.resultsByExposure(XMLNAME = "resultsByExposure", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// What was the estimated effect.
Property effectEstimate As List Of HS.FHIR.vR4.Model.Element.EffectEvidenceSynthesis.effectEstimate(XMLNAME = "effectEstimate", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// How certain is the effect.
Property certainty As List Of HS.FHIR.vR4.Model.Element.EffectEvidenceSynthesis.certainty(XMLNAME = "certainty", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EffectEvidenceSynthesis";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EffectEvidenceSynthesis";

}
