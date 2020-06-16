/// The response(s) to the question.
Class HS.FHIR.Storage.vR4.Model.Element.QuestionnaireResponse.item.answer Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Attachment
/// <p>
/// Single-valued answer to the question.
Property valueAttachment As HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "valueAttachment", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Single-valued answer to the question.
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE");

/// Coding
/// <p>
/// Single-valued answer to the question.
/// <p>
/// any FHIR4 code may be used; 
/// questionnaire-answers shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property valueCoding As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "valueCoding", XMLPROJECTION = "ELEMENT");

/// date
/// <p>
/// Single-valued answer to the question.
Property valueDate As %String(MAXLEN = 1000000, XMLNAME = "valueDate", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Single-valued answer to the question.
Property valueDateTime As %String(MAXLEN = 1000000, XMLNAME = "valueDateTime", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Single-valued answer to the question.
Property valueDecimal As %Decimal(XMLNAME = "valueDecimal", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Single-valued answer to the question.
Property valueInteger As %Integer(XMLNAME = "valueInteger", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// Single-valued answer to the question.
Property valueQuantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Single-valued answer to the question.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property valueReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "valueReference", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Single-valued answer to the question.
Property valueString As %String(MAXLEN = 1000000, XMLNAME = "valueString", XMLPROJECTION = "ATTRIBUTE");

/// time
/// <p>
/// Single-valued answer to the question.
Property valueTime As %String(MAXLEN = 1000000, XMLNAME = "valueTime", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Single-valued answer to the question.
Property valueUri As %String(MAXLEN = 1000000, XMLNAME = "valueUri", XMLPROJECTION = "ATTRIBUTE");

/// QuestionnaireResponse:item
/// <p>
/// Nested groups and questions.
Property item As array Of HS.FHIR.Storage.vR4.Model.Element.QuestionnaireResponse.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "QuestionnaireResponse.item.answer";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "QuestionnaireResponse.item.answer";

Storage Default
{
<Data name="answerDefaultData">
<Subscript>"answer"</Subscript>
<Value name="1">
<Value>valueAttachment</Value>
</Value>
<Value name="2">
<Value>valueBoolean</Value>
</Value>
<Value name="3">
<Value>valueCoding</Value>
</Value>
<Value name="4">
<Value>valueDate</Value>
</Value>
<Value name="5">
<Value>valueDateTime</Value>
</Value>
<Value name="6">
<Value>valueDecimal</Value>
</Value>
<Value name="7">
<Value>valueInteger</Value>
</Value>
<Value name="8">
<Value>valueQuantity</Value>
</Value>
<Value name="9">
<Value>valueReference</Value>
</Value>
<Value name="10">
<Value>valueString</Value>
</Value>
<Value name="11">
<Value>valueTime</Value>
</Value>
<Value name="12">
<Value>valueUri</Value>
</Value>
</Data>
<Data name="item">
<Attribute>item</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.QuestionnaireResponse.item.answer.item"</Subscript>
</Data>
<DefaultData>answerDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
