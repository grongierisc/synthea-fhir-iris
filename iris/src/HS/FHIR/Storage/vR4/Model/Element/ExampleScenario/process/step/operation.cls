/// Each interaction or action.
Class HS.FHIR.Storage.vR4.Model.Element.ExampleScenario.process.step.operation Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// The sequential number of the interaction.
Property number As %String(MAXLEN = 1000000, XMLNAME = "number", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// The type of operation - CRUD.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// The human-friendly name of the interaction.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Who starts the transaction.
Property initiator As %String(MAXLEN = 1000000, XMLNAME = "initiator", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Who receives the transaction.
Property receiver As %String(MAXLEN = 1000000, XMLNAME = "receiver", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// A comment to be inserted in the diagram.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Whether the initiator is deactivated right after the transaction.
Property initiatorActive As %Boolean(XMLNAME = "initiatorActive", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Whether the receiver is deactivated right after the transaction.
Property receiverActive As %Boolean(XMLNAME = "receiverActive", XMLPROJECTION = "ATTRIBUTE");

/// ExampleScenario:instance[n].containedInstance
/// <p>
/// Each resource instance used by the initiator.
Property request As HS.FHIR.Storage.vR4.Model.Element.ExampleScenario.instance.containedInstance(XMLNAME = "request", XMLPROJECTION = "ELEMENT");

/// ExampleScenario:instance[n].containedInstance
/// <p>
/// Each resource instance used by the responder.
Property response As HS.FHIR.Storage.vR4.Model.Element.ExampleScenario.instance.containedInstance(XMLNAME = "response", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExampleScenario.process.step.operation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExampleScenario.process.step.operation";

Storage Default
{
<Data name="operationDefaultData">
<Subscript>"operation"</Subscript>
<Value name="1">
<Value>number</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
<Value name="3">
<Value>name</Value>
</Value>
<Value name="4">
<Value>initiator</Value>
</Value>
<Value name="5">
<Value>receiver</Value>
</Value>
<Value name="6">
<Value>description</Value>
</Value>
<Value name="7">
<Value>initiatorActive</Value>
</Value>
<Value name="8">
<Value>receiverActive</Value>
</Value>
<Value name="9">
<Value>request</Value>
</Value>
<Value name="10">
<Value>response</Value>
</Value>
</Data>
<DefaultData>operationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
