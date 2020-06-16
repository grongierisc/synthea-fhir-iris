/// Only allow data when.
Class HS.FHIR.Storage.vR4.Model.Element.Questionnaire.item.enableWhen Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Question that determines whether item is enabled.
Property question As %String(MAXLEN = 1000000, XMLNAME = "question", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// exists | = | != | > | < | >= | <=
/// <p>
/// questionnaire-enable-operator|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend questionnaire-enable-operator|4.0.1 and you may NOT use codes from other ValueSets.
Property operator As %String(MAXLEN = 1000000, XMLNAME = "operator", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// Value for question comparison based on operator.
Property answerBoolean As %Boolean(XMLNAME = "answerBoolean", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Coding
/// <p>
/// Value for question comparison based on operator.
/// <p>
/// any FHIR4 code may be used; 
/// questionnaire-answers shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property answerCoding As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "answerCoding", XMLPROJECTION = "ELEMENT") [ Required ];

/// date
/// <p>
/// Value for question comparison based on operator.
Property answerDate As %String(MAXLEN = 1000000, XMLNAME = "answerDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// dateTime
/// <p>
/// Value for question comparison based on operator.
Property answerDateTime As %String(MAXLEN = 1000000, XMLNAME = "answerDateTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// decimal
/// <p>
/// Value for question comparison based on operator.
Property answerDecimal As %Decimal(XMLNAME = "answerDecimal", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// integer
/// <p>
/// Value for question comparison based on operator.
Property answerInteger As %Integer(XMLNAME = "answerInteger", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Quantity
/// <p>
/// Value for question comparison based on operator.
Property answerQuantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "answerQuantity", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Value for question comparison based on operator.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property answerReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "answerReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Value for question comparison based on operator.
Property answerString As %String(MAXLEN = 1000000, XMLNAME = "answerString", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// time
/// <p>
/// Value for question comparison based on operator.
Property answerTime As %String(MAXLEN = 1000000, XMLNAME = "answerTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Questionnaire.item.enableWhen";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Questionnaire.item.enableWhen";

Storage Default
{
<Data name="enableWhenDefaultData">
<Subscript>"enableWhen"</Subscript>
<Value name="1">
<Value>question</Value>
</Value>
<Value name="2">
<Value>operator</Value>
</Value>
<Value name="3">
<Value>answerBoolean</Value>
</Value>
<Value name="4">
<Value>answerCoding</Value>
</Value>
<Value name="5">
<Value>answerDate</Value>
</Value>
<Value name="6">
<Value>answerDateTime</Value>
</Value>
<Value name="7">
<Value>answerDecimal</Value>
</Value>
<Value name="8">
<Value>answerInteger</Value>
</Value>
<Value name="9">
<Value>answerQuantity</Value>
</Value>
<Value name="10">
<Value>answerReference</Value>
</Value>
<Value name="11">
<Value>answerString</Value>
</Value>
<Value name="12">
<Value>answerTime</Value>
</Value>
</Data>
<DefaultData>enableWhenDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
