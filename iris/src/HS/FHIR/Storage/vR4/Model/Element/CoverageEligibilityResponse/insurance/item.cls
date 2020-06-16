/// Benefits and authorization details.
Class HS.FHIR.Storage.vR4.Model.Element.CoverageEligibilityResponse.insurance.item Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Benefit classification.
/// <p>
/// any FHIR4 code may be used; 
/// ex-benefitcategory shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

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
Property productOrService As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "productOrService", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Product or service billing modifiers.
/// <p>
/// any FHIR4 code may be used; 
/// claim-modifiers shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property modifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "modifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Performing practitioner.
/// <p>
/// Practitioner | PractitionerRole
Property provider As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "provider", XMLPROJECTION = "ELEMENT");

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
Property network As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "network", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Individual or family.
/// <p>
/// any FHIR4 code may be used; 
/// benefit-unit shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property unit As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "unit", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Annual or lifetime.
/// <p>
/// any FHIR4 code may be used; 
/// benefit-term shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property term As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "term", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Benefit Summary.
Property benefit As array Of HS.FHIR.Storage.vR4.Model.Element.CoverageEligibilityResponse.insurance.item.benefit(XMLNAME = "benefit", XMLPROJECTION = "ELEMENT");

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
Property authorizationSupporting As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "authorizationSupporting", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Preauthorization requirements endpoint.
Property authorizationUrl As %String(MAXLEN = 1000000, XMLNAME = "authorizationUrl", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CoverageEligibilityResponse.insurance.item";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CoverageEligibilityResponse.insurance.item";

Storage Default
{
<Data name="authorizationSupporting">
<Attribute>authorizationSupporting</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.CoverageEligibilityResponse.insurance.item.authorizationSupporting"</Subscript>
</Data>
<Data name="benefit">
<Attribute>benefit</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.CoverageEligibilityResponse.insurance.item.benefit"</Subscript>
</Data>
<Data name="itemDefaultData">
<Subscript>"item"</Subscript>
<Value name="1">
<Value>category</Value>
</Value>
<Value name="2">
<Value>productOrService</Value>
</Value>
<Value name="3">
<Value>provider</Value>
</Value>
<Value name="4">
<Value>excluded</Value>
</Value>
<Value name="5">
<Value>name</Value>
</Value>
<Value name="6">
<Value>description</Value>
</Value>
<Value name="7">
<Value>network</Value>
</Value>
<Value name="8">
<Value>unit</Value>
</Value>
<Value name="9">
<Value>term</Value>
</Value>
<Value name="10">
<Value>authorizationRequired</Value>
</Value>
<Value name="11">
<Value>authorizationUrl</Value>
</Value>
</Data>
<Data name="modifier">
<Attribute>modifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.CoverageEligibilityResponse.insurance.item.modifier"</Subscript>
</Data>
<DefaultData>itemDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
