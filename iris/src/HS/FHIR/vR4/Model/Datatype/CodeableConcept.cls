/// Concept - reference to a terminology or just  text.
Class HS.FHIR.vR4.Model.Datatype.CodeableConcept Extends (%Persistent, HS.FHIR.vR4.Model.Base.Element) [ Not ProcedureBlock ]
{

/// Coding
/// <p>
/// Code defined by a terminology system.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property coding As List Of HS.FHIR.vR4.Model.Datatype.Coding(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "coding", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Plain text representation of the concept.
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CodeableConcept";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CodeableConcept";

Storage Default
{
<Data name="CodeableConceptDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>id</Value>
</Value>
<Value name="3">
<Value>text</Value>
</Value>
<Value name="4">
<Value>newResource</Value>
</Value>
<Value name="5">
<Value>newResourceReference</Value>
</Value>
</Data>
<Data name="coding">
<Attribute>coding</Attribute>
<Structure>subnode</Structure>
<Subscript>"coding"</Subscript>
</Data>
<Data name="extension">
<Attribute>extension</Attribute>
<Structure>subnode</Structure>
<Subscript>"extension"</Subscript>
</Data>
<Data name="primitiveExtension">
<Attribute>primitiveExtension</Attribute>
<Structure>subnode</Structure>
<Subscript>"primitiveExtension"</Subscript>
</Data>
<DataLocation>^HS.FHIR.vR8164.CodeableCon84B5D</DataLocation>
<DefaultData>CodeableConceptDefaultData</DefaultData>
<IdLocation>^HS.FHIR.vR8164.CodeableCon84B5D</IdLocation>
<IndexLocation>^HS.FHIR.vR8164.CodeableCon84B5I</IndexLocation>
<StreamLocation>^HS.FHIR.vR8164.CodeableCon84B5S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
