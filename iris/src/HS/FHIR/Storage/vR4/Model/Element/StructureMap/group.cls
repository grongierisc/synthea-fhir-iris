/// Named sections for reader convenience.
Class HS.FHIR.Storage.vR4.Model.Element.StructureMap.group Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// id
/// <p>
/// Human-readable label.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// id
/// <p>
/// Another group that this group adds rules to.
Property extends As %String(MAXLEN = 1000000, XMLNAME = "extends", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// none | types | type-and-types
/// <p>
/// map-group-type-mode|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend map-group-type-mode|4.0.1 and you may NOT use codes from other ValueSets.
Property typeMode As %String(MAXLEN = 1000000, XMLNAME = "typeMode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Additional description/explanation for group.
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Named instance provided when invoking the map.
Property input As array Of HS.FHIR.Storage.vR4.Model.Element.StructureMap.group.input(XMLNAME = "input", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Transform Rule from source to target.
Property rule As array Of HS.FHIR.Storage.vR4.Model.Element.StructureMap.group.rule(XMLNAME = "rule", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "StructureMap.group";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "StructureMap.group";

Storage Default
{
<Data name="groupDefaultData">
<Subscript>"group"</Subscript>
<Value name="1">
<Value>name</Value>
</Value>
<Value name="2">
<Value>extends</Value>
</Value>
<Value name="3">
<Value>typeMode</Value>
</Value>
<Value name="4">
<Value>documentation</Value>
</Value>
</Data>
<Data name="input">
<Attribute>input</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.StructureMap.group.input"</Subscript>
</Data>
<Data name="rule">
<Attribute>rule</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.StructureMap.group.rule"</Subscript>
</Data>
<DefaultData>groupDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
