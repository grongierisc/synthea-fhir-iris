/// Plan details.
Class HS.FHIR.vR4.Model.Element.InsurancePlan.plan Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier for Product.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type of plan.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where product applies.
/// <p>
/// Location
Property coverageArea As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "coverageArea", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// What networks provide coverage.
/// <p>
/// Organization
Property network As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "network", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Overall costs.
Property generalCost As List Of HS.FHIR.vR4.Model.Element.InsurancePlan.plan.generalCost(XMLNAME = "generalCost", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Specific costs.
Property specificCost As List Of HS.FHIR.vR4.Model.Element.InsurancePlan.plan.specificCost(XMLNAME = "specificCost", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan.plan";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan.plan";

}
