/// Groups and questions.
Class HS.FHIR.vR4.Model.Element.QuestionnaireResponse.item Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
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
Property answer As List Of HS.FHIR.vR4.Model.Element.QuestionnaireResponse.item.answer(XMLNAME = "answer", XMLPROJECTION = "ELEMENT");

/// QuestionnaireResponse:item
/// <p>
/// Nested questionnaire response items.
Property item As List Of HS.FHIR.vR4.Model.Element.QuestionnaireResponse.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "QuestionnaireResponse.item";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "QuestionnaireResponse.item";

}
