/// Structure Definition used by this map.
Class HS.FHIR.Storage.vR4.Model.Element.StructureMap.structure Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// canonical
/// <p>
/// Canonical reference to structure definition.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// source | queried | target | produced
/// <p>
/// map-model-mode|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend map-model-mode|4.0.1 and you may NOT use codes from other ValueSets.
Property mode As %String(MAXLEN = 1000000, XMLNAME = "mode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Name for type in this map.
Property alias As %String(MAXLEN = 1000000, XMLNAME = "alias", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Documentation on use of structure.
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "StructureMap.structure";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "StructureMap.structure";

Storage Default
{
<Data name="structureDefaultData">
<Subscript>"structure"</Subscript>
<Value name="1">
<Value>url</Value>
</Value>
<Value name="2">
<Value>mode</Value>
</Value>
<Value name="3">
<Value>alias</Value>
</Value>
<Value name="4">
<Value>documentation</Value>
</Value>
</Data>
<DefaultData>structureDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
