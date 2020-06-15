/// Patient insurance information.
Class HS.FHIR.vR4.Model.Element.CoverageEligibilityRequest.insurance Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// Applicable coverage.
Property focal As %Boolean(XMLNAME = "focal", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Insurance information.
/// <p>
/// Coverage
Property coverage As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "coverage", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Additional provider contract number.
Property businessArrangement As %String(MAXLEN = 1000000, XMLNAME = "businessArrangement", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CoverageEligibilityRequest.insurance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CoverageEligibilityRequest.insurance";

}
