/// Event record kept for security purposes.
Class HS.FHIR.vR4.Model.Resource.AuditEvent Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Coding
/// <p>
/// Type/identifier of event.
/// <p>
/// audit-event-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in audit-event-type, 
/// you may formally EXTEND audit-event-type to add codes to it.
Property type As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Coding
/// <p>
/// More specific type/id for the event.
/// <p>
/// audit-event-sub-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in audit-event-sub-type, 
/// you may formally EXTEND audit-event-sub-type to add codes to it.
Property subtype As List Of HS.FHIR.vR4.Model.Datatype.Coding(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "subtype", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// Type of action performed during the event.
/// <p>
/// audit-event-action|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend audit-event-action|4.0.1 and you may NOT use codes from other ValueSets.
Property action As %String(MAXLEN = 1000000, XMLNAME = "action", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When the activity occurred.
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// instant
/// <p>
/// Time when the event was recorded.
Property recorded As %String(MAXLEN = 1000000, XMLNAME = "recorded", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// Whether the event succeeded or failed.
/// <p>
/// audit-event-outcome|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend audit-event-outcome|4.0.1 and you may NOT use codes from other ValueSets.
Property outcome As %String(MAXLEN = 1000000, XMLNAME = "outcome", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Description of the event outcome.
Property outcomeDesc As %String(MAXLEN = 1000000, XMLNAME = "outcomeDesc", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// The purposeOfUse of the event.
/// <p>
/// v3-PurposeOfUse is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in v3-PurposeOfUse, 
/// you may formally EXTEND v3-PurposeOfUse to add codes to it.
Property purposeOfEvent As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "purposeOfEvent", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Actor involved in the event.
Property agent As List Of HS.FHIR.vR4.Model.Element.AuditEvent.agent(XMLNAME = "agent", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Audit Event Reporter.
Property source As HS.FHIR.vR4.Model.Element.AuditEvent.source(XMLNAME = "source", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Data or objects used.
Property entity As List Of HS.FHIR.vR4.Model.Element.AuditEvent.entity(XMLNAME = "entity", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AuditEvent";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AuditEvent";

}
