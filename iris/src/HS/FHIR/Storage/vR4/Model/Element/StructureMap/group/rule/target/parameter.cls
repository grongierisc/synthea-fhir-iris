/// Parameters to the transform.
Class HS.FHIR.Storage.vR4.Model.Element.StructureMap.group.rule.target.parameter Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// Parameter value - variable or literal.
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// decimal
/// <p>
/// Parameter value - variable or literal.
Property valueDecimal As %Decimal(XMLNAME = "valueDecimal", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// id
/// <p>
/// Parameter value - variable or literal.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueId As %String(MAXLEN = 1000000, XMLNAME = "valueId", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// integer
/// <p>
/// Parameter value - variable or literal.
Property valueInteger As %Integer(XMLNAME = "valueInteger", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Parameter value - variable or literal.
Property valueString As %String(MAXLEN = 1000000, XMLNAME = "valueString", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "StructureMap.group.rule.target.parameter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "StructureMap.group.rule.target.parameter";

Storage Default
{
<Data name="parameterDefaultData">
<Subscript>"parameter"</Subscript>
<Value name="1">
<Value>valueBoolean</Value>
</Value>
<Value name="2">
<Value>valueDecimal</Value>
</Value>
<Value name="3">
<Value>valueId</Value>
</Value>
<Value name="4">
<Value>valueInteger</Value>
</Value>
<Value name="5">
<Value>valueString</Value>
</Value>
</Data>
<DefaultData>parameterDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
