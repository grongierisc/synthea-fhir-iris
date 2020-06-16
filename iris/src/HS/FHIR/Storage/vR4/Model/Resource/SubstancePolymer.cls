/// Todo.
Class HS.FHIR.Storage.vR4.Model.Resource.SubstancePolymer Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property class As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "class", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property geometry As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "geometry", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property copolymerConnectivity As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "copolymerConnectivity", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Todo.
Property modification As array Of %String(MAXLEN = 1000000, XMLNAME = "modification", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Todo.
Property monomerSet As array Of HS.FHIR.Storage.vR4.Model.Element.SubstancePolymer.monomerSet(XMLNAME = "monomerSet", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Todo.
Property repeat As array Of HS.FHIR.Storage.vR4.Model.Element.SubstancePolymer.repeat(XMLNAME = "repeat", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstancePolymer";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstancePolymer";

Storage Default
{
<Data name="SubstancePolymerDefaultData">
<Subscript>"SubstancePolymer"</Subscript>
<Value name="1">
<Value>class</Value>
</Value>
<Value name="2">
<Value>geometry</Value>
</Value>
</Data>
<Data name="copolymerConnectivity">
<Attribute>copolymerConnectivity</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SubstancePolymer.copolymerConnectivity"</Subscript>
</Data>
<Data name="modification">
<Attribute>modification</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SubstancePolymer.modification"</Subscript>
</Data>
<Data name="monomerSet">
<Attribute>monomerSet</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SubstancePolymer.monomerSet"</Subscript>
</Data>
<Data name="repeat">
<Attribute>repeat</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SubstancePolymer.repeat"</Subscript>
</Data>
<DefaultData>SubstancePolymerDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
