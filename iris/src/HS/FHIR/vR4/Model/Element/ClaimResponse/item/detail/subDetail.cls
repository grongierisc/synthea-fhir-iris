/// Adjudication for claim sub-details.
Class HS.FHIR.vR4.Model.Element.ClaimResponse.item.detail.subDetail Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Claim sub-detail instance identifier.
Property subDetailSequence As %Integer(XMLNAME = "subDetailSequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// positiveInt
/// <p>
/// Applicable note numbers.
Property noteNumber As List Of%Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "noteNumber", XMLPROJECTION = "ELEMENT");

/// ClaimResponse:item[n].adjudication
/// <p>
/// Subdetail level adjudication details.
Property adjudication As List Of HS.FHIR.vR4.Model.Element.ClaimResponse.item.adjudication(XMLNAME = "adjudication", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClaimResponse.item.detail.subDetail";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClaimResponse.item.detail.subDetail";

}
