/// Transform Rule from source to target.
Class HS.FHIR.Storage.vR4.Model.Element.StructureMap.group.rule Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// id
/// <p>
/// Name of the rule for internal references.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// BackboneElement
/// <p>
/// Source inputs to the mapping.
Property source As array Of HS.FHIR.Storage.vR4.Model.Element.StructureMap.group.rule.source(XMLNAME = "source", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Content to create because of this mapping rule.
Property target As array Of HS.FHIR.Storage.vR4.Model.Element.StructureMap.group.rule.target(XMLNAME = "target", XMLPROJECTION = "ELEMENT");

/// StructureMap:group[n].rule
/// <p>
/// Rules contained in this rule.
Property rule As array Of HS.FHIR.Storage.vR4.Model.Element.StructureMap.group.rule(XMLNAME = "rule", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Which other rules to apply in the context of this rule.
Property dependent As array Of HS.FHIR.Storage.vR4.Model.Element.StructureMap.group.rule.dependent(XMLNAME = "dependent", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Documentation for this instance of data.
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "StructureMap.group.rule";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "StructureMap.group.rule";

Storage Default
{
<Data name="dependent">
<Attribute>dependent</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.StructureMap.group.rule.dependent"</Subscript>
</Data>
<Data name="rule">
<Attribute>rule</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.StructureMap.group.rule.rule"</Subscript>
</Data>
<Data name="ruleDefaultData">
<Subscript>"rule"</Subscript>
<Value name="1">
<Value>name</Value>
</Value>
<Value name="2">
<Value>documentation</Value>
</Value>
</Data>
<Data name="source">
<Attribute>source</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.StructureMap.group.rule.source"</Subscript>
</Data>
<Data name="target">
<Attribute>target</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.StructureMap.group.rule.target"</Subscript>
</Data>
<DefaultData>ruleDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
