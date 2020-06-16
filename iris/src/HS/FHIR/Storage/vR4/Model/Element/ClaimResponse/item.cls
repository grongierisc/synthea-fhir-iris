/// Adjudication for claim line items.
Class HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.item Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Claim item instance identifier.
Property itemSequence As %Integer(XMLNAME = "itemSequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// positiveInt
/// <p>
/// Applicable note numbers.
Property noteNumber As array Of %Integer(XMLNAME = "noteNumber", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Adjudication details.
Property adjudication As array Of HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.item.adjudication(XMLNAME = "adjudication", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Adjudication for claim details.
Property detail As array Of HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.item.detail(XMLNAME = "detail", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClaimResponse.item";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClaimResponse.item";

Storage Default
{
<Data name="adjudication">
<Attribute>adjudication</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.item.adjudication"</Subscript>
</Data>
<Data name="detail">
<Attribute>detail</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.item.detail"</Subscript>
</Data>
<Data name="itemDefaultData">
<Subscript>"item"</Subscript>
<Value name="1">
<Value>itemSequence</Value>
</Value>
</Data>
<Data name="noteNumber">
<Attribute>noteNumber</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.item.noteNumber"</Subscript>
</Data>
<DefaultData>itemDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
