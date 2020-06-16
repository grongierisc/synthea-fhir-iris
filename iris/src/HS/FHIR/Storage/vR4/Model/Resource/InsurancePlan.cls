/// Details of a Health Insurance product/plan provided by an organization.
Class HS.FHIR.Storage.vR4.Model.Resource.InsurancePlan Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier for Product.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

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
Property type As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Official name.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Alternate names.
Property alias As array Of %String(MAXLEN = 1000000, XMLNAME = "alias", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// When the product is available.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Plan issuer.
/// <p>
/// Organization
Property ownedBy As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "ownedBy", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Product administrator.
/// <p>
/// Organization
Property administeredBy As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "administeredBy", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where product applies.
/// <p>
/// Location
Property coverageArea As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "coverageArea", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Contact for the product.
Property contact As array Of HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.contact(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Technical endpoint.
/// <p>
/// Endpoint
Property endpoint As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// What networks are Included.
/// <p>
/// Organization
Property network As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "network", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Coverage details.
Property coverage As array Of HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.coverage(XMLNAME = "coverage", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Plan details.
Property plan As array Of HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.plan(XMLNAME = "plan", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan";

Storage Default
{
<Data name="InsurancePlanDefaultData">
<Subscript>"InsurancePlan"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>name</Value>
</Value>
<Value name="3">
<Value>period</Value>
</Value>
<Value name="4">
<Value>ownedBy</Value>
</Value>
<Value name="5">
<Value>administeredBy</Value>
</Value>
</Data>
<Data name="alias">
<Attribute>alias</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.InsurancePlan.alias"</Subscript>
</Data>
<Data name="contact">
<Attribute>contact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.InsurancePlan.contact"</Subscript>
</Data>
<Data name="coverage">
<Attribute>coverage</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.InsurancePlan.coverage"</Subscript>
</Data>
<Data name="coverageArea">
<Attribute>coverageArea</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.InsurancePlan.coverageArea"</Subscript>
</Data>
<Data name="endpoint">
<Attribute>endpoint</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.InsurancePlan.endpoint"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.InsurancePlan.identifier"</Subscript>
</Data>
<Data name="network">
<Attribute>network</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.InsurancePlan.network"</Subscript>
</Data>
<Data name="plan">
<Attribute>plan</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.InsurancePlan.plan"</Subscript>
</Data>
<Data name="type">
<Attribute>type</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.InsurancePlan.type"</Subscript>
</Data>
<DefaultData>InsurancePlanDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
