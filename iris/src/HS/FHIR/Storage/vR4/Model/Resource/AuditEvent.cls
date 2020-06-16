/// Event record kept for security purposes.
Class HS.FHIR.Storage.vR4.Model.Resource.AuditEvent Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Coding
/// <p>
/// Type/identifier of event.
/// <p>
/// audit-event-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in audit-event-type, 
/// you may formally EXTEND audit-event-type to add codes to it.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Coding
/// <p>
/// More specific type/id for the event.
/// <p>
/// audit-event-sub-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in audit-event-sub-type, 
/// you may formally EXTEND audit-event-sub-type to add codes to it.
Property subtype As array Of HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "subtype", XMLPROJECTION = "ELEMENT");

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
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

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
Property purposeOfEvent As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "purposeOfEvent", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Actor involved in the event.
Property agent As array Of HS.FHIR.Storage.vR4.Model.Element.AuditEvent.agent(XMLNAME = "agent", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Audit Event Reporter.
Property source As HS.FHIR.Storage.vR4.Model.Element.AuditEvent.source(XMLNAME = "source", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Data or objects used.
Property entity As array Of HS.FHIR.Storage.vR4.Model.Element.AuditEvent.entity(XMLNAME = "entity", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AuditEvent";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AuditEvent";

Storage Default
{
<Data name="AuditEventDefaultData">
<Subscript>"AuditEvent"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>action</Value>
</Value>
<Value name="3">
<Value>period</Value>
</Value>
<Value name="4">
<Value>recorded</Value>
</Value>
<Value name="5">
<Value>outcome</Value>
</Value>
<Value name="6">
<Value>outcomeDesc</Value>
</Value>
<Value name="7">
<Value>source</Value>
</Value>
</Data>
<Data name="agent">
<Attribute>agent</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.AuditEvent.agent"</Subscript>
</Data>
<Data name="entity">
<Attribute>entity</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.AuditEvent.entity"</Subscript>
</Data>
<Data name="purposeOfEvent">
<Attribute>purposeOfEvent</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.AuditEvent.purposeOfEvent"</Subscript>
</Data>
<Data name="subtype">
<Attribute>subtype</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.AuditEvent.subtype"</Subscript>
</Data>
<DefaultData>AuditEventDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
