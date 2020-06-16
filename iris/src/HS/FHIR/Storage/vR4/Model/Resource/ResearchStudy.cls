/// Investigation to increase healthcare-related patient-independent knowledge.
Class HS.FHIR.Storage.vR4.Model.Resource.ResearchStudy Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier for study.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Name for this study.
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Steps followed in executing study.
/// <p>
/// PlanDefinition
Property protocol As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "protocol", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Part of larger study.
/// <p>
/// ResearchStudy
Property partOf As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | administratively-completed | approved | closed-to-accrual | closed-to-accrual-and-intervention | completed | disapproved | in-review | temporarily-closed-to-accrual | temporarily-closed-to-accrual-and-intervention | withdrawn
/// <p>
/// research-study-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend research-study-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// treatment | prevention | diagnostic | supportive-care | screening | health-services-research | basic-science | device-feasibility
/// <p>
/// research-study-prim-purp-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in research-study-prim-purp-type, 
/// you may formally EXTEND research-study-prim-purp-type to add codes to it.
Property primaryPurposeType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "primaryPurposeType", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// n-a | early-phase-1 | phase-1 | phase-1-phase-2 | phase-2 | phase-2-phase-3 | phase-3 | phase-4
/// <p>
/// any FHIR4 code may be used; 
/// research-study-phase shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property phase As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "phase", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Classifications for the study.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property category As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Drugs, 
/// devices, 
/// etc. 
/// under study.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property focus As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "focus", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Condition being studied.
/// <p>
/// any FHIR4 code may be used; 
/// condition-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property condition As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "condition", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// Contact details for the study.
Property contact As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactDetail(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// RelatedArtifact
/// <p>
/// References and dependencies.
Property relatedArtifact As array Of HS.FHIR.Storage.vR4.Model.Datatype.RelatedArtifact(XMLNAME = "relatedArtifact", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Used to search for the study.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property keyword As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "keyword", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Geographic region(s) for study.
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property location As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// What this is study doing.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Inclusion & exclusion criteria.
/// <p>
/// Group
Property enrollment As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "enrollment", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// When the study began and ended.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization that initiates and is legally responsible for the study.
/// <p>
/// Organization
Property sponsor As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "sponsor", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Researcher who oversees multiple aspects of the study.
/// <p>
/// Practitioner | PractitionerRole
Property principalInvestigator As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "principalInvestigator", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Facility where study activities are conducted.
/// <p>
/// Location
Property site As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "site", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// accrual-goal-met | closed-due-to-toxicity | closed-due-to-lack-of-study-progress | temporarily-closed-per-study-design
/// <p>
/// any FHIR4 code may be used; 
/// research-study-reason-stopped shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonStopped As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reasonStopped", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments made about the study.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Defined path through the study for a subject.
Property arm As array Of HS.FHIR.Storage.vR4.Model.Element.ResearchStudy.arm(XMLNAME = "arm", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A goal for the study.
Property objective As array Of HS.FHIR.Storage.vR4.Model.Element.ResearchStudy.objective(XMLNAME = "objective", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ResearchStudy";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ResearchStudy";

Storage Default
{
<Data name="ResearchStudyDefaultData">
<Subscript>"ResearchStudy"</Subscript>
<Value name="1">
<Value>title</Value>
</Value>
<Value name="2">
<Value>status</Value>
</Value>
<Value name="3">
<Value>primaryPurposeType</Value>
</Value>
<Value name="4">
<Value>phase</Value>
</Value>
<Value name="5">
<Value>description</Value>
</Value>
<Value name="6">
<Value>period</Value>
</Value>
<Value name="7">
<Value>sponsor</Value>
</Value>
<Value name="8">
<Value>principalInvestigator</Value>
</Value>
<Value name="9">
<Value>reasonStopped</Value>
</Value>
</Data>
<Data name="arm">
<Attribute>arm</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchStudy.arm"</Subscript>
</Data>
<Data name="category">
<Attribute>category</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchStudy.category"</Subscript>
</Data>
<Data name="condition">
<Attribute>condition</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchStudy.condition"</Subscript>
</Data>
<Data name="contact">
<Attribute>contact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchStudy.contact"</Subscript>
</Data>
<Data name="enrollment">
<Attribute>enrollment</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchStudy.enrollment"</Subscript>
</Data>
<Data name="focus">
<Attribute>focus</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchStudy.focus"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchStudy.identifier"</Subscript>
</Data>
<Data name="keyword">
<Attribute>keyword</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchStudy.keyword"</Subscript>
</Data>
<Data name="location">
<Attribute>location</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchStudy.location"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchStudy.note"</Subscript>
</Data>
<Data name="objective">
<Attribute>objective</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchStudy.objective"</Subscript>
</Data>
<Data name="partOf">
<Attribute>partOf</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchStudy.partOf"</Subscript>
</Data>
<Data name="protocol">
<Attribute>protocol</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchStudy.protocol"</Subscript>
</Data>
<Data name="relatedArtifact">
<Attribute>relatedArtifact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchStudy.relatedArtifact"</Subscript>
</Data>
<Data name="site">
<Attribute>site</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchStudy.site"</Subscript>
</Data>
<DefaultData>ResearchStudyDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
