/// CoverageEligibilityRequest resource.
Class HS.FHIR.Storage.vR4.Model.Resource.CoverageEligibilityRequest Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier for coverage eligiblity request.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | cancelled | draft | entered-in-error
/// <p>
/// fm-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend fm-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Desired processing priority.
/// <p>
/// any FHIR4 code may be used; 
/// process-priority shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property priority As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "priority", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// auth-requirements | benefits | discovery | validation
/// <p>
/// eligibilityrequest-purpose|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend eligibilityrequest-purpose|4.0.1 and you may NOT use codes from other ValueSets.
Property purpose As array Of %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Intended recipient of products and services.
/// <p>
/// Patient
Property patient As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

/// date
/// <p>
/// Estimated date or dates of service.
Property servicedDate As %String(MAXLEN = 1000000, XMLNAME = "servicedDate", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Estimated date or dates of service.
Property servicedPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "servicedPeriod", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Creation date.
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Author.
/// <p>
/// Practitioner | PractitionerRole
Property enterer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "enterer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Party responsible for the request.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property provider As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "provider", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Coverage issuer.
/// <p>
/// Organization
Property insurer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "insurer", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Servicing facility.
/// <p>
/// Location
Property facility As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "facility", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Supporting information.
Property supportingInfo As array Of HS.FHIR.Storage.vR4.Model.Element.CoverageEligibilityRequest.supportingInfo(XMLNAME = "supportingInfo", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Patient insurance information.
Property insurance As array Of HS.FHIR.Storage.vR4.Model.Element.CoverageEligibilityRequest.insurance(XMLNAME = "insurance", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Item to be evaluated for eligibiity.
Property item As array Of HS.FHIR.Storage.vR4.Model.Element.CoverageEligibilityRequest.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CoverageEligibilityRequest";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CoverageEligibilityRequest";

Storage Default
{
<Data name="CoverageEligibilityRequestDefaultData">
<Subscript>"CoverageEligibilityRequest"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>priority</Value>
</Value>
<Value name="3">
<Value>patient</Value>
</Value>
<Value name="4">
<Value>servicedDate</Value>
</Value>
<Value name="5">
<Value>servicedPeriod</Value>
</Value>
<Value name="6">
<Value>created</Value>
</Value>
<Value name="7">
<Value>enterer</Value>
</Value>
<Value name="8">
<Value>provider</Value>
</Value>
<Value name="9">
<Value>insurer</Value>
</Value>
<Value name="10">
<Value>facility</Value>
</Value>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CoverageEligibilityRequest.identifier"</Subscript>
</Data>
<Data name="insurance">
<Attribute>insurance</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CoverageEligibilityRequest.insurance"</Subscript>
</Data>
<Data name="item">
<Attribute>item</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CoverageEligibilityRequest.item"</Subscript>
</Data>
<Data name="purpose">
<Attribute>purpose</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CoverageEligibilityRequest.purpose"</Subscript>
</Data>
<Data name="supportingInfo">
<Attribute>supportingInfo</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CoverageEligibilityRequest.supportingInfo"</Subscript>
</Data>
<DefaultData>CoverageEligibilityRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
