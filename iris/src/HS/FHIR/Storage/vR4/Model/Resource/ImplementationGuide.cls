/// A set of rules about how FHIR is used.
Class HS.FHIR.Storage.vR4.Model.Resource.ImplementationGuide Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Canonical identifier for this implementation guide, 
/// represented as a URI (globally unique)
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Business version of the implementation guide.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this implementation guide (computer friendly)
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Name for this implementation guide (human friendly)
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
/// Natural language description of the implementation guide.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As array Of HS.FHIR.Storage.vR4.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for implementation guide (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Use and/or publishing restrictions.
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");

/// id
/// <p>
/// NPM Package name for IG.
Property packageId As %String(MAXLEN = 1000000, XMLNAME = "packageId", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// SPDX license code for this IG (or not-open-source)
/// <p>
/// spdx-license|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend spdx-license|4.0.1 and you may NOT use codes from other ValueSets.
Property license As %String(MAXLEN = 1000000, XMLNAME = "license", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// FHIR Version(s) this Implementation Guide targets.
/// <p>
/// FHIR-version|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend FHIR-version|4.0.1 and you may NOT use codes from other ValueSets.
Property fhirVersion As array Of %String(MAXLEN = 1000000, XMLNAME = "fhirVersion", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Another Implementation guide this depends on.
Property dependsOn As array Of HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.dependsOn(XMLNAME = "dependsOn", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Profiles that apply globally.
Property global As array Of HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.global(XMLNAME = "global", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Information needed to build the IG.
Property definition As HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.definition(XMLNAME = "definition", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Information about an assembled IG.
Property manifest As HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.manifest(XMLNAME = "manifest", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide";

Storage Default
{
<Data name="ImplementationGuideDefaultData">
<Subscript>"ImplementationGuide"</Subscript>
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
<Value>copyright</Value>
</Value>
<Value name="11">
<Value>packageId</Value>
</Value>
<Value name="12">
<Value>license</Value>
</Value>
<Value name="13">
<Value>definition</Value>
</Value>
<Value name="14">
<Value>manifest</Value>
</Value>
</Data>
<Data name="contact">
<Attribute>contact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ImplementationGuide.contact"</Subscript>
</Data>
<Data name="dependsOn">
<Attribute>dependsOn</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ImplementationGuide.dependsOn"</Subscript>
</Data>
<Data name="fhirVersion">
<Attribute>fhirVersion</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ImplementationGuide.fhirVersion"</Subscript>
</Data>
<Data name="global">
<Attribute>global</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ImplementationGuide.global"</Subscript>
</Data>
<Data name="jurisdiction">
<Attribute>jurisdiction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ImplementationGuide.jurisdiction"</Subscript>
</Data>
<Data name="useContext">
<Attribute>useContext</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ImplementationGuide.useContext"</Subscript>
</Data>
<DefaultData>ImplementationGuideDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
