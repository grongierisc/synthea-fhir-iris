/// Adjudication for claim sub-details.
Class HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.item.detail.subDetail Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Claim sub-detail instance identifier.
Property subDetailSequence As %Integer(XMLNAME = "subDetailSequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// positiveInt
/// <p>
/// Applicable note numbers.
Property noteNumber As array Of %Integer(XMLNAME = "noteNumber", XMLPROJECTION = "ELEMENT");

/// ClaimResponse:item[n].adjudication
/// <p>
/// Subdetail level adjudication details.
Property adjudication As array Of HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.item.adjudication(XMLNAME = "adjudication", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClaimResponse.item.detail.subDetail";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClaimResponse.item.detail.subDetail";

Storage Default
{
<Data name="adjudication">
<Attribute>adjudication</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.item.detail.subDetail.adjudication"</Subscript>
</Data>
<Data name="noteNumber">
<Attribute>noteNumber</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.item.detail.subDetail.noteNumber"</Subscript>
</Data>
<Data name="subDetailDefaultData">
<Subscript>"subDetail"</Subscript>
<Value name="1">
<Value>subDetailSequence</Value>
</Value>
</Data>
<DefaultData>subDetailDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
