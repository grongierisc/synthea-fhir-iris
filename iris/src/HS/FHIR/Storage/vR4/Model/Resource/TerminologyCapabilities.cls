/// A statement of system capabilities.
Class HS.FHIR.Storage.vR4.Model.Resource.TerminologyCapabilities Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Canonical identifier for this terminology capabilities, 
/// represented as a URI (globally unique)
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Business version of the terminology capabilities.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this terminology capabilities (computer friendly)
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this terminology capabilities (human friendly)
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

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
/// Natural language description of the terminology capabilities.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As array Of HS.FHIR.Storage.vR4.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for terminology capabilities (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Why this terminology capabilities is defined.
Property purpose As %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Use and/or publishing restrictions.
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// instance | capability | requirements
/// <p>
/// capability-statement-kind|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend capability-statement-kind|4.0.1 and you may NOT use codes from other ValueSets.
Property kind As %String(MAXLEN = 1000000, XMLNAME = "kind", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// BackboneElement
/// <p>
/// Software that is covered by this terminology capability statement.
Property software As HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.software(XMLNAME = "software", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// If this describes a specific instance.
Property implementation As HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.implementation(XMLNAME = "implementation", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether lockedDate is supported.
Property lockedDate As %Boolean(XMLNAME = "lockedDate", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// A code system supported by the server.
Property codeSystem As array Of HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.codeSystem(XMLNAME = "codeSystem", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Information about the [ValueSet/$expand](valueset-operation-expand.html) operation.
Property expansion As HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.expansion(XMLNAME = "expansion", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// explicit | all
/// <p>
/// code-search-support|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend code-search-support|4.0.1 and you may NOT use codes from other ValueSets.
Property codeSearch As %String(MAXLEN = 1000000, XMLNAME = "codeSearch", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Information about the [ValueSet/$validate-code](valueset-operation-validate-code.html) operation.
Property validateCode As HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.validateCode(XMLNAME = "validateCode", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Information about the [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
Property translation As HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.translation(XMLNAME = "translation", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Information about the [ConceptMap/$closure](conceptmap-operation-closure.html) operation.
Property closure As HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.closure(XMLNAME = "closure", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TerminologyCapabilities";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TerminologyCapabilities";

Storage Default
{
<Data name="TerminologyCapabilitiesDefaultData">
<Subscript>"TerminologyCapabilities"</Subscript>
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
<Value>kind</Value>
</Value>
<Value name="13">
<Value>software</Value>
</Value>
<Value name="14">
<Value>implementation</Value>
</Value>
<Value name="15">
<Value>lockedDate</Value>
</Value>
<Value name="16">
<Value>expansion</Value>
</Value>
<Value name="17">
<Value>codeSearch</Value>
</Value>
<Value name="18">
<Value>validateCode</Value>
</Value>
<Value name="19">
<Value>translation</Value>
</Value>
<Value name="20">
<Value>closure</Value>
</Value>
</Data>
<Data name="codeSystem">
<Attribute>codeSystem</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.TerminologyCapabilities.codeSystem"</Subscript>
</Data>
<Data name="contact">
<Attribute>contact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.TerminologyCapabilities.contact"</Subscript>
</Data>
<Data name="jurisdiction">
<Attribute>jurisdiction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.TerminologyCapabilities.jurisdiction"</Subscript>
</Data>
<Data name="useContext">
<Attribute>useContext</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.TerminologyCapabilities.useContext"</Subscript>
</Data>
<DefaultData>TerminologyCapabilitiesDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
