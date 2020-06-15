/// If messaging is supported.
Class HS.FHIR.vR4.Model.Element.CapabilityStatement.messaging Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// BackboneElement
/// <p>
/// Where messages should be sent.
Property endpoint As list Of HS.FHIR.vR4.Model.Element.CapabilityStatement.messaging.endpoint(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Reliable Message Cache Length (min)
Property reliableCache As %Integer(XMLNAME = "reliableCache", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Messaging interface behavior details.
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Messages supported by this system.
Property supportedMessage As list Of HS.FHIR.vR4.Model.Element.CapabilityStatement.messaging.supportedMessage(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "supportedMessage", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CapabilityStatement.messaging";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CapabilityStatement.messaging";

Storage Default
{
<Data name="endpoint">
<Attribute>endpoint</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.CapabilityStatement.messaging.endpoint"</Subscript>
</Data>
<Data name="messagingDefaultData">
<Subscript>"messaging"</Subscript>
<Value name="1">
<Value>reliableCache</Value>
</Value>
<Value name="2">
<Value>documentation</Value>
</Value>
</Data>
<Data name="supportedMessage">
<Attribute>supportedMessage</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.CapabilityStatement.messaging.supportedMessage"</Subscript>
</Data>
<DefaultData>messagingDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
