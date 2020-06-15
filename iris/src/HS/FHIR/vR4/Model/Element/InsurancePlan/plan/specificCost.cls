/// Specific costs.
Class HS.FHIR.vR4.Model.Element.InsurancePlan.plan.specificCost Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// General category of benefit.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property category As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Benefits list.
Property benefit As List Of HS.FHIR.vR4.Model.Element.InsurancePlan.plan.specificCost.benefit(XMLNAME = "benefit", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan.plan.specificCost";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan.plan.specificCost";

}
