/// Insurer added line items.
Class HS.FHIR.vR4.Model.Element.ExplanationOfBenefit.addItem Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Item sequence number.
Property itemSequence As List Of%Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "itemSequence", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Detail sequence number.
Property detailSequence As List Of%Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "detailSequence", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Subdetail sequence number.
Property subDetailSequence As List Of%Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "subDetailSequence", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Authorized providers.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property provider As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "provider", XMLPROJECTION = "ELEMENT");

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
Property modifier As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "modifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Program the product or service is provided under.
/// <p>
/// any FHIR4 code may be used; 
/// ex-program-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property programCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "programCode", XMLPROJECTION = "ELEMENT");

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
Property subSite As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "subSite", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Applicable note numbers.
Property noteNumber As List Of%Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "noteNumber", XMLPROJECTION = "ELEMENT");

/// ExplanationOfBenefit:item[n].adjudication
/// <p>
/// Added items adjudication.
Property adjudication As List Of HS.FHIR.vR4.Model.Element.ExplanationOfBenefit.item.adjudication(XMLNAME = "adjudication", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Insurer added line items.
Property detail As List Of HS.FHIR.vR4.Model.Element.ExplanationOfBenefit.addItem.detail(XMLNAME = "detail", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExplanationOfBenefit.addItem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExplanationOfBenefit.addItem";

}
