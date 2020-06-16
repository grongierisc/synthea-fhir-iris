/// Which other rules to apply in the context of this rule.
Class HS.FHIR.Storage.vR4.Model.Element.StructureMap.group.rule.dependent Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// id
/// <p>
/// Name of a rule or group to apply.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Variable to pass to the rule or group.
Property variable As array Of %String(MAXLEN = 1000000, XMLNAME = "variable", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "StructureMap.group.rule.dependent";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "StructureMap.group.rule.dependent";

Storage Default
{
<Data name="dependentDefaultData">
<Subscript>"dependent"</Subscript>
<Value name="1">
<Value>name</Value>
</Value>
</Data>
<Data name="variable">
<Attribute>variable</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.StructureMap.group.rule.dependent.variable"</Subscript>
</Data>
<DefaultData>dependentDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
