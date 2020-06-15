/// What to do when there is no mapping for the source concept.
Class HS.FHIR.vR4.Model.Element.ConceptMap.group.unmapped Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// provided | fixed | other-map
/// <p>
/// conceptmap-unmapped-mode|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend conceptmap-unmapped-mode|4.0.1 and you may NOT use codes from other ValueSets.
Property mode As %String(MAXLEN = 1000000, XMLNAME = "mode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// Fixed code when mode = fixed.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Display for the code.
Property display As %String(MAXLEN = 1000000, XMLNAME = "display", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// canonical reference to an additional ConceptMap to use for mapping if the source concept is unmapped.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ConceptMap.group.unmapped";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ConceptMap.group.unmapped";

}
