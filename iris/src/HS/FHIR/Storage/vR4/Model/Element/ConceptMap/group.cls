/// Same source and target systems.
Class HS.FHIR.Storage.vR4.Model.Element.ConceptMap.group Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Source system where concepts to be mapped are defined.
Property source As %String(MAXLEN = 1000000, XMLNAME = "source", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Specific version of the  code system.
Property sourceVersion As %String(MAXLEN = 1000000, XMLNAME = "sourceVersion", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Target system that the concepts are to be mapped to.
Property target As %String(MAXLEN = 1000000, XMLNAME = "target", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Specific version of the  code system.
Property targetVersion As %String(MAXLEN = 1000000, XMLNAME = "targetVersion", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Mappings for a concept from the source set.
Property element As array Of HS.FHIR.Storage.vR4.Model.Element.ConceptMap.group.element(XMLNAME = "element", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// What to do when there is no mapping for the source concept.
Property unmapped As HS.FHIR.Storage.vR4.Model.Element.ConceptMap.group.unmapped(XMLNAME = "unmapped", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ConceptMap.group";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ConceptMap.group";

Storage Default
{
<Data name="element">
<Attribute>element</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ConceptMap.group.element"</Subscript>
</Data>
<Data name="groupDefaultData">
<Subscript>"group"</Subscript>
<Value name="1">
<Value>source</Value>
</Value>
<Value name="2">
<Value>sourceVersion</Value>
</Value>
<Value name="3">
<Value>target</Value>
</Value>
<Value name="4">
<Value>targetVersion</Value>
</Value>
<Value name="5">
<Value>unmapped</Value>
</Value>
</Data>
<DefaultData>groupDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
