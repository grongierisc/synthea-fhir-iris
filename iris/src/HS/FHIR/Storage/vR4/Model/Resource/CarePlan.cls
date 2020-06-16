/// Healthcare plan for patient or group.
Class HS.FHIR.Storage.vR4.Model.Resource.CarePlan Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External Ids for this plan.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Instantiates FHIR protocol or definition.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property instantiatesCanonical As array Of %String(MAXLEN = 1000000, XMLNAME = "instantiatesCanonical", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Instantiates external protocol or definition.
Property instantiatesUri As array Of %String(MAXLEN = 1000000, XMLNAME = "instantiatesUri", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Fulfills CarePlan.
/// <p>
/// CarePlan
Property basedOn As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// CarePlan replaced by this CarePlan.
/// <p>
/// CarePlan
Property replaces As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "replaces", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Part of referenced CarePlan.
/// <p>
/// CarePlan
Property partOf As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// draft | active | on-hold | revoked | completed | entered-in-error | unknown
/// <p>
/// request-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// proposal | plan | order | option
/// <p>
/// care-plan-intent|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend care-plan-intent|4.0.1 and you may NOT use codes from other ValueSets.
Property intent As %String(MAXLEN = 1000000, XMLNAME = "intent", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Type of plan.
/// <p>
/// any FHIR4 code may be used; 
/// care-plan-category shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Human-friendly name for the care plan.
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Summary of nature of plan.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who the care plan is for.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Encounter created as part of.
/// <p>
/// Encounter
Property encounter As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Time period plan covers.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Date record was first recorded.
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who is the designated responsible party.
/// <p>
/// Patient | Practitioner | PractitionerRole | Device | RelatedPerson | Organization | CareTeam
Property author As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who provided the content of the care plan.
/// <p>
/// Patient | Practitioner | PractitionerRole | Device | RelatedPerson | Organization | CareTeam
Property contributor As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "contributor", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who's involved in plan?
/// <p>
/// CareTeam
Property careTeam As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "careTeam", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Health issues this plan addresses.
/// <p>
/// Condition
Property addresses As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "addresses", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Information considered as part of plan.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property supportingInfo As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "supportingInfo", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Desired outcome of plan.
/// <p>
/// Goal
Property goal As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "goal", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Action to occur as part of plan.
Property activity As array Of HS.FHIR.Storage.vR4.Model.Element.CarePlan.activity(XMLNAME = "activity", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments about the plan.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CarePlan";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CarePlan";

Storage Default
{
<Data name="CarePlanDefaultData">
<Subscript>"CarePlan"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>intent</Value>
</Value>
<Value name="3">
<Value>title</Value>
</Value>
<Value name="4">
<Value>description</Value>
</Value>
<Value name="5">
<Value>subject</Value>
</Value>
<Value name="6">
<Value>encounter</Value>
</Value>
<Value name="7">
<Value>period</Value>
</Value>
<Value name="8">
<Value>created</Value>
</Value>
<Value name="9">
<Value>author</Value>
</Value>
</Data>
<Data name="activity">
<Attribute>activity</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CarePlan.activity"</Subscript>
</Data>
<Data name="addresses">
<Attribute>addresses</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CarePlan.addresses"</Subscript>
</Data>
<Data name="basedOn">
<Attribute>basedOn</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CarePlan.basedOn"</Subscript>
</Data>
<Data name="careTeam">
<Attribute>careTeam</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CarePlan.careTeam"</Subscript>
</Data>
<Data name="category">
<Attribute>category</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CarePlan.category"</Subscript>
</Data>
<Data name="contributor">
<Attribute>contributor</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CarePlan.contributor"</Subscript>
</Data>
<Data name="goal">
<Attribute>goal</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CarePlan.goal"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CarePlan.identifier"</Subscript>
</Data>
<Data name="instantiatesCanonical">
<Attribute>instantiatesCanonical</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CarePlan.instantiatesCanonical"</Subscript>
</Data>
<Data name="instantiatesUri">
<Attribute>instantiatesUri</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CarePlan.instantiatesUri"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CarePlan.note"</Subscript>
</Data>
<Data name="partOf">
<Attribute>partOf</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CarePlan.partOf"</Subscript>
</Data>
<Data name="replaces">
<Attribute>replaces</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CarePlan.replaces"</Subscript>
</Data>
<Data name="supportingInfo">
<Attribute>supportingInfo</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CarePlan.supportingInfo"</Subscript>
</Data>
<DefaultData>CarePlanDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
