/// Actor involved in the event.
Class HS.FHIR.Storage.vR4.Model.Element.AuditEvent.agent Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// How agent participated.
/// <p>
/// participation-role-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in participation-role-type, 
/// you may formally EXTEND participation-role-type to add codes to it.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Agent role in the event.
/// <p>
/// any FHIR4 code may be used; 
/// security-role-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property role As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Identifier of who.
/// <p>
/// PractitionerRole | Practitioner | Organization | Device | Patient | RelatedPerson
Property who As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "who", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Alternative User identity.
Property altId As %String(MAXLEN = 1000000, XMLNAME = "altId", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Human friendly name for the agent.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Whether user is initiator.
Property requestor As %Boolean(XMLNAME = "requestor", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Where.
/// <p>
/// Location
Property location As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Policy that authorized event.
Property policy As array Of %String(MAXLEN = 1000000, XMLNAME = "policy", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Type of media.
/// <p>
/// dicm-405-mediatype is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in dicm-405-mediatype, 
/// you may formally EXTEND dicm-405-mediatype to add codes to it.
Property media As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "media", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Logical network location for application activity.
Property network As HS.FHIR.Storage.vR4.Model.Element.AuditEvent.agent.network(XMLNAME = "network", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Reason given for this user.
/// <p>
/// v3-PurposeOfUse is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in v3-PurposeOfUse, 
/// you may formally EXTEND v3-PurposeOfUse to add codes to it.
Property purposeOfUse As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "purposeOfUse", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AuditEvent.agent";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AuditEvent.agent";

Storage Default
{
<Data name="agentDefaultData">
<Subscript>"agent"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>who</Value>
</Value>
<Value name="3">
<Value>altId</Value>
</Value>
<Value name="4">
<Value>name</Value>
</Value>
<Value name="5">
<Value>requestor</Value>
</Value>
<Value name="6">
<Value>location</Value>
</Value>
<Value name="7">
<Value>media</Value>
</Value>
<Value name="8">
<Value>network</Value>
</Value>
</Data>
<Data name="policy">
<Attribute>policy</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.AuditEvent.agent.policy"</Subscript>
</Data>
<Data name="purposeOfUse">
<Attribute>purposeOfUse</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.AuditEvent.agent.purposeOfUse"</Subscript>
</Data>
<Data name="role">
<Attribute>role</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.AuditEvent.agent.role"</Subscript>
</Data>
<DefaultData>agentDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
