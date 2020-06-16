/// Adjudication for claim details.
Class HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.item.detail Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Claim detail instance identifier.
Property detailSequence As %Integer(XMLNAME = "detailSequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// positiveInt
/// <p>
/// Applicable note numbers.
Property noteNumber As array Of %Integer(XMLNAME = "noteNumber", XMLPROJECTION = "ELEMENT");

/// ClaimResponse:item[n].adjudication
/// <p>
/// Detail level adjudication details.
Property adjudication As array Of HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.item.adjudication(XMLNAME = "adjudication", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Adjudication for claim sub-details.
Property subDetail As array Of HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.item.detail.subDetail(XMLNAME = "subDetail", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClaimResponse.item.detail";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClaimResponse.item.detail";

Storage Default
{
<Data name="adjudication">
<Attribute>adjudication</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.item.detail.adjudication"</Subscript>
</Data>
<Data name="detailDefaultData">
<Subscript>"detail"</Subscript>
<Value name="1">
<Value>detailSequence</Value>
</Value>
</Data>
<Data name="noteNumber">
<Attribute>noteNumber</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.item.detail.noteNumber"</Subscript>
</Data>
<Data name="subDetail">
<Attribute>subDetail</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.item.detail.subDetail"</Subscript>
</Data>
<DefaultData>detailDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
