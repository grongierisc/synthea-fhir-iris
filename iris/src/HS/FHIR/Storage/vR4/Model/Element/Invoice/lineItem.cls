/// Line items of this Invoice.
Class HS.FHIR.Storage.vR4.Model.Element.Invoice.lineItem Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Sequence number of line item.
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Reference to ChargeItem containing details of this line item or an inline billing code.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property chargeItemCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "chargeItemCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Reference to ChargeItem containing details of this line item or an inline billing code.
/// <p>
/// ChargeItem.
Property chargeItemReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "chargeItemReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Components of total line item price.
Property priceComponent As array Of HS.FHIR.Storage.vR4.Model.Element.Invoice.lineItem.priceComponent(XMLNAME = "priceComponent", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Invoice.lineItem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Invoice.lineItem";

Storage Default
{
<Data name="lineItemDefaultData">
<Subscript>"lineItem"</Subscript>
<Value name="1">
<Value>sequence</Value>
</Value>
<Value name="2">
<Value>chargeItemCodeableConcept</Value>
</Value>
<Value name="3">
<Value>chargeItemReference</Value>
</Value>
</Data>
<Data name="priceComponent">
<Attribute>priceComponent</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Invoice.lineItem.priceComponent"</Subscript>
</Data>
<DefaultData>lineItemDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
