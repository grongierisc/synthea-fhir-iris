/// A map from one set of concepts to one or more other concepts.
Class HS.FHIR.Storage.vR4.Model.Resource.ConceptMap Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Canonical identifier for this concept map, 
/// represented as a URI (globally unique)
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Additional identifier for the concept map.
Property identifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Business version of the concept map.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this concept map (computer friendly)
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this concept map (human friendly)
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
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

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
/// Natural language description of the concept map.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As array Of HS.FHIR.Storage.vR4.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for concept map (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Why this concept map is defined.
Property purpose As %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Use and/or publishing restrictions.
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// The source value set that contains the concepts that are being mapped.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property sourceCanonical As %String(MAXLEN = 1000000, XMLNAME = "sourceCanonical", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// The source value set that contains the concepts that are being mapped.
Property sourceUri As %String(MAXLEN = 1000000, XMLNAME = "sourceUri", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// The target value set which provides context for the mappings.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property targetCanonical As %String(MAXLEN = 1000000, XMLNAME = "targetCanonical", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// The target value set which provides context for the mappings.
Property targetUri As %String(MAXLEN = 1000000, XMLNAME = "targetUri", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Same source and target systems.
Property group As array Of HS.FHIR.Storage.vR4.Model.Element.ConceptMap.group(XMLNAME = "group", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ConceptMap";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ConceptMap";

Storage Default
{
<Data name="ConceptMapDefaultData">
<Subscript>"ConceptMap"</Subscript>
<Value name="1">
<Value>url</Value>
</Value>
<Value name="2">
<Value>identifier</Value>
</Value>
<Value name="3">
<Value>version</Value>
</Value>
<Value name="4">
<Value>name</Value>
</Value>
<Value name="5">
<Value>title</Value>
</Value>
<Value name="6">
<Value>status</Value>
</Value>
<Value name="7">
<Value>experimental</Value>
</Value>
<Value name="8">
<Value>date</Value>
</Value>
<Value name="9">
<Value>publisher</Value>
</Value>
<Value name="10">
<Value>description</Value>
</Value>
<Value name="11">
<Value>purpose</Value>
</Value>
<Value name="12">
<Value>copyright</Value>
</Value>
<Value name="13">
<Value>sourceCanonical</Value>
</Value>
<Value name="14">
<Value>sourceUri</Value>
</Value>
<Value name="15">
<Value>targetCanonical</Value>
</Value>
<Value name="16">
<Value>targetUri</Value>
</Value>
</Data>
<Data name="contact">
<Attribute>contact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ConceptMap.contact"</Subscript>
</Data>
<Data name="group">
<Attribute>group</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ConceptMap.group"</Subscript>
</Data>
<Data name="jurisdiction">
<Attribute>jurisdiction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ConceptMap.jurisdiction"</Subscript>
</Data>
<Data name="useContext">
<Attribute>useContext</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ConceptMap.useContext"</Subscript>
</Data>
<DefaultData>ConceptMapDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
