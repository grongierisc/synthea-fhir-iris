/// Benefits list.
Class HS.FHIR.vR4.Model.Element.InsurancePlan.plan.specificCost.benefit Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of specific benefit.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// List of the costs.
Property cost As List Of HS.FHIR.vR4.Model.Element.InsurancePlan.plan.specificCost.benefit.cost(XMLNAME = "cost", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan.plan.specificCost.benefit";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan.plan.specificCost.benefit";

}
