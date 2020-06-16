/// Groups and questions.
Class HS.FHIR.Storage.vR4.Model.Element.QuestionnaireResponse.item Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Pointer to specific item from Questionnaire.
Property linkId As %String(MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// uri
/// <p>
/// ElementDefinition - details for the item.
Property definition As %String(MAXLEN = 1000000, XMLNAME = "definition", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for group or question text.
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// The response(s) to the question.
Property answer As array Of HS.FHIR.Storage.vR4.Model.Element.QuestionnaireResponse.item.answer(XMLNAME = "answer", XMLPROJECTION = "ELEMENT");

/// QuestionnaireResponse:item
/// <p>
/// Nested questionnaire response items.
Property item As array Of HS.FHIR.Storage.vR4.Model.Element.QuestionnaireResponse.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "QuestionnaireResponse.item";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "QuestionnaireResponse.item";

Storage Default
{
<Data name="answer">
<Attribute>answer</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.QuestionnaireResponse.item.answer"</Subscript>
</Data>
<Data name="item">
<Attribute>item</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.QuestionnaireResponse.item.item"</Subscript>
</Data>
<Data name="itemDefaultData">
<Subscript>"item"</Subscript>
<Value name="1">
<Value>linkId</Value>
</Value>
<Value name="2">
<Value>definition</Value>
</Value>
<Value name="3">
<Value>text</Value>
</Value>
</Data>
<DefaultData>itemDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
