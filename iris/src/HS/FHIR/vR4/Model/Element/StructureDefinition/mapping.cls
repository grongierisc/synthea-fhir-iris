/// External specification that the content is mapped to.
Class HS.FHIR.vR4.Model.Element.StructureDefinition.mapping Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// id
/// <p>
/// Internal id when this mapping is used.
Property identity As %String(MAXLEN = 1000000, XMLNAME = "identity", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// uri
/// <p>
/// Identifies what this mapping refers to.
Property uri As %String(MAXLEN = 1000000, XMLNAME = "uri", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Names what this mapping refers to.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Versions, 
/// Issues, 
/// Scope limitations etc.
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "StructureDefinition.mapping";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "StructureDefinition.mapping";

}
