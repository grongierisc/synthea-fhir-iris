/// Name of a human - parts and usage.
Class HS.FHIR.Storage.vR4.Model.Datatype.HumanName Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// code
/// <p>
/// usual | official | temp | nickname | anonymous | old | maiden
/// <p>
/// name-use|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend name-use|4.0.1 and you may NOT use codes from other ValueSets.
Property use As %String(MAXLEN = 1000000, XMLNAME = "use", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Text representation of the full name.
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Family name (often called 'Surname')
Property family As %String(MAXLEN = 1000000, XMLNAME = "family", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Given names (not always 'first'). 
/// Includes middle names.
Property given As array Of %String(MAXLEN = 1000000, XMLNAME = "given", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Parts that come before the name.
Property prefix As array Of %String(MAXLEN = 1000000, XMLNAME = "prefix", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Parts that come after the name.
Property suffix As array Of %String(MAXLEN = 1000000, XMLNAME = "suffix", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Time period when name was/is in use.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "HumanName";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "HumanName";

Storage Default
{
<Data name="HumanNameDefaultData">
<Subscript>"HumanName"</Subscript>
<Value name="1">
<Value>use</Value>
</Value>
<Value name="2">
<Value>text</Value>
</Value>
<Value name="3">
<Value>family</Value>
</Value>
<Value name="4">
<Value>period</Value>
</Value>
</Data>
<Data name="given">
<Attribute>given</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Datatype.HumanName.given"</Subscript>
</Data>
<Data name="prefix">
<Attribute>prefix</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Datatype.HumanName.prefix"</Subscript>
</Data>
<Data name="suffix">
<Attribute>suffix</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Datatype.HumanName.suffix"</Subscript>
</Data>
<DefaultData>HumanNameDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
