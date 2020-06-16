/// Order of the results.
Class HS.FHIR.Storage.vR4.Model.Element.DataRequirement.sort Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// string
/// <p>
/// The name of the attribute to perform the sort.
Property path As %String(MAXLEN = 1000000, XMLNAME = "path", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// ascending | descending
/// <p>
/// sort-direction|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend sort-direction|4.0.1 and you may NOT use codes from other ValueSets.
Property direction As %String(MAXLEN = 1000000, XMLNAME = "direction", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "sort";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "sort";

Storage Default
{
<Data name="sortDefaultData">
<Subscript>"sort"</Subscript>
<Value name="1">
<Value>path</Value>
</Value>
<Value name="2">
<Value>direction</Value>
</Value>
</Data>
<DefaultData>sortDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
