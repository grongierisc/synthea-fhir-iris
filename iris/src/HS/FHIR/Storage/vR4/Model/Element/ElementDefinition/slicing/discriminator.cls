/// Element values that are used to distinguish the slices.
Class HS.FHIR.Storage.vR4.Model.Element.ElementDefinition.slicing.discriminator Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// code
/// <p>
/// value | exists | pattern | type | profile
/// <p>
/// discriminator-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend discriminator-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Path to element value.
Property path As %String(MAXLEN = 1000000, XMLNAME = "path", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "discriminator";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "discriminator";

Storage Default
{
<Data name="discriminatorDefaultData">
<Subscript>"discriminator"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>path</Value>
</Value>
</Data>
<DefaultData>discriminatorDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
