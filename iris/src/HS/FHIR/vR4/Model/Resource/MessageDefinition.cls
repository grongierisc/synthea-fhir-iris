/// A resource that defines a type of message that can be exchanged between systems.
Class HS.FHIR.vR4.Model.Resource.MessageDefinition Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Business Identifier for a given MessageDefinition.
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Primary key for the message definition on a given server.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

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
Property replaces As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "replaces", XMLPROJECTION = "ELEMENT");

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
Property contact As List Of HS.FHIR.vR4.Model.Datatype.ContactDetail(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Natural language description of the message definition.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As List Of HS.FHIR.vR4.Model.Datatype.UsageContext(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for message definition (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

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
Property parent As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "parent", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Event code  or link to the EventDefinition.
/// <p>
/// any FHIR4 code may be used; 
/// message-events shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property eventCoding As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "eventCoding", XMLPROJECTION = "ELEMENT") [ Required ];

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
Property focus As List Of HS.FHIR.vR4.Model.Element.MessageDefinition.focus(XMLNAME = "focus", XMLPROJECTION = "ELEMENT");

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
Property allowedResponse As List Of HS.FHIR.vR4.Model.Element.MessageDefinition.allowedResponse(XMLNAME = "allowedResponse", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Canonical reference to a GraphDefinition.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property graph As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "graph", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MessageDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MessageDefinition";

}
