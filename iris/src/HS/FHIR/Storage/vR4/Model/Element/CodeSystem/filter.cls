/// Filter that can be used in a value set.
Class HS.FHIR.Storage.vR4.Model.Element.CodeSystem.filter Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// Code that identifies the filter.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// How or why the filter is used.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// = | is-a | descendent-of | is-not-a | regex | in | not-in | generalizes | exists
/// <p>
/// filter-operator|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend filter-operator|4.0.1 and you may NOT use codes from other ValueSets.
Property operator As array Of %String(MAXLEN = 1000000, XMLNAME = "operator", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// What to use for the value.
Property value As %String(MAXLEN = 1000000, XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CodeSystem.filter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CodeSystem.filter";

Storage Default
{
<Data name="filterDefaultData">
<Subscript>"filter"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>description</Value>
</Value>
<Value name="3">
<Value>value</Value>
</Value>
</Data>
<Data name="operator">
<Attribute>operator</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.CodeSystem.filter.operator"</Subscript>
</Data>
<DefaultData>filterDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
