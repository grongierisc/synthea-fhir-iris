/// Audit Event Reporter.
Class HS.FHIR.Storage.vR4.Model.Element.AuditEvent.source Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Logical source location within the enterprise.
Property site As %String(MAXLEN = 1000000, XMLNAME = "site", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// The identity of source detecting the event.
/// <p>
/// PractitionerRole | Practitioner | Organization | Device | Patient | RelatedPerson
Property observer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "observer", XMLPROJECTION = "ELEMENT") [ Required ];

/// Coding
/// <p>
/// The type of source where event originated.
/// <p>
/// audit-source-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in audit-source-type, 
/// you may formally EXTEND audit-source-type to add codes to it.
Property type As array Of HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AuditEvent.source";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AuditEvent.source";

Storage Default
{
<Data name="sourceDefaultData">
<Subscript>"source"</Subscript>
<Value name="1">
<Value>site</Value>
</Value>
<Value name="2">
<Value>observer</Value>
</Value>
</Data>
<Data name="type">
<Attribute>type</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.AuditEvent.source.type"</Subscript>
</Data>
<DefaultData>sourceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
