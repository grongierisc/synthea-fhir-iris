/// Condition that must evaluate to true.
Class HS.FHIR.Storage.vR4.Model.Element.ElementDefinition.constraint Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// id
/// <p>
/// Target of 'condition' reference above.
Property key As %String(MAXLEN = 1000000, XMLNAME = "key", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Why this constraint is necessary or appropriate.
Property requirements As %String(MAXLEN = 1000000, XMLNAME = "requirements", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// error | warning
/// <p>
/// constraint-severity|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend constraint-severity|4.0.1 and you may NOT use codes from other ValueSets.
Property severity As %String(MAXLEN = 1000000, XMLNAME = "severity", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Human description of constraint.
Property human As %String(MAXLEN = 1000000, XMLNAME = "human", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// FHIRPath expression of constraint.
Property expression As %String(MAXLEN = 1000000, XMLNAME = "expression", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// XPath expression of constraint.
Property xpath As %String(MAXLEN = 1000000, XMLNAME = "xpath", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Reference to original source of constraint.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property source As %String(MAXLEN = 1000000, XMLNAME = "source", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "constraint";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "constraint";

Storage Default
{
<Data name="constraintDefaultData">
<Subscript>"constraint"</Subscript>
<Value name="1">
<Value>key</Value>
</Value>
<Value name="2">
<Value>requirements</Value>
</Value>
<Value name="3">
<Value>severity</Value>
</Value>
<Value name="4">
<Value>human</Value>
</Value>
<Value name="5">
<Value>expression</Value>
</Value>
<Value name="6">
<Value>xpath</Value>
</Value>
<Value name="7">
<Value>source</Value>
</Value>
</Data>
<DefaultData>constraintDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
