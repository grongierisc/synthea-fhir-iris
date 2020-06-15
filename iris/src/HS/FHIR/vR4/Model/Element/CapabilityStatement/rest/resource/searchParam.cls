/// Search parameters supported by implementation.
Class HS.FHIR.vR4.Model.Element.CapabilityStatement.rest.resource.searchParam Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Name of search parameter.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// canonical
/// <p>
/// Source of definition for parameter.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property definition As %String(MAXLEN = 1000000, XMLNAME = "definition", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// number | date | string | token | reference | composite | quantity | uri | special
/// <p>
/// search-param-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend search-param-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// markdown
/// <p>
/// Server-specific usage.
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CapabilityStatement.rest.resource.searchParam";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CapabilityStatement.rest.resource.searchParam";

}
