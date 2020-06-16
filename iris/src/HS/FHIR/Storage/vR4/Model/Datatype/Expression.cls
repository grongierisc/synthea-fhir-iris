/// An expression that can be used to generate a value.
Class HS.FHIR.Storage.vR4.Model.Datatype.Expression Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Natural language description of the condition.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// id
/// <p>
/// Short name assigned to expression for reuse.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// text/cql | text/fhirpath | application/x-fhir-query | etc.
/// <p>
/// expression-language is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in expression-language, 
/// you may formally EXTEND expression-language to add codes to it.
Property language As %String(MAXLEN = 1000000, XMLNAME = "language", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Expression in specified language.
Property expression As %String(MAXLEN = 1000000, XMLNAME = "expression", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Where the expression is found.
Property reference As %String(MAXLEN = 1000000, XMLNAME = "reference", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Expression";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Expression";

Storage Default
{
<Data name="ExpressionDefaultData">
<Subscript>"Expression"</Subscript>
<Value name="1">
<Value>description</Value>
</Value>
<Value name="2">
<Value>name</Value>
</Value>
<Value name="3">
<Value>language</Value>
</Value>
<Value name="4">
<Value>expression</Value>
</Value>
<Value name="5">
<Value>reference</Value>
</Value>
</Data>
<DefaultData>ExpressionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
