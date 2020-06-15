/// What the plan is trying to accomplish.
Class HS.FHIR.vR4.Model.Element.PlanDefinition.goal Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// E.g. 
/// Treatment, 
/// dietary, 
/// behavioral.
/// <p>
/// any FHIR4 code may be used; 
/// goal-category shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Code or text describing the goal.
/// <p>
/// any FHIR4 code may be used; 
/// clinical-findings shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property description As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "description", XMLPROJECTION = "ELEMENT") [ Required ];

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
/// When goal pursuit begins.
/// <p>
/// any FHIR4 code may be used; 
/// goal-start-event shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property start As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "start", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// What does the goal address.
/// <p>
/// any FHIR4 code may be used; 
/// condition-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property addresses As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "addresses", XMLPROJECTION = "ELEMENT");

/// RelatedArtifact
/// <p>
/// Supporting documentation for the goal.
Property documentation As List Of HS.FHIR.vR4.Model.Datatype.RelatedArtifact(XMLNAME = "documentation", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Target outcome for the goal.
Property target As List Of HS.FHIR.vR4.Model.Element.PlanDefinition.goal.target(XMLNAME = "target", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "PlanDefinition.goal";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "PlanDefinition.goal";

}
