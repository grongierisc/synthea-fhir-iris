/// Product or service provided.
Class HS.FHIR.vR4.Model.Element.Claim.item Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Item instance identifier.
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// positiveInt
/// <p>
/// Applicable careTeam members.
Property careTeamSequence As array Of %Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "careTeamSequence", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Applicable diagnoses.
Property diagnosisSequence As array Of %Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "diagnosisSequence", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Applicable procedures.
Property procedureSequence As array Of %Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "procedureSequence", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Applicable exception and supporting information.
Property informationSequence As array Of %Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "informationSequence", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Revenue or cost center code.
/// <p>
/// any FHIR4 code may be used; 
/// ex-revenue-center shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property revenue As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "revenue", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Benefit classification.
/// <p>
/// any FHIR4 code may be used; 
/// ex-benefitcategory shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

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
/// Product or service billing modifiers.
/// <p>
/// any FHIR4 code may be used; 
/// claim-modifiers shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property modifier As array Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "modifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Program the product or service is provided under.
/// <p>
/// any FHIR4 code may be used; 
/// ex-program-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property programCode As array Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "programCode", XMLPROJECTION = "ELEMENT");

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

/// Reference
/// <p>
/// Unique device identifier.
/// <p>
/// Device
Property udi As array Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "udi", XMLPROJECTION = "ELEMENT");

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
Property subSite As array Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "subSite", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Encounters related to this billed item.
/// <p>
/// Encounter
Property encounter As array Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Product or service provided.
Property detail As array Of HS.FHIR.vR4.Model.Element.Claim.item.detail(XMLNAME = "detail", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Claim.item";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Claim.item";

Storage Default
{
<Data name="careTeamSequence">
<Attribute>careTeamSequence</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.Claim.item.careTeamSequence"</Subscript>
</Data>
<Data name="diagnosisSequence">
<Attribute>diagnosisSequence</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.Claim.item.diagnosisSequence"</Subscript>
</Data>
<Data name="informationSequence">
<Attribute>informationSequence</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.Claim.item.informationSequence"</Subscript>
</Data>
<Data name="itemDefaultData">
<Subscript>"item"</Subscript>
<Value name="1">
<Value>sequence</Value>
</Value>
<Value name="2">
<Value>revenue</Value>
</Value>
<Value name="3">
<Value>category</Value>
</Value>
<Value name="4">
<Value>productOrService</Value>
</Value>
<Value name="5">
<Value>servicedDate</Value>
</Value>
<Value name="6">
<Value>servicedPeriod</Value>
</Value>
<Value name="7">
<Value>locationAddress</Value>
</Value>
<Value name="8">
<Value>locationCodeableConcept</Value>
</Value>
<Value name="9">
<Value>locationReference</Value>
</Value>
<Value name="10">
<Value>quantity</Value>
</Value>
<Value name="11">
<Value>unitPrice</Value>
</Value>
<Value name="12">
<Value>factor</Value>
</Value>
<Value name="13">
<Value>net</Value>
</Value>
<Value name="14">
<Value>udi</Value>
</Value>
<Value name="15">
<Value>bodySite</Value>
</Value>
<Value name="16">
<Value>encounter</Value>
</Value>
<Value name="17">
<Value>detail</Value>
</Value>
</Data>
<Data name="modifier">
<Attribute>modifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.Claim.item.modifier"</Subscript>
</Data>
<Data name="procedureSequence">
<Attribute>procedureSequence</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.Claim.item.procedureSequence"</Subscript>
</Data>
<Data name="programCode">
<Attribute>programCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.Claim.item.programCode"</Subscript>
</Data>
<Data name="subSite">
<Attribute>subSite</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.Claim.item.subSite"</Subscript>
</Data>
<DefaultData>itemDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
