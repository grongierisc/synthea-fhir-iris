/// A resource that defines a type of message that can be exchanged between systems.
Class HS.FHIR.Storage.vR4.Model.Resource.MessageDefinition Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Business Identifier for a given MessageDefinition.
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Primary key for the message definition on a given server.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Business version of the message definition.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this message definition (computer friendly)
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this message definition (human friendly)
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Takes the place of.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property replaces As array Of %String(MAXLEN = 1000000, XMLNAME = "replaces", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// draft | active | retired | unknown
/// <p>
/// publication-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend publication-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// For testing purposes, 
/// not real usage.
Property experimental As %Boolean(XMLNAME = "experimental", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Date last changed.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Name of the publisher (organization or individual)
Property publisher As %String(MAXLEN = 1000000, XMLNAME = "publisher", XMLPROJECTION = "ATTRIBUTE");

/// ContactDetail
/// <p>
/// Contact details for the publisher.
Property contact As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactDetail(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Natural language description of the message definition.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As array Of HS.FHIR.Storage.vR4.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for message definition (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Why this message definition is defined.
Property purpose As %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Use and/or publishing restrictions.
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Definition this one is based on.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property base As %String(MAXLEN = 1000000, XMLNAME = "base", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Protocol/workflow this is part of.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property parent As array Of %String(MAXLEN = 1000000, XMLNAME = "parent", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Event code  or link to the EventDefinition.
/// <p>
/// any FHIR4 code may be used; 
/// message-events shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property eventCoding As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "eventCoding", XMLPROJECTION = "ELEMENT") [ Required ];

/// uri
/// <p>
/// Event code  or link to the EventDefinition.
Property eventUri As %String(MAXLEN = 1000000, XMLNAME = "eventUri", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// consequence | currency | notification
/// <p>
/// message-significance-category|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend message-significance-category|4.0.1 and you may NOT use codes from other ValueSets.
Property category As %String(MAXLEN = 1000000, XMLNAME = "category", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Resource(s) that are the subject of the event.
Property focus As array Of HS.FHIR.Storage.vR4.Model.Element.MessageDefinition.focus(XMLNAME = "focus", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// always | on-error | never | on-success
/// <p>
/// messageheader-response-request|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend messageheader-response-request|4.0.1 and you may NOT use codes from other ValueSets.
Property responseRequired As %String(MAXLEN = 1000000, XMLNAME = "responseRequired", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Responses to this message.
Property allowedResponse As array Of HS.FHIR.Storage.vR4.Model.Element.MessageDefinition.allowedResponse(XMLNAME = "allowedResponse", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Canonical reference to a GraphDefinition.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property graph As array Of %String(MAXLEN = 1000000, XMLNAME = "graph", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MessageDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MessageDefinition";

Storage Default
{
<Data name="MessageDefinitionDefaultData">
<Subscript>"MessageDefinition"</Subscript>
<Value name="1">
<Value>url</Value>
</Value>
<Value name="2">
<Value>version</Value>
</Value>
<Value name="3">
<Value>name</Value>
</Value>
<Value name="4">
<Value>title</Value>
</Value>
<Value name="5">
<Value>status</Value>
</Value>
<Value name="6">
<Value>experimental</Value>
</Value>
<Value name="7">
<Value>date</Value>
</Value>
<Value name="8">
<Value>publisher</Value>
</Value>
<Value name="9">
<Value>description</Value>
</Value>
<Value name="10">
<Value>purpose</Value>
</Value>
<Value name="11">
<Value>copyright</Value>
</Value>
<Value name="12">
<Value>base</Value>
</Value>
<Value name="13">
<Value>eventCoding</Value>
</Value>
<Value name="14">
<Value>eventUri</Value>
</Value>
<Value name="15">
<Value>category</Value>
</Value>
<Value name="16">
<Value>responseRequired</Value>
</Value>
</Data>
<Data name="allowedResponse">
<Attribute>allowedResponse</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MessageDefinition.allowedResponse"</Subscript>
</Data>
<Data name="contact">
<Attribute>contact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MessageDefinition.contact"</Subscript>
</Data>
<Data name="focus">
<Attribute>focus</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MessageDefinition.focus"</Subscript>
</Data>
<Data name="graph">
<Attribute>graph</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MessageDefinition.graph"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MessageDefinition.identifier"</Subscript>
</Data>
<Data name="jurisdiction">
<Attribute>jurisdiction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MessageDefinition.jurisdiction"</Subscript>
</Data>
<Data name="parent">
<Attribute>parent</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MessageDefinition.parent"</Subscript>
</Data>
<Data name="replaces">
<Attribute>replaces</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MessageDefinition.replaces"</Subscript>
</Data>
<Data name="useContext">
<Attribute>useContext</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MessageDefinition.useContext"</Subscript>
</Data>
<DefaultData>MessageDefinitionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
