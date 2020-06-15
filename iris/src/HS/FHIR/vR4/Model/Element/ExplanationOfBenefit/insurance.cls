/// Patient insurance information.
Class HS.FHIR.vR4.Model.Element.ExplanationOfBenefit.insurance Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

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
/// Prior authorization reference number.
Property preAuthRef As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "preAuthRef", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExplanationOfBenefit.insurance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExplanationOfBenefit.insurance";

}
