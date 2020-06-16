/// Potential outcomes for a subject with likelihood.
Class HS.FHIR.Storage.vR4.Model.Resource.RiskAssessment Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Unique identifier for the assessment.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Request fulfilled by this assessment.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property basedOn As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Part of this occurrence.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property parent As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "parent", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// registered | preliminary | final | amended +
/// <p>
/// observation-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend observation-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Evaluation mechanism.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property method As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "method", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type of assessment.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who/what does assessment apply to?
/// <p>
/// Patient | Group
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Where was assessment performed?
/// <p>
/// Encounter
Property encounter As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When was assessment made?
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When was assessment made?
Property occurrencePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "occurrencePeriod", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Condition assessed.
/// <p>
/// Condition
Property condition As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "condition", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who did assessment?
/// <p>
/// Practitioner | PractitionerRole | Device
Property performer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why the assessment was necessary?
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property reasonCode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why the assessment was necessary?
/// <p>
/// Condition | Observation | DiagnosticReport | DocumentReference
Property reasonReference As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Information used in assessment.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property basis As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "basis", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Outcome predicted.
Property prediction As array Of HS.FHIR.Storage.vR4.Model.Element.RiskAssessment.prediction(XMLNAME = "prediction", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// How to reduce risk.
Property mitigation As %String(MAXLEN = 1000000, XMLNAME = "mitigation", XMLPROJECTION = "ATTRIBUTE");

/// Annotation
/// <p>
/// Comments on the risk assessment.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "RiskAssessment";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "RiskAssessment";

Storage Default
{
<Data name="RiskAssessmentDefaultData">
<Subscript>"RiskAssessment"</Subscript>
<Value name="1">
<Value>basedOn</Value>
</Value>
<Value name="2">
<Value>parent</Value>
</Value>
<Value name="3">
<Value>status</Value>
</Value>
<Value name="4">
<Value>method</Value>
</Value>
<Value name="5">
<Value>code</Value>
</Value>
<Value name="6">
<Value>subject</Value>
</Value>
<Value name="7">
<Value>encounter</Value>
</Value>
<Value name="8">
<Value>occurrenceDateTime</Value>
</Value>
<Value name="9">
<Value>occurrencePeriod</Value>
</Value>
<Value name="10">
<Value>condition</Value>
</Value>
<Value name="11">
<Value>performer</Value>
</Value>
<Value name="12">
<Value>mitigation</Value>
</Value>
</Data>
<Data name="basis">
<Attribute>basis</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.RiskAssessment.basis"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.RiskAssessment.identifier"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.RiskAssessment.note"</Subscript>
</Data>
<Data name="prediction">
<Attribute>prediction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.RiskAssessment.prediction"</Subscript>
</Data>
<Data name="reasonCode">
<Attribute>reasonCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.RiskAssessment.reasonCode"</Subscript>
</Data>
<Data name="reasonReference">
<Attribute>reasonReference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.RiskAssessment.reasonReference"</Subscript>
</Data>
<DefaultData>RiskAssessmentDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
