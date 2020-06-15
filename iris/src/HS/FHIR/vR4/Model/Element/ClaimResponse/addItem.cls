/// Insurer added line items.
Class HS.FHIR.vR4.Model.Element.ClaimResponse.addItem Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Item sequence number.
Property itemSequence As list Of %Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "itemSequence", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Detail sequence number.
Property detailSequence As list Of %Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "detailSequence", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Subdetail sequence number.
Property subdetailSequence As list Of %Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "subdetailSequence", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Authorized providers.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property provider As list Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "provider", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Billing, 
/// service, 
/// product, 
/// or drug code.
/// <p>
/// any FHIR4 code may be used; 
/// service-uscls shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property productOrService As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "productOrService", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Service/Product billing modifiers.
/// <p>
/// any FHIR4 code may be used; 
/// claim-modifiers shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property modifier As list Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "modifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Program the product or service is provided under.
/// <p>
/// any FHIR4 code may be used; 
/// ex-program-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property programCode As list Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "programCode", XMLPROJECTION = "ELEMENT");

/// date
/// <p>
/// Date or dates of service or product delivery.
Property servicedDate As %String(MAXLEN = 1000000, XMLNAME = "servicedDate", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Date or dates of service or product delivery.
Property servicedPeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "servicedPeriod", XMLPROJECTION = "ELEMENT");

/// Address
/// <p>
/// Place of service or where product was supplied.
Property locationAddress As HS.FHIR.vR4.Model.Datatype.Address(XMLNAME = "locationAddress", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Place of service or where product was supplied.
/// <p>
/// any FHIR4 code may be used; 
/// service-place shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property locationCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "locationCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Place of service or where product was supplied.
/// <p>
/// Location.
Property locationReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "locationReference", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Count of products or services.
Property quantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

/// Money
/// <p>
/// Fee, 
/// charge or cost per item.
Property unitPrice As HS.FHIR.vR4.Model.Datatype.Money(XMLNAME = "unitPrice", XMLPROJECTION = "ELEMENT");

/// decimal
/// <p>
/// Price scaling factor.
Property factor As %Decimal(XMLNAME = "factor", XMLPROJECTION = "ATTRIBUTE");

/// Money
/// <p>
/// Total item cost.
Property net As HS.FHIR.vR4.Model.Datatype.Money(XMLNAME = "net", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Anatomical location.
/// <p>
/// any FHIR4 code may be used; 
/// tooth shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property bodySite As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Anatomical sub-location.
/// <p>
/// any FHIR4 code may be used; 
/// surface shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property subSite As list Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "subSite", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Applicable note numbers.
Property noteNumber As list Of %Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "noteNumber", XMLPROJECTION = "ELEMENT");

/// ClaimResponse:item[n].adjudication
/// <p>
/// Added items adjudication.
Property adjudication As list Of HS.FHIR.vR4.Model.Element.ClaimResponse.item.adjudication(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "adjudication", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Insurer added line details.
Property detail As list Of HS.FHIR.vR4.Model.Element.ClaimResponse.addItem.detail(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "detail", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClaimResponse.addItem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClaimResponse.addItem";

Storage Default
{
<Data name="addItemDefaultData">
<Subscript>"addItem"</Subscript>
<Value name="1">
<Value>provider</Value>
</Value>
<Value name="2">
<Value>productOrService</Value>
</Value>
<Value name="3">
<Value>servicedDate</Value>
</Value>
<Value name="4">
<Value>servicedPeriod</Value>
</Value>
<Value name="5">
<Value>locationAddress</Value>
</Value>
<Value name="6">
<Value>locationCodeableConcept</Value>
</Value>
<Value name="7">
<Value>locationReference</Value>
</Value>
<Value name="8">
<Value>quantity</Value>
</Value>
<Value name="9">
<Value>unitPrice</Value>
</Value>
<Value name="10">
<Value>factor</Value>
</Value>
<Value name="11">
<Value>net</Value>
</Value>
<Value name="12">
<Value>bodySite</Value>
</Value>
<Value name="13">
<Value>adjudication</Value>
</Value>
<Value name="14">
<Value>detail</Value>
</Value>
</Data>
<Data name="detailSequence">
<Attribute>detailSequence</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.ClaimResponse.addItem.detailSequence"</Subscript>
</Data>
<Data name="itemSequence">
<Attribute>itemSequence</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.ClaimResponse.addItem.itemSequence"</Subscript>
</Data>
<Data name="modifier">
<Attribute>modifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.ClaimResponse.addItem.modifier"</Subscript>
</Data>
<Data name="noteNumber">
<Attribute>noteNumber</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.ClaimResponse.addItem.noteNumber"</Subscript>
</Data>
<Data name="programCode">
<Attribute>programCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.ClaimResponse.addItem.programCode"</Subscript>
</Data>
<Data name="subSite">
<Attribute>subSite</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.ClaimResponse.addItem.subSite"</Subscript>
</Data>
<Data name="subdetailSequence">
<Attribute>subdetailSequence</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.ClaimResponse.addItem.subdetailSequence"</Subscript>
</Data>
<DefaultData>addItemDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
