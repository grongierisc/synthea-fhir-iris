/// Patient insurance information.
Class HS.FHIR.vR4.Model.Element.CoverageEligibilityResponse.insurance Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Insurance information.
/// <p>
/// Coverage
Property coverage As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "coverage", XMLPROJECTION = "ELEMENT") [ Required ];

/// boolean
/// <p>
/// Coverage inforce indicator.
Property inforce As %Boolean(XMLNAME = "inforce", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When the benefits are applicable.
Property benefitPeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "benefitPeriod", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Benefits and authorization details.
Property item As List Of HS.FHIR.vR4.Model.Element.CoverageEligibilityResponse.insurance.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CoverageEligibilityResponse.insurance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CoverageEligibilityResponse.insurance";

}
