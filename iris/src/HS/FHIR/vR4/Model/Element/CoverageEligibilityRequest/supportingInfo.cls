/// Supporting information.
Class HS.FHIR.vR4.Model.Element.CoverageEligibilityRequest.supportingInfo Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Information instance identifier.
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Data to be provided.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property information As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "information", XMLPROJECTION = "ELEMENT") [ Required ];

/// boolean
/// <p>
/// Applies to all items.
Property appliesToAll As %Boolean(XMLNAME = "appliesToAll", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CoverageEligibilityRequest.supportingInfo";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CoverageEligibilityRequest.supportingInfo";

}
