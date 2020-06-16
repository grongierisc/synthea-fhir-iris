/// ValueSet details if this is coded.
Class HS.FHIR.Storage.vR4.Model.Element.ElementDefinition.binding Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// code
/// <p>
/// required | extensible | preferred | example
/// <p>
/// binding-strength|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend binding-strength|4.0.1 and you may NOT use codes from other ValueSets.
Property strength As %String(MAXLEN = 1000000, XMLNAME = "strength", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Human explanation of the value set.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Source of value set.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueSet As %String(MAXLEN = 1000000, XMLNAME = "valueSet", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "binding";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "binding";

Storage Default
{
<Data name="bindingDefaultData">
<Subscript>"binding"</Subscript>
<Value name="1">
<Value>strength</Value>
</Value>
<Value name="2">
<Value>description</Value>
</Value>
<Value name="3">
<Value>valueSet</Value>
</Value>
</Data>
<DefaultData>bindingDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
