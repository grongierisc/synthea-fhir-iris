/// Line items of this Invoice.
Class HS.FHIR.vR4.Model.Element.Invoice.lineItem Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
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
Property chargeItemCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "chargeItemCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Reference to ChargeItem containing details of this line item or an inline billing code.
/// <p>
/// ChargeItem.
Property chargeItemReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "chargeItemReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Components of total line item price.
Property priceComponent As List Of HS.FHIR.vR4.Model.Element.Invoice.lineItem.priceComponent(XMLNAME = "priceComponent", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Invoice.lineItem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Invoice.lineItem";

}
