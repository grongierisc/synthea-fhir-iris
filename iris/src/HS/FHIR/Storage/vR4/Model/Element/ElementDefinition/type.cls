/// Data type and Profile for this element.
Class HS.FHIR.Storage.vR4.Model.Element.ElementDefinition.type Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Data type or Resource (reference to definition)
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// canonical
/// <p>
/// Profiles (StructureDefinition or IG) - one must apply.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property profile As array Of %String(MAXLEN = 1000000, XMLNAME = "profile", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Profile (StructureDefinition or IG) on the Reference/canonical target - one must apply.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property targetProfile As array Of %String(MAXLEN = 1000000, XMLNAME = "targetProfile", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// contained | referenced | bundled - how aggregated
/// <p>
/// resource-aggregation-mode|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend resource-aggregation-mode|4.0.1 and you may NOT use codes from other ValueSets.
Property aggregation As array Of %String(MAXLEN = 1000000, XMLNAME = "aggregation", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// either | independent | specific
/// <p>
/// reference-version-rules|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend reference-version-rules|4.0.1 and you may NOT use codes from other ValueSets.
Property versioning As %String(MAXLEN = 1000000, XMLNAME = "versioning", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "type";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "type";

Storage Default
{
<Data name="aggregation">
<Attribute>aggregation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ElementDefinition.type.aggregation"</Subscript>
</Data>
<Data name="profile">
<Attribute>profile</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ElementDefinition.type.profile"</Subscript>
</Data>
<Data name="targetProfile">
<Attribute>targetProfile</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ElementDefinition.type.targetProfile"</Subscript>
</Data>
<Data name="typeDefaultData">
<Subscript>"type"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>versioning</Value>
</Value>
</Data>
<DefaultData>typeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
