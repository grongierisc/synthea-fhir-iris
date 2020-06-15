/// Initial value(s) when item is first rendered.
Class HS.FHIR.vR4.Model.Element.Questionnaire.item.initial Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Attachment
/// <p>
/// Actual value for initializing the question.
Property valueAttachment As HS.FHIR.vR4.Model.Datatype.Attachment(XMLNAME = "valueAttachment", XMLPROJECTION = "ELEMENT") [ Required ];

/// boolean
/// <p>
/// Actual value for initializing the question.
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Coding
/// <p>
/// Actual value for initializing the question.
/// <p>
/// any FHIR4 code may be used; 
/// questionnaire-answers shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property valueCoding As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "valueCoding", XMLPROJECTION = "ELEMENT") [ Required ];

/// date
/// <p>
/// Actual value for initializing the question.
Property valueDate As %String(MAXLEN = 1000000, XMLNAME = "valueDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// dateTime
/// <p>
/// Actual value for initializing the question.
Property valueDateTime As %String(MAXLEN = 1000000, XMLNAME = "valueDateTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// decimal
/// <p>
/// Actual value for initializing the question.
Property valueDecimal As %Decimal(XMLNAME = "valueDecimal", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// integer
/// <p>
/// Actual value for initializing the question.
Property valueInteger As %Integer(XMLNAME = "valueInteger", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Quantity
/// <p>
/// Actual value for initializing the question.
Property valueQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Actual value for initializing the question.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property valueReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "valueReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Actual value for initializing the question.
Property valueString As %String(MAXLEN = 1000000, XMLNAME = "valueString", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// time
/// <p>
/// Actual value for initializing the question.
Property valueTime As %String(MAXLEN = 1000000, XMLNAME = "valueTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// uri
/// <p>
/// Actual value for initializing the question.
Property valueUri As %String(MAXLEN = 1000000, XMLNAME = "valueUri", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Questionnaire.item.initial";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Questionnaire.item.initial";

}
