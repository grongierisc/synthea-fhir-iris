/// The response(s) to the question.
Class HS.FHIR.vR4.Model.Element.QuestionnaireResponse.item.answer Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Attachment
/// <p>
/// Single-valued answer to the question.
Property valueAttachment As HS.FHIR.vR4.Model.Datatype.Attachment(XMLNAME = "valueAttachment", XMLPROJECTION = "ELEMENT");

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
Property valueCoding As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "valueCoding", XMLPROJECTION = "ELEMENT");

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
Property valueQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Single-valued answer to the question.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property valueReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "valueReference", XMLPROJECTION = "ELEMENT");

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
Property item As List Of HS.FHIR.vR4.Model.Element.QuestionnaireResponse.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "QuestionnaireResponse.item.answer";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "QuestionnaireResponse.item.answer";

}
