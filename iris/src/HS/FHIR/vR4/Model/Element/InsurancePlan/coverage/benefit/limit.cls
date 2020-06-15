/// Benefit limits.
Class HS.FHIR.vR4.Model.Element.InsurancePlan.coverage.benefit.limit Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Quantity
/// <p>
/// Maximum value allowed.
Property value As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "value", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Benefit limit details.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan.coverage.benefit.limit";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan.coverage.benefit.limit";

}
