/// References to this parameter.
Class HS.FHIR.vR4.Model.Element.OperationDefinition.parameter.referencedFrom Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Referencing parameter.
Property source As %String(MAXLEN = 1000000, XMLNAME = "source", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Element id of reference.
Property sourceId As %String(MAXLEN = 1000000, XMLNAME = "sourceId", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "OperationDefinition.parameter.referencedFrom";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "OperationDefinition.parameter.referencedFrom";

}
