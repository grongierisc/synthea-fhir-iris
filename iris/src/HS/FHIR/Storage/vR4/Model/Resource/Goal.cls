/// Describes the intended objective(s) for a patient, 
/// group or organization.
Class HS.FHIR.Storage.vR4.Model.Resource.Goal Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External Ids for this goal.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// proposed | planned | accepted | active | on-hold | completed | cancelled | entered-in-error | rejected
/// <p>
/// goal-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend goal-status|4.0.1 and you may NOT use codes from other ValueSets.
Property lifecycleStatus As %String(MAXLEN = 1000000, XMLNAME = "lifecycleStatus", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// in-progress | improving | worsening | no-change | achieved | sustaining | not-achieved | no-progress | not-attainable
/// <p>
/// goal-achievement is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in goal-achievement, 
/// you may use codes from any ValueSet.
Property achievementStatus As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "achievementStatus", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// E.g. 
/// Treatment, 
/// dietary, 
/// behavioral, 
/// etc.
/// <p>
/// any FHIR4 code may be used; 
/// goal-category shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// high-priority | medium-priority | low-priority
/// <p>
/// goal-priority is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in goal-priority, 
/// you may use codes from any ValueSet.
Property priority As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "priority", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Code or text describing goal.
/// <p>
/// any FHIR4 code may be used; 
/// clinical-findings shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property description As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "description", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who this goal is intended for.
/// <p>
/// Patient | Group | Organization
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// When goal pursuit begins.
/// <p>
/// any FHIR4 code may be used; 
/// goal-start-event shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property startCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "startCodeableConcept", XMLPROJECTION = "ELEMENT");

/// date
/// <p>
/// When goal pursuit begins.
Property startDate As %String(MAXLEN = 1000000, XMLNAME = "startDate", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Target outcome for the goal.
Property target As array Of HS.FHIR.Storage.vR4.Model.Element.Goal.target(XMLNAME = "target", XMLPROJECTION = "ELEMENT");

/// date
/// <p>
/// When goal status took effect.
Property statusDate As %String(MAXLEN = 1000000, XMLNAME = "statusDate", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Reason for current status.
Property statusReason As %String(MAXLEN = 1000000, XMLNAME = "statusReason", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who's responsible for creating Goal?
/// <p>
/// Patient | Practitioner | PractitionerRole | RelatedPerson
Property expressedBy As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "expressedBy", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Issues addressed by this goal.
/// <p>
/// Condition | Observation | MedicationStatement | NutritionOrder | ServiceRequest | RiskAssessment
Property addresses As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "addresses", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments about the goal.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// What result was achieved regarding the goal?
/// <p>
/// any FHIR4 code may be used; 
/// clinical-findings shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property outcomeCode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "outcomeCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Observation that resulted from goal.
/// <p>
/// Observation
Property outcomeReference As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "outcomeReference", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Goal";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Goal";

Storage Default
{
<Data name="GoalDefaultData">
<Subscript>"Goal"</Subscript>
<Value name="1">
<Value>lifecycleStatus</Value>
</Value>
<Value name="2">
<Value>achievementStatus</Value>
</Value>
<Value name="3">
<Value>priority</Value>
</Value>
<Value name="4">
<Value>description</Value>
</Value>
<Value name="5">
<Value>subject</Value>
</Value>
<Value name="6">
<Value>startCodeableConcept</Value>
</Value>
<Value name="7">
<Value>startDate</Value>
</Value>
<Value name="8">
<Value>statusDate</Value>
</Value>
<Value name="9">
<Value>statusReason</Value>
</Value>
<Value name="10">
<Value>expressedBy</Value>
</Value>
</Data>
<Data name="addresses">
<Attribute>addresses</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Goal.addresses"</Subscript>
</Data>
<Data name="category">
<Attribute>category</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Goal.category"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Goal.identifier"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Goal.note"</Subscript>
</Data>
<Data name="outcomeCode">
<Attribute>outcomeCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Goal.outcomeCode"</Subscript>
</Data>
<Data name="outcomeReference">
<Attribute>outcomeReference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Goal.outcomeReference"</Subscript>
</Data>
<Data name="target">
<Attribute>target</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Goal.target"</Subscript>
</Data>
<DefaultData>GoalDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
