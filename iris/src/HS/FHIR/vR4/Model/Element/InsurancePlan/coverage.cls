/// Coverage details.
Class HS.FHIR.vR4.Model.Element.InsurancePlan.coverage Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of coverage.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// What networks provide coverage.
/// <p>
/// Organization
Property network As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "network", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// List of benefits.
Property benefit As List Of HS.FHIR.vR4.Model.Element.InsurancePlan.coverage.benefit(XMLNAME = "benefit", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan.coverage";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan.coverage";

}
