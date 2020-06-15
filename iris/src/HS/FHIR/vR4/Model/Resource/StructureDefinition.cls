/// Structural Definition.
Class HS.FHIR.vR4.Model.Resource.StructureDefinition Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Canonical identifier for this structure definition, 
/// represented as a URI (globally unique)
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Identifier
/// <p>
/// Additional identifier for the structure definition.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Business version of the structure definition.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this structure definition (computer friendly)
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Name for this structure definition (human friendly)
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
/// Natural language description of the structure definition.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As List Of HS.FHIR.vR4.Model.Datatype.UsageContext(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for structure definition (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Why this structure definition is defined.
Property purpose As %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Use and/or publishing restrictions.
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");

/// Coding
/// <p>
/// Assist with indexing and finding.
/// <p>
/// definition-use is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in definition-use, 
/// you may formally EXTEND definition-use to add codes to it.
Property keyword As List Of HS.FHIR.vR4.Model.Datatype.Coding(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "keyword", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// FHIR Version this StructureDefinition targets.
/// <p>
/// FHIR-version|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend FHIR-version|4.0.1 and you may NOT use codes from other ValueSets.
Property fhirVersion As %String(MAXLEN = 1000000, XMLNAME = "fhirVersion", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// External specification that the content is mapped to.
Property mapping As List Of HS.FHIR.vR4.Model.Element.StructureDefinition.mapping(XMLNAME = "mapping", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// primitive-type | complex-type | resource | logical
/// <p>
/// structure-definition-kind|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend structure-definition-kind|4.0.1 and you may NOT use codes from other ValueSets.
Property kind As %String(MAXLEN = 1000000, XMLNAME = "kind", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// Whether the structure is abstract.
Property abstract As %Boolean(XMLNAME = "abstract", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// BackboneElement
/// <p>
/// If an extension, 
/// where it can be used in instances.
Property context As List Of HS.FHIR.vR4.Model.Element.StructureDefinition.context(XMLNAME = "context", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// FHIRPath invariants - when the extension can be used.
Property contextInvariant As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "contextInvariant", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Type defined or constrained by this structure.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// canonical
/// <p>
/// Definition that this type is constrained/specialized from.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property baseDefinition As %String(MAXLEN = 1000000, XMLNAME = "baseDefinition", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// specialization | constraint - How relates to base definition
/// <p>
/// type-derivation-rule|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend type-derivation-rule|4.0.1 and you may NOT use codes from other ValueSets.
Property derivation As %String(MAXLEN = 1000000, XMLNAME = "derivation", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Snapshot view of the structure.
Property snapshot As HS.FHIR.vR4.Model.Element.StructureDefinition.snapshot(XMLNAME = "snapshot", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Differential view of the structure.
Property differential As HS.FHIR.vR4.Model.Element.StructureDefinition.differential(XMLNAME = "differential", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "StructureDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "StructureDefinition";

}
