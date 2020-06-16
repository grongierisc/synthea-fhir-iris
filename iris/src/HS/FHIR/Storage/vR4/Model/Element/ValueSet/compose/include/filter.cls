/// Select codes/concepts by their properties (including relationships)
Class HS.FHIR.Storage.vR4.Model.Element.ValueSet.compose.include.filter Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// A property/filter defined by the code system.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property property As %String(MAXLEN = 1000000, XMLNAME = "property", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// = | is-a | descendent-of | is-not-a | regex | in | not-in | generalizes | exists
/// <p>
/// filter-operator|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend filter-operator|4.0.1 and you may NOT use codes from other ValueSets.
Property op As %String(MAXLEN = 1000000, XMLNAME = "op", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Code from the system, 
/// or regex criteria, 
/// or boolean value for exists.
Property value As %String(MAXLEN = 1000000, XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ValueSet.compose.include.filter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ValueSet.compose.include.filter";

Storage Default
{
<Data name="filterDefaultData">
<Subscript>"filter"</Subscript>
<Value name="1">
<Value>property</Value>
</Value>
<Value name="2">
<Value>op</Value>
</Value>
<Value name="3">
<Value>value</Value>
</Value>
</Data>
<DefaultData>filterDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
