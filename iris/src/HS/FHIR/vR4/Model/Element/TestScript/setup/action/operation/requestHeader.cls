/// Each operation can have one or more header elements.
Class HS.FHIR.vR4.Model.Element.TestScript.setup.action.operation.requestHeader Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// HTTP header field name.
Property field As %String(MAXLEN = 1000000, XMLNAME = "field", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// HTTP headerfield value.
Property value As %String(MAXLEN = 1000000, XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.setup.action.operation.requestHeader";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.setup.action.operation.requestHeader";

}
