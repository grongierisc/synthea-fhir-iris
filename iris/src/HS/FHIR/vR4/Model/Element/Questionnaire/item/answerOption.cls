/// Permitted answer.
Class HS.FHIR.vR4.Model.Element.Questionnaire.item.answerOption Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Coding
/// <p>
/// Answer value.
/// <p>
/// any FHIR4 code may be used; 
/// questionnaire-answers shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property valueCoding As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "valueCoding", XMLPROJECTION = "ELEMENT") [ Required ];

/// date
/// <p>
/// Answer value.
Property valueDate As %String(MAXLEN = 1000000, XMLNAME = "valueDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// integer
/// <p>
/// Answer value.
Property valueInteger As %Integer(XMLNAME = "valueInteger", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Answer value.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property valueReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "valueReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Answer value.
Property valueString As %String(MAXLEN = 1000000, XMLNAME = "valueString", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// time
/// <p>
/// Answer value.
Property valueTime As %String(MAXLEN = 1000000, XMLNAME = "valueTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// Whether option is selected by default.
Property initialSelected As %Boolean(XMLNAME = "initialSelected", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Questionnaire.item.answerOption";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Questionnaire.item.answerOption";

}
