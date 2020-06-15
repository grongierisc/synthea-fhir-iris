/// Healthcare plan for patient or group.
Class HS.FHIR.vR4.Model.Resource.CarePlan Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External Ids for this plan.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Instantiates FHIR protocol or definition.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property instantiatesCanonical As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "instantiatesCanonical", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Instantiates external protocol or definition.
Property instantiatesUri As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "instantiatesUri", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Fulfills CarePlan.
/// <p>
/// CarePlan
Property basedOn As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// CarePlan replaced by this CarePlan.
/// <p>
/// CarePlan
Property replaces As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "replaces", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Part of referenced CarePlan.
/// <p>
/// CarePlan
Property partOf As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

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
Property category As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "category", XMLPROJECTION = "ELEMENT");

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
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Encounter created as part of.
/// <p>
/// Encounter
Property encounter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Time period plan covers.
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Date record was first recorded.
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who is the designated responsible party.
/// <p>
/// Patient | Practitioner | PractitionerRole | Device | RelatedPerson | Organization | CareTeam
Property author As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who provided the content of the care plan.
/// <p>
/// Patient | Practitioner | PractitionerRole | Device | RelatedPerson | Organization | CareTeam
Property contributor As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "contributor", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who's involved in plan?
/// <p>
/// CareTeam
Property careTeam As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "careTeam", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Health issues this plan addresses.
/// <p>
/// Condition
Property addresses As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "addresses", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Information considered as part of plan.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property supportingInfo As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "supportingInfo", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Desired outcome of plan.
/// <p>
/// Goal
Property goal As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "goal", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Action to occur as part of plan.
Property activity As List Of HS.FHIR.vR4.Model.Element.CarePlan.activity(XMLNAME = "activity", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments about the plan.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CarePlan";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CarePlan";

}
