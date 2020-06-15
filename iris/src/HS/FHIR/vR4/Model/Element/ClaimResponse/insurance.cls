/// Patient insurance information.
Class HS.FHIR.vR4.Model.Element.ClaimResponse.insurance Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Insurance instance identifier.
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// Coverage to be used for adjudication.
Property focal As %Boolean(XMLNAME = "focal", XMLPROJECTION = "ATTRIBUTE") [ Required ];

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

/// Reference
/// <p>
/// Adjudication results.
/// <p>
/// ClaimResponse
Property claimResponse As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "claimResponse", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClaimResponse.insurance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClaimResponse.insurance";

}
