/// Adjudication for claim details.
Class HS.FHIR.vR4.Model.Element.ClaimResponse.item.detail Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Claim detail instance identifier.
Property detailSequence As %Integer(XMLNAME = "detailSequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// positiveInt
/// <p>
/// Applicable note numbers.
Property noteNumber As List Of%Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "noteNumber", XMLPROJECTION = "ELEMENT");

/// ClaimResponse:item[n].adjudication
/// <p>
/// Detail level adjudication details.
Property adjudication As List Of HS.FHIR.vR4.Model.Element.ClaimResponse.item.adjudication(XMLNAME = "adjudication", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Adjudication for claim sub-details.
Property subDetail As List Of HS.FHIR.vR4.Model.Element.ClaimResponse.item.detail.subDetail(XMLNAME = "subDetail", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClaimResponse.item.detail";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClaimResponse.item.detail";

}
