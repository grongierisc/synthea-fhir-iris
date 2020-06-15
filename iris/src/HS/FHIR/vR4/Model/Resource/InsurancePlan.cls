/// Details of a Health Insurance product/plan provided by an organization.
Class HS.FHIR.vR4.Model.Resource.InsurancePlan Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier for Product.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// draft | active | retired | unknown
/// <p>
/// publication-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend publication-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Kind of product.
/// <p>
/// any FHIR4 code may be used; 
/// insuranceplan-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Official name.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Alternate names.
Property alias As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "alias", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// When the product is available.
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Plan issuer.
/// <p>
/// Organization
Property ownedBy As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "ownedBy", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Product administrator.
/// <p>
/// Organization
Property administeredBy As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "administeredBy", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where product applies.
/// <p>
/// Location
Property coverageArea As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "coverageArea", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Contact for the product.
Property contact As List Of HS.FHIR.vR4.Model.Element.InsurancePlan.contact(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Technical endpoint.
/// <p>
/// Endpoint
Property endpoint As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// What networks are Included.
/// <p>
/// Organization
Property network As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "network", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Coverage details.
Property coverage As List Of HS.FHIR.vR4.Model.Element.InsurancePlan.coverage(XMLNAME = "coverage", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Plan details.
Property plan As List Of HS.FHIR.vR4.Model.Element.InsurancePlan.plan(XMLNAME = "plan", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan";

}
