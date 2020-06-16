/// A clinical assessment performed when planning treatments and management strategies for a patient.
Class HS.FHIR.Storage.vR4.Model.Resource.ClinicalImpression Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifier.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// in-progress | completed | entered-in-error
/// <p>
/// clinicalimpression-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend clinicalimpression-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Reason for current status.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property statusReason As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "statusReason", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Kind of assessment performed.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Why/how the assessment was performed.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Patient or group assessed.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Encounter created as part of.
/// <p>
/// Encounter
Property encounter As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Time of assessment.
Property effectiveDateTime As %String(MAXLEN = 1000000, XMLNAME = "effectiveDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Time of assessment.
Property effectivePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the assessment was documented.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// The clinician performing the assessment.
/// <p>
/// Practitioner | PractitionerRole
Property assessor As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "assessor", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Reference to last assessment.
/// <p>
/// ClinicalImpression
Property previous As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "previous", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Relevant impressions of patient state.
/// <p>
/// Condition | AllergyIntolerance
Property problem As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "problem", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// One or more sets of investigations (signs, 
/// symptoms, 
/// etc.)
Property investigation As array Of HS.FHIR.Storage.vR4.Model.Element.ClinicalImpression.investigation(XMLNAME = "investigation", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Clinical Protocol followed.
Property protocol As array Of %String(MAXLEN = 1000000, XMLNAME = "protocol", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Summary of the assessment.
Property summary As %String(MAXLEN = 1000000, XMLNAME = "summary", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Possible or likely findings and diagnoses.
Property finding As array Of HS.FHIR.Storage.vR4.Model.Element.ClinicalImpression.finding(XMLNAME = "finding", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Estimate of likely outcome.
/// <p>
/// any FHIR4 code may be used; 
/// clinicalimpression-prognosis shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property prognosisCodeableConcept As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "prognosisCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// RiskAssessment expressing likely outcome.
/// <p>
/// RiskAssessment
Property prognosisReference As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "prognosisReference", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Information supporting the clinical impression.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property supportingInfo As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "supportingInfo", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments made about the ClinicalImpression.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClinicalImpression";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClinicalImpression";

Storage Default
{
<Data name="ClinicalImpressionDefaultData">
<Subscript>"ClinicalImpression"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>statusReason</Value>
</Value>
<Value name="3">
<Value>code</Value>
</Value>
<Value name="4">
<Value>description</Value>
</Value>
<Value name="5">
<Value>subject</Value>
</Value>
<Value name="6">
<Value>encounter</Value>
</Value>
<Value name="7">
<Value>effectiveDateTime</Value>
</Value>
<Value name="8">
<Value>effectivePeriod</Value>
</Value>
<Value name="9">
<Value>date</Value>
</Value>
<Value name="10">
<Value>assessor</Value>
</Value>
<Value name="11">
<Value>previous</Value>
</Value>
<Value name="12">
<Value>summary</Value>
</Value>
</Data>
<Data name="finding">
<Attribute>finding</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ClinicalImpression.finding"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ClinicalImpression.identifier"</Subscript>
</Data>
<Data name="investigation">
<Attribute>investigation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ClinicalImpression.investigation"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ClinicalImpression.note"</Subscript>
</Data>
<Data name="problem">
<Attribute>problem</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ClinicalImpression.problem"</Subscript>
</Data>
<Data name="prognosisCodeableConcept">
<Attribute>prognosisCodeableConcept</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ClinicalImpression.prognosisCodeableConcept"</Subscript>
</Data>
<Data name="prognosisReference">
<Attribute>prognosisReference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ClinicalImpression.prognosisReference"</Subscript>
</Data>
<Data name="protocol">
<Attribute>protocol</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ClinicalImpression.protocol"</Subscript>
</Data>
<Data name="supportingInfo">
<Attribute>supportingInfo</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ClinicalImpression.supportingInfo"</Subscript>
</Data>
<DefaultData>ClinicalImpressionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
