/// A set of rules about how FHIR is used.
Class HS.FHIR.vR4.Model.Resource.ImplementationGuide Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
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
Property contact As List Of HS.FHIR.vR4.Model.Datatype.ContactDetail(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Natural language description of the implementation guide.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As List Of HS.FHIR.vR4.Model.Datatype.UsageContext(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for implementation guide (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

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
Property fhirVersion As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "fhirVersion", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Another Implementation guide this depends on.
Property dependsOn As List Of HS.FHIR.vR4.Model.Element.ImplementationGuide.dependsOn(XMLNAME = "dependsOn", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Profiles that apply globally.
Property global As List Of HS.FHIR.vR4.Model.Element.ImplementationGuide.global(XMLNAME = "global", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Information needed to build the IG.
Property definition As HS.FHIR.vR4.Model.Element.ImplementationGuide.definition(XMLNAME = "definition", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Information about an assembled IG.
Property manifest As HS.FHIR.vR4.Model.Element.ImplementationGuide.manifest(XMLNAME = "manifest", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide";

}
