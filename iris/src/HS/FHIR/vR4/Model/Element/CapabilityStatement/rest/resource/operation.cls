/// Definition of a resource operation.
Class HS.FHIR.vR4.Model.Element.CapabilityStatement.rest.resource.operation Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Name by which the operation/query is invoked.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// canonical
/// <p>
/// The defined operation/query.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property definition As %String(MAXLEN = 1000000, XMLNAME = "definition", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// markdown
/// <p>
/// Specific details about operation behavior.
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CapabilityStatement.rest.resource.operation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CapabilityStatement.rest.resource.operation";

}
