/// A duration of time during which an organism (or a process) has existed.
Class HS.FHIR.Storage.vR4.Model.Datatype.Age Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// decimal
/// <p>
/// Numerical value (with implicit precision)
Property value As %Decimal(XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// < | <= | >= | > - how to understand the value
/// <p>
/// quantity-comparator|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend quantity-comparator|4.0.1 and you may NOT use codes from other ValueSets.
Property comparator As %String(MAXLEN = 1000000, XMLNAME = "comparator", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Unit representation.
Property unit As %String(MAXLEN = 1000000, XMLNAME = "unit", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// System that defines coded unit form.
Property system As %String(MAXLEN = 1000000, XMLNAME = "system", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Coded form of the unit.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Age";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Age";

Storage Default
{
<Data name="AgeDefaultData">
<Subscript>"Age"</Subscript>
<Value name="1">
<Value>value</Value>
</Value>
<Value name="2">
<Value>comparator</Value>
</Value>
<Value name="3">
<Value>unit</Value>
</Value>
<Value name="4">
<Value>system</Value>
</Value>
<Value name="5">
<Value>code</Value>
</Value>
</Data>
<DefaultData>AgeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
