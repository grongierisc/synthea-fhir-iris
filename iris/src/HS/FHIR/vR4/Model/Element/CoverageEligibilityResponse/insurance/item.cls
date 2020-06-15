/// Benefits and authorization details.
Class HS.FHIR.vR4.Model.Element.CoverageEligibilityResponse.insurance.item Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

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
/// Performing practitioner.
/// <p>
/// Practitioner | PractitionerRole
Property provider As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "provider", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Excluded from the plan.
Property excluded As %Boolean(XMLNAME = "excluded", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Short name for the benefit.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Description of the benefit or services covered.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// In or out of network.
/// <p>
/// any FHIR4 code may be used; 
/// benefit-network shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property network As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "network", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Individual or family.
/// <p>
/// any FHIR4 code may be used; 
/// benefit-unit shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property unit As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "unit", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Annual or lifetime.
/// <p>
/// any FHIR4 code may be used; 
/// benefit-term shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property term As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "term", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Benefit Summary.
Property benefit As List Of HS.FHIR.vR4.Model.Element.CoverageEligibilityResponse.insurance.item.benefit(XMLNAME = "benefit", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Authorization required flag.
Property authorizationRequired As %Boolean(XMLNAME = "authorizationRequired", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Type of required supporting materials.
/// <p>
/// any FHIR4 code may be used; 
/// coverageeligibilityresponse-ex-auth-support shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property authorizationSupporting As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "authorizationSupporting", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Preauthorization requirements endpoint.
Property authorizationUrl As %String(MAXLEN = 1000000, XMLNAME = "authorizationUrl", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CoverageEligibilityResponse.insurance.item";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CoverageEligibilityResponse.insurance.item";

}
