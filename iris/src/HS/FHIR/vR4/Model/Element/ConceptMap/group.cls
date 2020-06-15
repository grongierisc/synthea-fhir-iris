/// Same source and target systems.
Class HS.FHIR.vR4.Model.Element.ConceptMap.group Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Source system where concepts to be mapped are defined.
Property source As %String(MAXLEN = 1000000, XMLNAME = "source", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Specific version of the  code system.
Property sourceVersion As %String(MAXLEN = 1000000, XMLNAME = "sourceVersion", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Target system that the concepts are to be mapped to.
Property target As %String(MAXLEN = 1000000, XMLNAME = "target", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Specific version of the  code system.
Property targetVersion As %String(MAXLEN = 1000000, XMLNAME = "targetVersion", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Mappings for a concept from the source set.
Property element As List Of HS.FHIR.vR4.Model.Element.ConceptMap.group.element(XMLNAME = "element", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// What to do when there is no mapping for the source concept.
Property unmapped As HS.FHIR.vR4.Model.Element.ConceptMap.group.unmapped(XMLNAME = "unmapped", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ConceptMap.group";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ConceptMap.group";

}
