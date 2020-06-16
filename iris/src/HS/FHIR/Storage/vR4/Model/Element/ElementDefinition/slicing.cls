/// This element is sliced - slices follow.
Class HS.FHIR.Storage.vR4.Model.Element.ElementDefinition.slicing Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// Element
/// <p>
/// Element values that are used to distinguish the slices.
Property discriminator As array Of HS.FHIR.Storage.vR4.Model.Element.ElementDefinition.slicing.discriminator(XMLNAME = "discriminator", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Text description of how slicing works (or not)
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// If elements must be in same order as slices.
Property ordered As %Boolean(XMLNAME = "ordered", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// closed | open | openAtEnd
/// <p>
/// resource-slicing-rules|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend resource-slicing-rules|4.0.1 and you may NOT use codes from other ValueSets.
Property rules As %String(MAXLEN = 1000000, XMLNAME = "rules", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "slicing";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "slicing";

Storage Default
{
<Data name="discriminator">
<Attribute>discriminator</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ElementDefinition.slicing.discriminator"</Subscript>
</Data>
<Data name="slicingDefaultData">
<Subscript>"slicing"</Subscript>
<Value name="1">
<Value>description</Value>
</Value>
<Value name="2">
<Value>ordered</Value>
</Value>
<Value name="3">
<Value>rules</Value>
</Value>
</Data>
<DefaultData>slicingDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
