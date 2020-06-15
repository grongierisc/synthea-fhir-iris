/// List of the costs.
Class HS.FHIR.vR4.Model.Element.InsurancePlan.plan.specificCost.benefit.cost Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of cost.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// in-network | out-of-network | other
/// <p>
/// insuranceplan-applicability|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend insuranceplan-applicability|4.0.1 and you may NOT use codes from other ValueSets.
Property applicability As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "applicability", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Additional information about the cost.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property qualifiers As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "qualifiers", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// The actual cost value.
Property value As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "value", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan.plan.specificCost.benefit.cost";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan.plan.specificCost.benefit.cost";

}
