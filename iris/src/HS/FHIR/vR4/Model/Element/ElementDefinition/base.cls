/// Base definition information for tools.
Class HS.FHIR.vR4.Model.Element.ElementDefinition.base Extends (%Persistent,HS.FHIR.vR4.Model.Base.Element) [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Path that identifies the base element.
Property path As %String(MAXLEN = 1000000, XMLNAME = "path", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// unsignedInt
/// <p>
/// Min cardinality of the base element.
Property min As %Integer(XMLNAME = "min", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Max cardinality of the base element.
Property max As %String(MAXLEN = 1000000, XMLNAME = "max", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "base";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "base";

}
