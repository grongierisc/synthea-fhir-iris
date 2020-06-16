/// ValueSet details if this is coded.
Class HS.FHIR.Storage.vR4.Model.Element.OperationDefinition.parameter.binding Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// required | extensible | preferred | example
/// <p>
/// binding-strength|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend binding-strength|4.0.1 and you may NOT use codes from other ValueSets.
Property strength As %String(MAXLEN = 1000000, XMLNAME = "strength", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// canonical
/// <p>
/// Source of value set.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueSet As %String(MAXLEN = 1000000, XMLNAME = "valueSet", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "OperationDefinition.parameter.binding";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "OperationDefinition.parameter.binding";

Storage Default
{
<Data name="bindingDefaultData">
<Subscript>"binding"</Subscript>
<Value name="1">
<Value>strength</Value>
</Value>
<Value name="2">
<Value>valueSet</Value>
</Value>
</Data>
<DefaultData>bindingDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
