/// Human-readable summary of the resource (essential clinical and business information)
Class HS.FHIR.vR4.Model.Base.Narrative Extends (%Persistent,HS.FHIR.vR4.Model.Base.Element) [ Not ProcedureBlock ]
{

/// code
/// <p>
/// generated | extensions | additional | empty
/// <p>
/// narrative-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend narrative-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// xhtml
/// <p>
/// Limited xhtml content.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property div As %String(MAXLEN = 1000000, REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/1999/xhtml", XMLNAME = "div", XMLPROJECTION = "ELEMENT", XMLREF = 1) [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Narrative";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Narrative";

}
