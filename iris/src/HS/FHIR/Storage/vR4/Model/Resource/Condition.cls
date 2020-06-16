/// Detailed information about conditions, 
/// problems or diagnoses.
Class HS.FHIR.Storage.vR4.Model.Resource.Condition Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External Ids for this condition.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// active | recurrence | relapse | inactive | remission | resolved
/// <p>
/// condition-clinical|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend condition-clinical|4.0.1 and you may NOT use codes from other ValueSets.
Property clinicalStatus As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "clinicalStatus", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// unconfirmed | provisional | differential | confirmed | refuted | entered-in-error
/// <p>
/// condition-ver-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend condition-ver-status|4.0.1 and you may NOT use codes from other ValueSets.
Property verificationStatus As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "verificationStatus", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// problem-list-item | encounter-diagnosis
/// <p>
/// condition-category is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in condition-category, 
/// you may formally EXTEND condition-category to add codes to it.
Property category As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Subjective severity of condition.
/// <p>
/// condition-severity is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in condition-severity, 
/// you may use codes from any ValueSet.
Property severity As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "severity", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Identification of the condition, 
/// problem or diagnosis.
/// <p>
/// any FHIR4 code may be used; 
/// condition-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Anatomical location, 
/// if relevant.
/// <p>
/// any FHIR4 code may be used; 
/// body-site shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property bodySite As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who has the condition?
/// <p>
/// Patient | Group
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Encounter created as part of.
/// <p>
/// Encounter
Property encounter As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// Age
/// <p>
/// Estimated or actual date, 
///  date-time, 
/// or age.
Property onsetAge As HS.FHIR.Storage.vR4.Model.Datatype.Age(XMLNAME = "onsetAge", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Estimated or actual date, 
///  date-time, 
/// or age.
Property onsetDateTime As %String(MAXLEN = 1000000, XMLNAME = "onsetDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Estimated or actual date, 
///  date-time, 
/// or age.
Property onsetPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "onsetPeriod", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Estimated or actual date, 
///  date-time, 
/// or age.
Property onsetRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "onsetRange", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Estimated or actual date, 
///  date-time, 
/// or age.
Property onsetString As %String(MAXLEN = 1000000, XMLNAME = "onsetString", XMLPROJECTION = "ATTRIBUTE");

/// Age
/// <p>
/// When in resolution/remission.
Property abatementAge As HS.FHIR.Storage.vR4.Model.Datatype.Age(XMLNAME = "abatementAge", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When in resolution/remission.
Property abatementDateTime As %String(MAXLEN = 1000000, XMLNAME = "abatementDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When in resolution/remission.
Property abatementPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "abatementPeriod", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// When in resolution/remission.
Property abatementRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "abatementRange", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// When in resolution/remission.
Property abatementString As %String(MAXLEN = 1000000, XMLNAME = "abatementString", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Date record was first recorded.
Property recordedDate As %String(MAXLEN = 1000000, XMLNAME = "recordedDate", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who recorded the condition.
/// <p>
/// Practitioner | PractitionerRole | Patient | RelatedPerson
Property recorder As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "recorder", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Person who asserts this condition.
/// <p>
/// Practitioner | PractitionerRole | Patient | RelatedPerson
Property asserter As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "asserter", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Stage/grade, 
/// usually assessed formally.
Property stage As array Of HS.FHIR.Storage.vR4.Model.Element.Condition.stage(XMLNAME = "stage", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Supporting evidence.
Property evidence As array Of HS.FHIR.Storage.vR4.Model.Element.Condition.evidence(XMLNAME = "evidence", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Additional information about the Condition.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Condition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Condition";

Storage Default
{
<Data name="ConditionDefaultData">
<Subscript>"Condition"</Subscript>
<Value name="1">
<Value>clinicalStatus</Value>
</Value>
<Value name="2">
<Value>verificationStatus</Value>
</Value>
<Value name="3">
<Value>severity</Value>
</Value>
<Value name="4">
<Value>code</Value>
</Value>
<Value name="5">
<Value>subject</Value>
</Value>
<Value name="6">
<Value>encounter</Value>
</Value>
<Value name="7">
<Value>onsetAge</Value>
</Value>
<Value name="8">
<Value>onsetDateTime</Value>
</Value>
<Value name="9">
<Value>onsetPeriod</Value>
</Value>
<Value name="10">
<Value>onsetRange</Value>
</Value>
<Value name="11">
<Value>onsetString</Value>
</Value>
<Value name="12">
<Value>abatementAge</Value>
</Value>
<Value name="13">
<Value>abatementDateTime</Value>
</Value>
<Value name="14">
<Value>abatementPeriod</Value>
</Value>
<Value name="15">
<Value>abatementRange</Value>
</Value>
<Value name="16">
<Value>abatementString</Value>
</Value>
<Value name="17">
<Value>recordedDate</Value>
</Value>
<Value name="18">
<Value>recorder</Value>
</Value>
<Value name="19">
<Value>asserter</Value>
</Value>
</Data>
<Data name="bodySite">
<Attribute>bodySite</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Condition.bodySite"</Subscript>
</Data>
<Data name="category">
<Attribute>category</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Condition.category"</Subscript>
</Data>
<Data name="evidence">
<Attribute>evidence</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Condition.evidence"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Condition.identifier"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Condition.note"</Subscript>
</Data>
<Data name="stage">
<Attribute>stage</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Condition.stage"</Subscript>
</Data>
<DefaultData>ConditionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
