/// Describes the intended objective(s) for a patient, 
/// group or organization.
Class HS.FHIR.vR4.Model.Resource.Goal Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External Ids for this goal.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

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
Property achievementStatus As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "achievementStatus", XMLPROJECTION = "ELEMENT");

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
Property category As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// high-priority | medium-priority | low-priority
/// <p>
/// goal-priority is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in goal-priority, 
/// you may use codes from any ValueSet.
Property priority As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "priority", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Code or text describing goal.
/// <p>
/// any FHIR4 code may be used; 
/// clinical-findings shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property description As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "description", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who this goal is intended for.
/// <p>
/// Patient | Group | Organization
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// When goal pursuit begins.
/// <p>
/// any FHIR4 code may be used; 
/// goal-start-event shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property startCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "startCodeableConcept", XMLPROJECTION = "ELEMENT");

/// date
/// <p>
/// When goal pursuit begins.
Property startDate As %String(MAXLEN = 1000000, XMLNAME = "startDate", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Target outcome for the goal.
Property target As List Of HS.FHIR.vR4.Model.Element.Goal.target(XMLNAME = "target", XMLPROJECTION = "ELEMENT");

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
Property expressedBy As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "expressedBy", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Issues addressed by this goal.
/// <p>
/// Condition | Observation | MedicationStatement | NutritionOrder | ServiceRequest | RiskAssessment
Property addresses As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "addresses", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments about the goal.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// What result was achieved regarding the goal?
/// <p>
/// any FHIR4 code may be used; 
/// clinical-findings shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property outcomeCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "outcomeCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Observation that resulted from goal.
/// <p>
/// Observation
Property outcomeReference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "outcomeReference", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Goal";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Goal";

}
