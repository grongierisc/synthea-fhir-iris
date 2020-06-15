/// Adjudication for claim line items.
Class HS.FHIR.vR4.Model.Element.ClaimResponse.item Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Claim item instance identifier.
Property itemSequence As %Integer(XMLNAME = "itemSequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// positiveInt
/// <p>
/// Applicable note numbers.
Property noteNumber As List Of%Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "noteNumber", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Adjudication details.
Property adjudication As List Of HS.FHIR.vR4.Model.Element.ClaimResponse.item.adjudication(XMLNAME = "adjudication", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Adjudication for claim details.
Property detail As List Of HS.FHIR.vR4.Model.Element.ClaimResponse.item.detail(XMLNAME = "detail", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClaimResponse.item";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClaimResponse.item";

}
