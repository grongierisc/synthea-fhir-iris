/// Contract Valued Item List.
Class HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset.valuedItem Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Contract Valued Item Type.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property entityCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "entityCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Contract Valued Item Type.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property entityReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "entityReference", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Contract Valued Item Number.
Property identifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Contract Valued Item Effective Tiem.
Property effectiveTime As %String(MAXLEN = 1000000, XMLNAME = "effectiveTime", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// Count of Contract Valued Items.
Property quantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

/// Money
/// <p>
/// Contract Valued Item fee, 
/// charge, 
/// or cost.
Property unitPrice As HS.FHIR.Storage.vR4.Model.Datatype.Money(XMLNAME = "unitPrice", XMLPROJECTION = "ELEMENT");

/// decimal
/// <p>
/// Contract Valued Item Price Scaling Factor.
Property factor As %Decimal(XMLNAME = "factor", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Contract Valued Item Difficulty Scaling Factor.
Property points As %Decimal(XMLNAME = "points", XMLPROJECTION = "ATTRIBUTE");

/// Money
/// <p>
/// Total Contract Valued Item Value.
Property net As HS.FHIR.Storage.vR4.Model.Datatype.Money(XMLNAME = "net", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Terms of valuation.
Property payment As %String(MAXLEN = 1000000, XMLNAME = "payment", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// When payment is due.
Property paymentDate As %String(MAXLEN = 1000000, XMLNAME = "paymentDate", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who will make payment.
/// <p>
/// Organization | Patient | Practitioner | PractitionerRole | RelatedPerson
Property responsible As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "responsible", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who will receive payment.
/// <p>
/// Organization | Patient | Practitioner | PractitionerRole | RelatedPerson
Property recipient As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "recipient", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Pointer to specific item.
Property linkId As array Of %String(MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Security Labels that define affected terms.
Property securityLabelNumber As array Of %Integer(XMLNAME = "securityLabelNumber", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term.asset.valuedItem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term.asset.valuedItem";

Storage Default
{
<Data name="linkId">
<Attribute>linkId</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset.valuedItem.linkId"</Subscript>
</Data>
<Data name="securityLabelNumber">
<Attribute>securityLabelNumber</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset.valuedItem.securityLabelNumber"</Subscript>
</Data>
<Data name="valuedItemDefaultData">
<Subscript>"valuedItem"</Subscript>
<Value name="1">
<Value>entityCodeableConcept</Value>
</Value>
<Value name="2">
<Value>entityReference</Value>
</Value>
<Value name="3">
<Value>identifier</Value>
</Value>
<Value name="4">
<Value>effectiveTime</Value>
</Value>
<Value name="5">
<Value>quantity</Value>
</Value>
<Value name="6">
<Value>unitPrice</Value>
</Value>
<Value name="7">
<Value>factor</Value>
</Value>
<Value name="8">
<Value>points</Value>
</Value>
<Value name="9">
<Value>net</Value>
</Value>
<Value name="10">
<Value>payment</Value>
</Value>
<Value name="11">
<Value>paymentDate</Value>
</Value>
<Value name="12">
<Value>responsible</Value>
</Value>
<Value name="13">
<Value>recipient</Value>
</Value>
</Data>
<DefaultData>valuedItemDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
