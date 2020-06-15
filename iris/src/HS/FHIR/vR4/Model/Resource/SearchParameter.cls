/// Search parameter for a resource.
Class HS.FHIR.vR4.Model.Resource.SearchParameter Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Canonical identifier for this search parameter, 
/// represented as a URI (globally unique)
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Business version of the search parameter.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this search parameter (computer friendly)
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// canonical
/// <p>
/// Original definition for the search parameter.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property derivedFrom As %String(MAXLEN = 1000000, XMLNAME = "derivedFrom", XMLPROJECTION = "ATTRIBUTE");

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
/// Natural language description of the search parameter.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As List Of HS.FHIR.vR4.Model.Datatype.UsageContext(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for search parameter (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Why this search parameter is defined.
Property purpose As %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Code used in URL.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// The resource type(s) this search parameter applies to.
/// <p>
/// resource-types|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend resource-types|4.0.1 and you may NOT use codes from other ValueSets.
Property base As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "base", XMLPROJECTION = "ELEMENT") [ Required ];

/// code
/// <p>
/// number | date | string | token | reference | composite | quantity | uri | special
/// <p>
/// search-param-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend search-param-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// FHIRPath expression that extracts the values.
Property expression As %String(MAXLEN = 1000000, XMLNAME = "expression", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// XPath that extracts the values.
Property xpath As %String(MAXLEN = 1000000, XMLNAME = "xpath", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// normal | phonetic | nearby | distance | other
/// <p>
/// search-xpath-usage|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend search-xpath-usage|4.0.1 and you may NOT use codes from other ValueSets.
Property xpathUsage As %String(MAXLEN = 1000000, XMLNAME = "xpathUsage", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Types of resource (if a resource reference)
/// <p>
/// resource-types|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend resource-types|4.0.1 and you may NOT use codes from other ValueSets.
Property target As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "target", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Allow multiple values per parameter (or)
Property multipleOr As %Boolean(XMLNAME = "multipleOr", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Allow multiple parameters (and)
Property multipleAnd As %Boolean(XMLNAME = "multipleAnd", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// eq | ne | gt | lt | ge | le | sa | eb | ap
/// <p>
/// search-comparator|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend search-comparator|4.0.1 and you may NOT use codes from other ValueSets.
Property comparator As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "comparator", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// missing | exact | contains | not | text | in | not-in | below | above | type | identifier | ofType
/// <p>
/// search-modifier-code|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend search-modifier-code|4.0.1 and you may NOT use codes from other ValueSets.
Property modifier As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "modifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Chained names supported.
Property chain As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "chain", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// For Composite resources to define the parts.
Property component As List Of HS.FHIR.vR4.Model.Element.SearchParameter.component(XMLNAME = "component", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SearchParameter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SearchParameter";

}
