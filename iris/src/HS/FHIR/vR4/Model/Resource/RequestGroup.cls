/// A group of related requests.
Class HS.FHIR.vR4.Model.Resource.RequestGroup Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifier.
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
/// Fulfills plan, 
/// proposal, 
/// or order.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property basedOn As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Request(s) replaced by this request.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property replaces As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "replaces", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Composite request this is part of.
Property groupIdentifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "groupIdentifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// draft | active | on-hold | revoked | completed | entered-in-error | unknown
/// <p>
/// request-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option
/// <p>
/// request-intent|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-intent|4.0.1 and you may NOT use codes from other ValueSets.
Property intent As %String(MAXLEN = 1000000, XMLNAME = "intent", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// routine | urgent | asap | stat
/// <p>
/// request-priority|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-priority|4.0.1 and you may NOT use codes from other ValueSets.
Property priority As %String(MAXLEN = 1000000, XMLNAME = "priority", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// What's being requested/ordered.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who the request group is about.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Created as part of.
/// <p>
/// Encounter
Property encounter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the request group was authored.
Property authoredOn As %String(MAXLEN = 1000000, XMLNAME = "authoredOn", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Device or practitioner that authored the request group.
/// <p>
/// Device | Practitioner | PractitionerRole
Property author As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why the request group is needed.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property reasonCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why the request group is needed.
/// <p>
/// Condition | Observation | DiagnosticReport | DocumentReference
Property reasonReference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Additional notes about the response.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Proposed actions, 
/// if any.
Property action As List Of HS.FHIR.vR4.Model.Element.RequestGroup.action(XMLNAME = "action", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "RequestGroup";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "RequestGroup";

}
