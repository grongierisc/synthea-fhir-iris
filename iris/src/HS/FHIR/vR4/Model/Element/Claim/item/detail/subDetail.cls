/// Product or service provided.
Class HS.FHIR.vR4.Model.Element.Claim.item.detail.subDetail Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Item instance identifier.
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];

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
Property udi As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "udi", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Claim.item.detail.subDetail";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Claim.item.detail.subDetail";

}
