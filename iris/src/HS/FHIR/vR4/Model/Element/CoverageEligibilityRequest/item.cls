/// Item to be evaluated for eligibiity.
Class HS.FHIR.vR4.Model.Element.CoverageEligibilityRequest.item Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Applicable exception or supporting information.
Property supportingInfoSequence As List Of%Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "supportingInfoSequence", XMLPROJECTION = "ELEMENT");

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
Property productOrService As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "productOrService", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Product or service billing modifiers.
/// <p>
/// any FHIR4 code may be used; 
/// claim-modifiers shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property modifier As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "modifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Perfoming practitioner.
/// <p>
/// Practitioner | PractitionerRole
Property provider As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "provider", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Count of products or services.
Property quantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

/// Money
/// <p>
/// Fee, 
/// charge or cost per item.
Property unitPrice As HS.FHIR.vR4.Model.Datatype.Money(XMLNAME = "unitPrice", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Servicing facility.
/// <p>
/// Location | Organization
Property facility As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "facility", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Applicable diagnosis.
Property diagnosis As List Of HS.FHIR.vR4.Model.Element.CoverageEligibilityRequest.item.diagnosis(XMLNAME = "diagnosis", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Product or service details.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property detail As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "detail", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CoverageEligibilityRequest.item";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CoverageEligibilityRequest.item";

}
