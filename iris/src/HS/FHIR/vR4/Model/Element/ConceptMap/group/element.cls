/// Mappings for a concept from the source set.
Class HS.FHIR.vR4.Model.Element.ConceptMap.group.element Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// Identifies element being mapped.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Display for the code.
Property display As %String(MAXLEN = 1000000, XMLNAME = "display", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Concept in target system for element.
Property target As List Of HS.FHIR.vR4.Model.Element.ConceptMap.group.element.target(XMLNAME = "target", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ConceptMap.group.element";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ConceptMap.group.element";

}
