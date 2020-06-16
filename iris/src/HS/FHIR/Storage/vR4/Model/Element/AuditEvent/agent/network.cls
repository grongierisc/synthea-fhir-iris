/// Logical network location for application activity.
Class HS.FHIR.Storage.vR4.Model.Element.AuditEvent.agent.network Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Identifier for the network access point of the user device.
Property address As %String(MAXLEN = 1000000, XMLNAME = "address", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// The type of network access point.
/// <p>
/// network-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend network-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AuditEvent.agent.network";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AuditEvent.agent.network";

Storage Default
{
<Data name="networkDefaultData">
<Subscript>"network"</Subscript>
<Value name="1">
<Value>address</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
</Data>
<DefaultData>networkDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
