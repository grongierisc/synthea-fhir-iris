/// List of benefits.
Class HS.FHIR.vR4.Model.Element.InsurancePlan.coverage.benefit Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of benefit.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Referral requirements.
Property requirement As %String(MAXLEN = 1000000, XMLNAME = "requirement", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Benefit limits.
Property limit As List Of HS.FHIR.vR4.Model.Element.InsurancePlan.coverage.benefit.limit(XMLNAME = "limit", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan.coverage.benefit";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan.coverage.benefit";

}
