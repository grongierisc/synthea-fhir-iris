/// Target outcome for the goal.
Class HS.FHIR.vR4.Model.Element.PlanDefinition.goal.target Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The parameter whose value is to be tracked.
/// <p>
/// any FHIR4 code may be used; 
/// observation-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property measure As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "measure", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The target value to be achieved.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property detailCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "detailCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// The target value to be achieved.
Property detailQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "detailQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// The target value to be achieved.
Property detailRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "detailRange", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// Reach goal within.
Property due As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "due", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "PlanDefinition.goal.target";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "PlanDefinition.goal.target";

}
