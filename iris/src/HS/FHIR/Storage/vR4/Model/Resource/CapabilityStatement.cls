/// A statement of system capabilities.
Class HS.FHIR.Storage.vR4.Model.Resource.CapabilityStatement Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Canonical identifier for this capability statement, 
/// represented as a URI (globally unique)
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Business version of the capability statement.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this capability statement (computer friendly)
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this capability statement (human friendly)
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
/// Natural language description of the capability statement.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As array Of HS.FHIR.Storage.vR4.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for capability statement (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Why this capability statement is defined.
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

/// canonical
/// <p>
/// Canonical URL of another capability statement this implements.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property instantiates As array Of %String(MAXLEN = 1000000, XMLNAME = "instantiates", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Canonical URL of another capability statement this adds to.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property imports As array Of %String(MAXLEN = 1000000, XMLNAME = "imports", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Software that is covered by this capability statement.
Property software As HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.software(XMLNAME = "software", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// If this describes a specific instance.
Property implementation As HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.implementation(XMLNAME = "implementation", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// FHIR Version the system supports.
/// <p>
/// FHIR-version|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend FHIR-version|4.0.1 and you may NOT use codes from other ValueSets.
Property fhirVersion As %String(MAXLEN = 1000000, XMLNAME = "fhirVersion", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// formats supported (xml | json | ttl | mime type)
/// <p>
/// mimetypes|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend mimetypes|4.0.1 and you may NOT use codes from other ValueSets.
Property format As array Of %String(MAXLEN = 1000000, XMLNAME = "format", XMLPROJECTION = "ELEMENT") [ Required ];

/// code
/// <p>
/// Patch formats supported.
/// <p>
/// mimetypes|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend mimetypes|4.0.1 and you may NOT use codes from other ValueSets.
Property patchFormat As array Of %String(MAXLEN = 1000000, XMLNAME = "patchFormat", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Implementation guides supported.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property implementationGuide As array Of %String(MAXLEN = 1000000, XMLNAME = "implementationGuide", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// If the endpoint is a RESTful one.
Property rest As array Of HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.rest(XMLNAME = "rest", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// If messaging is supported.
Property messaging As array Of HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.messaging(XMLNAME = "messaging", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Document definition.
Property document As array Of HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.document(XMLNAME = "document", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CapabilityStatement";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CapabilityStatement";

Storage Default
{
<Data name="CapabilityStatementDefaultData">
<Subscript>"CapabilityStatement"</Subscript>
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
<Value>fhirVersion</Value>
</Value>
</Data>
<Data name="contact">
<Attribute>contact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CapabilityStatement.contact"</Subscript>
</Data>
<Data name="document">
<Attribute>document</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CapabilityStatement.document"</Subscript>
</Data>
<Data name="format">
<Attribute>format</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CapabilityStatement.format"</Subscript>
</Data>
<Data name="implementationGuide">
<Attribute>implementationGuide</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CapabilityStatement.implementationGuide"</Subscript>
</Data>
<Data name="imports">
<Attribute>imports</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CapabilityStatement.imports"</Subscript>
</Data>
<Data name="instantiates">
<Attribute>instantiates</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CapabilityStatement.instantiates"</Subscript>
</Data>
<Data name="jurisdiction">
<Attribute>jurisdiction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CapabilityStatement.jurisdiction"</Subscript>
</Data>
<Data name="messaging">
<Attribute>messaging</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CapabilityStatement.messaging"</Subscript>
</Data>
<Data name="patchFormat">
<Attribute>patchFormat</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CapabilityStatement.patchFormat"</Subscript>
</Data>
<Data name="rest">
<Attribute>rest</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CapabilityStatement.rest"</Subscript>
</Data>
<Data name="useContext">
<Attribute>useContext</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CapabilityStatement.useContext"</Subscript>
</Data>
<DefaultData>CapabilityStatementDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
