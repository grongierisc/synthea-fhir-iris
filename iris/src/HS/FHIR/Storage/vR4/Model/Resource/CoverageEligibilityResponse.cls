/// CoverageEligibilityResponse resource.
Class HS.FHIR.Storage.vR4.Model.Resource.CoverageEligibilityResponse Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
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

/// code
/// <p>
/// auth-requirements | benefits | discovery | validation
/// <p>
/// eligibilityresponse-purpose|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend eligibilityresponse-purpose|4.0.1 and you may NOT use codes from other ValueSets.
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
/// Response creation date.
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Party responsible for the request.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property requestor As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "requestor", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Eligibility request reference.
/// <p>
/// CoverageEligibilityRequest
Property request As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "request", XMLPROJECTION = "ELEMENT") [ Required ];

/// code
/// <p>
/// queued | complete | error | partial
/// <p>
/// remittance-outcome|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend remittance-outcome|4.0.1 and you may NOT use codes from other ValueSets.
Property outcome As %String(MAXLEN = 1000000, XMLNAME = "outcome", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Disposition Message.
Property disposition As %String(MAXLEN = 1000000, XMLNAME = "disposition", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Coverage issuer.
/// <p>
/// Organization
Property insurer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "insurer", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Patient insurance information.
Property insurance As array Of HS.FHIR.Storage.vR4.Model.Element.CoverageEligibilityResponse.insurance(XMLNAME = "insurance", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Preauthorization reference.
Property preAuthRef As %String(MAXLEN = 1000000, XMLNAME = "preAuthRef", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Printed form identifier.
/// <p>
/// any FHIR4 code may be used; 
/// forms shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property form As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "form", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Processing errors.
Property error As array Of HS.FHIR.Storage.vR4.Model.Element.CoverageEligibilityResponse.error(XMLNAME = "error", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CoverageEligibilityResponse";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CoverageEligibilityResponse";

Storage Default
{
<Data name="CoverageEligibilityResponseDefaultData">
<Subscript>"CoverageEligibilityResponse"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>patient</Value>
</Value>
<Value name="3">
<Value>servicedDate</Value>
</Value>
<Value name="4">
<Value>servicedPeriod</Value>
</Value>
<Value name="5">
<Value>created</Value>
</Value>
<Value name="6">
<Value>requestor</Value>
</Value>
<Value name="7">
<Value>request</Value>
</Value>
<Value name="8">
<Value>outcome</Value>
</Value>
<Value name="9">
<Value>disposition</Value>
</Value>
<Value name="10">
<Value>insurer</Value>
</Value>
<Value name="11">
<Value>preAuthRef</Value>
</Value>
<Value name="12">
<Value>form</Value>
</Value>
</Data>
<Data name="error">
<Attribute>error</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CoverageEligibilityResponse.error"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CoverageEligibilityResponse.identifier"</Subscript>
</Data>
<Data name="insurance">
<Attribute>insurance</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CoverageEligibilityResponse.insurance"</Subscript>
</Data>
<Data name="purpose">
<Attribute>purpose</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CoverageEligibilityResponse.purpose"</Subscript>
</Data>
<DefaultData>CoverageEligibilityResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
