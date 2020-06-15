/// Parameter that controlled the expansion process.
Class HS.FHIR.vR4.Model.Element.ValueSet.expansion.parameter Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Name as assigned by the client or server.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// Value of the named parameter.
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Value of the named parameter.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCode As %String(MAXLEN = 1000000, XMLNAME = "valueCode", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Value of the named parameter.
Property valueDateTime As %String(MAXLEN = 1000000, XMLNAME = "valueDateTime", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Value of the named parameter.
Property valueDecimal As %Decimal(XMLNAME = "valueDecimal", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Value of the named parameter.
Property valueInteger As %Integer(XMLNAME = "valueInteger", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Value of the named parameter.
Property valueString As %String(MAXLEN = 1000000, XMLNAME = "valueString", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Value of the named parameter.
Property valueUri As %String(MAXLEN = 1000000, XMLNAME = "valueUri", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ValueSet.expansion.parameter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ValueSet.expansion.parameter";

}
