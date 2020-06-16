/// Permitted answer.
Class HS.FHIR.Storage.vR4.Model.Element.Questionnaire.item.answerOption Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Coding
/// <p>
/// Answer value.
/// <p>
/// any FHIR4 code may be used; 
/// questionnaire-answers shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property valueCoding As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "valueCoding", XMLPROJECTION = "ELEMENT") [ Required ];

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
Property valueReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "valueReference", XMLPROJECTION = "ELEMENT") [ Required ];

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

Storage Default
{
<Data name="answerOptionDefaultData">
<Subscript>"answerOption"</Subscript>
<Value name="1">
<Value>valueCoding</Value>
</Value>
<Value name="2">
<Value>valueDate</Value>
</Value>
<Value name="3">
<Value>valueInteger</Value>
</Value>
<Value name="4">
<Value>valueReference</Value>
</Value>
<Value name="5">
<Value>valueString</Value>
</Value>
<Value name="6">
<Value>valueTime</Value>
</Value>
<Value name="7">
<Value>initialSelected</Value>
</Value>
</Data>
<DefaultData>answerOptionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
